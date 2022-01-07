; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_create_rsb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_create_rsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dlm_ls* }
%struct.dlm_ls = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dlm_rsb* (%struct.dlm_ls*, i8*, i32)* @create_rsb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dlm_rsb* @create_rsb(%struct.dlm_ls* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.dlm_rsb*, align 8
  %5 = alloca %struct.dlm_ls*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dlm_rsb*, align 8
  store %struct.dlm_ls* %0, %struct.dlm_ls** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call %struct.dlm_rsb* @dlm_allocate_rsb(%struct.dlm_ls* %9, i32 %10)
  store %struct.dlm_rsb* %11, %struct.dlm_rsb** %8, align 8
  %12 = load %struct.dlm_rsb*, %struct.dlm_rsb** %8, align 8
  %13 = icmp ne %struct.dlm_rsb* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.dlm_rsb* null, %struct.dlm_rsb** %4, align 8
  br label %50

15:                                               ; preds = %3
  %16 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %17 = load %struct.dlm_rsb*, %struct.dlm_rsb** %8, align 8
  %18 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %17, i32 0, i32 9
  store %struct.dlm_ls* %16, %struct.dlm_ls** %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.dlm_rsb*, %struct.dlm_rsb** %8, align 8
  %21 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.dlm_rsb*, %struct.dlm_rsb** %8, align 8
  %23 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @memcpy(i32 %24, i8* %25, i32 %26)
  %28 = load %struct.dlm_rsb*, %struct.dlm_rsb** %8, align 8
  %29 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %28, i32 0, i32 7
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load %struct.dlm_rsb*, %struct.dlm_rsb** %8, align 8
  %32 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %31, i32 0, i32 6
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.dlm_rsb*, %struct.dlm_rsb** %8, align 8
  %35 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %34, i32 0, i32 5
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.dlm_rsb*, %struct.dlm_rsb** %8, align 8
  %38 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %37, i32 0, i32 4
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.dlm_rsb*, %struct.dlm_rsb** %8, align 8
  %41 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %40, i32 0, i32 3
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.dlm_rsb*, %struct.dlm_rsb** %8, align 8
  %44 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %43, i32 0, i32 2
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.dlm_rsb*, %struct.dlm_rsb** %8, align 8
  %47 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %46, i32 0, i32 1
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.dlm_rsb*, %struct.dlm_rsb** %8, align 8
  store %struct.dlm_rsb* %49, %struct.dlm_rsb** %4, align 8
  br label %50

50:                                               ; preds = %15, %14
  %51 = load %struct.dlm_rsb*, %struct.dlm_rsb** %4, align 8
  ret %struct.dlm_rsb* %51
}

declare dso_local %struct.dlm_rsb* @dlm_allocate_rsb(%struct.dlm_ls*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
