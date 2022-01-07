; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_receive_bast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_receive_bast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_message = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dlm_lkb = type { %struct.dlm_rsb* }
%struct.dlm_rsb = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"receive_bast from %d no lkb %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ls*, %struct.dlm_message*)* @receive_bast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_bast(%struct.dlm_ls* %0, %struct.dlm_message* %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca %struct.dlm_message*, align 8
  %5 = alloca %struct.dlm_lkb*, align 8
  %6 = alloca %struct.dlm_rsb*, align 8
  %7 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store %struct.dlm_message* %1, %struct.dlm_message** %4, align 8
  %8 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %9 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %10 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @find_lkb(%struct.dlm_ls* %8, i32 %11, %struct.dlm_lkb** %5)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %17 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %18 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %22 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @log_debug(%struct.dlm_ls* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  br label %53

25:                                               ; preds = %2
  %26 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %27 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %26, i32 0, i32 0
  %28 = load %struct.dlm_rsb*, %struct.dlm_rsb** %27, align 8
  store %struct.dlm_rsb* %28, %struct.dlm_rsb** %6, align 8
  %29 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %30 = call i32 @hold_rsb(%struct.dlm_rsb* %29)
  %31 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %32 = call i32 @lock_rsb(%struct.dlm_rsb* %31)
  %33 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %34 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %35 = call i32 @validate_message(%struct.dlm_lkb* %33, %struct.dlm_message* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  br label %46

39:                                               ; preds = %25
  %40 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %41 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %42 = load %struct.dlm_message*, %struct.dlm_message** %4, align 8
  %43 = getelementptr inbounds %struct.dlm_message, %struct.dlm_message* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @queue_bast(%struct.dlm_rsb* %40, %struct.dlm_lkb* %41, i32 %44)
  br label %46

46:                                               ; preds = %39, %38
  %47 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %48 = call i32 @unlock_rsb(%struct.dlm_rsb* %47)
  %49 = load %struct.dlm_rsb*, %struct.dlm_rsb** %6, align 8
  %50 = call i32 @put_rsb(%struct.dlm_rsb* %49)
  %51 = load %struct.dlm_lkb*, %struct.dlm_lkb** %5, align 8
  %52 = call i32 @dlm_put_lkb(%struct.dlm_lkb* %51)
  br label %53

53:                                               ; preds = %46, %15
  ret void
}

declare dso_local i32 @find_lkb(%struct.dlm_ls*, i32, %struct.dlm_lkb**) #1

declare dso_local i32 @log_debug(%struct.dlm_ls*, i8*, i32, i32) #1

declare dso_local i32 @hold_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @lock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @validate_message(%struct.dlm_lkb*, %struct.dlm_message*) #1

declare dso_local i32 @queue_bast(%struct.dlm_rsb*, %struct.dlm_lkb*, i32) #1

declare dso_local i32 @unlock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @put_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @dlm_put_lkb(%struct.dlm_lkb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
