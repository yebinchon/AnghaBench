; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_request_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_request_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_lkb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dlm_args = type { i32 }
%struct.dlm_rsb = type { i32 }

@R_CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, %struct.dlm_lkb*, i8*, i32, %struct.dlm_args*)* @request_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_lock(%struct.dlm_ls* %0, %struct.dlm_lkb* %1, i8* %2, i32 %3, %struct.dlm_args* %4) #0 {
  %6 = alloca %struct.dlm_ls*, align 8
  %7 = alloca %struct.dlm_lkb*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dlm_args*, align 8
  %11 = alloca %struct.dlm_rsb*, align 8
  %12 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %6, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.dlm_args* %4, %struct.dlm_args** %10, align 8
  %13 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %14 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %15 = load %struct.dlm_args*, %struct.dlm_args** %10, align 8
  %16 = call i32 @validate_lock_args(%struct.dlm_ls* %13, %struct.dlm_lkb* %14, %struct.dlm_args* %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %49

20:                                               ; preds = %5
  %21 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @R_CREATE, align 4
  %25 = call i32 @find_rsb(%struct.dlm_ls* %21, i8* %22, i32 %23, i32 %24, %struct.dlm_rsb** %11)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %49

29:                                               ; preds = %20
  %30 = load %struct.dlm_rsb*, %struct.dlm_rsb** %11, align 8
  %31 = call i32 @lock_rsb(%struct.dlm_rsb* %30)
  %32 = load %struct.dlm_rsb*, %struct.dlm_rsb** %11, align 8
  %33 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %34 = call i32 @attach_lkb(%struct.dlm_rsb* %32, %struct.dlm_lkb* %33)
  %35 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %36 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %39 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  %42 = load %struct.dlm_rsb*, %struct.dlm_rsb** %11, align 8
  %43 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %44 = call i32 @_request_lock(%struct.dlm_rsb* %42, %struct.dlm_lkb* %43)
  store i32 %44, i32* %12, align 4
  %45 = load %struct.dlm_rsb*, %struct.dlm_rsb** %11, align 8
  %46 = call i32 @unlock_rsb(%struct.dlm_rsb* %45)
  %47 = load %struct.dlm_rsb*, %struct.dlm_rsb** %11, align 8
  %48 = call i32 @put_rsb(%struct.dlm_rsb* %47)
  br label %49

49:                                               ; preds = %29, %28, %19
  %50 = load i32, i32* %12, align 4
  ret i32 %50
}

declare dso_local i32 @validate_lock_args(%struct.dlm_ls*, %struct.dlm_lkb*, %struct.dlm_args*) #1

declare dso_local i32 @find_rsb(%struct.dlm_ls*, i8*, i32, i32, %struct.dlm_rsb**) #1

declare dso_local i32 @lock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @attach_lkb(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @_request_lock(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @unlock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @put_rsb(%struct.dlm_rsb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
