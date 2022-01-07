; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_recover_convert_waiter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_recover_convert_waiter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.dlm_lkb = type { i64, i64, i32, i32, i32 }

@DLM_MSG_CONVERT_REPLY = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@DLM_LOCK_IV = common dso_local global i64 0, align 8
@RSB_RECOVER_CONVERT = common dso_local global i32 0, align 4
@DLM_IFL_RESEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ls*, %struct.dlm_lkb*)* @recover_convert_waiter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recover_convert_waiter(%struct.dlm_ls* %0, %struct.dlm_lkb* %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca %struct.dlm_lkb*, align 8
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %4, align 8
  %5 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %6 = call i64 @middle_conversion(%struct.dlm_lkb* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %47

8:                                                ; preds = %2
  %9 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %10 = call i32 @hold_lkb(%struct.dlm_lkb* %9)
  %11 = load i32, i32* @DLM_MSG_CONVERT_REPLY, align 4
  %12 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %13 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @EINPROGRESS, align 4
  %16 = sub nsw i32 0, %15
  %17 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %18 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  store i32 %16, i32* %19, align 4
  %20 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %21 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %24 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %27 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %30 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  %33 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %34 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %35 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %34, i32 0, i32 0
  %36 = call i32 @_receive_convert_reply(%struct.dlm_lkb* %33, %struct.TYPE_4__* %35)
  %37 = load i64, i64* @DLM_LOCK_IV, align 8
  %38 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %39 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %41 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @RSB_RECOVER_CONVERT, align 4
  %44 = call i32 @rsb_set_flag(i32 %42, i32 %43)
  %45 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %46 = call i32 @unhold_lkb(%struct.dlm_lkb* %45)
  br label %62

47:                                               ; preds = %2
  %48 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %49 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %52 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %50, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load i32, i32* @DLM_IFL_RESEND, align 4
  %57 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %58 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %55, %47
  br label %62

62:                                               ; preds = %61, %8
  ret void
}

declare dso_local i64 @middle_conversion(%struct.dlm_lkb*) #1

declare dso_local i32 @hold_lkb(%struct.dlm_lkb*) #1

declare dso_local i32 @_receive_convert_reply(%struct.dlm_lkb*, %struct.TYPE_4__*) #1

declare dso_local i32 @rsb_set_flag(i32, i32) #1

declare dso_local i32 @unhold_lkb(%struct.dlm_lkb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
