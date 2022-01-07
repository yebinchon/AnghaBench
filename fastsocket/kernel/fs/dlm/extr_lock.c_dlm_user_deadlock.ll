; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_dlm_user_deadlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_dlm_user_deadlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_lkb = type { i32, %struct.dlm_rsb*, %struct.dlm_user_args* }
%struct.dlm_rsb = type { i32 }
%struct.dlm_user_args = type { i32 }
%struct.dlm_args = type { i32 }

@DLM_IFL_DEADLOCK_CANCEL = common dso_local global i32 0, align 4
@DLM_ECANCEL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_user_deadlock(%struct.dlm_ls* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dlm_ls*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dlm_lkb*, align 8
  %8 = alloca %struct.dlm_args, align 4
  %9 = alloca %struct.dlm_user_args*, align 8
  %10 = alloca %struct.dlm_rsb*, align 8
  %11 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %13 = call i32 @dlm_lock_recovery(%struct.dlm_ls* %12)
  %14 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @find_lkb(%struct.dlm_ls* %14, i32 %15, %struct.dlm_lkb** %7)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %72

20:                                               ; preds = %3
  %21 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %22 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %21, i32 0, i32 2
  %23 = load %struct.dlm_user_args*, %struct.dlm_user_args** %22, align 8
  store %struct.dlm_user_args* %23, %struct.dlm_user_args** %9, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.dlm_user_args*, %struct.dlm_user_args** %9, align 8
  %26 = call i32 @set_unlock_args(i32 %24, %struct.dlm_user_args* %25, %struct.dlm_args* %8)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %69

30:                                               ; preds = %20
  %31 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %32 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %31, i32 0, i32 1
  %33 = load %struct.dlm_rsb*, %struct.dlm_rsb** %32, align 8
  store %struct.dlm_rsb* %33, %struct.dlm_rsb** %10, align 8
  %34 = load %struct.dlm_rsb*, %struct.dlm_rsb** %10, align 8
  %35 = call i32 @hold_rsb(%struct.dlm_rsb* %34)
  %36 = load %struct.dlm_rsb*, %struct.dlm_rsb** %10, align 8
  %37 = call i32 @lock_rsb(%struct.dlm_rsb* %36)
  %38 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %39 = call i32 @validate_unlock_args(%struct.dlm_lkb* %38, %struct.dlm_args* %8)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %52

43:                                               ; preds = %30
  %44 = load i32, i32* @DLM_IFL_DEADLOCK_CANCEL, align 4
  %45 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %46 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.dlm_rsb*, %struct.dlm_rsb** %10, align 8
  %50 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %51 = call i32 @_cancel_lock(%struct.dlm_rsb* %49, %struct.dlm_lkb* %50)
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %43, %42
  %53 = load %struct.dlm_rsb*, %struct.dlm_rsb** %10, align 8
  %54 = call i32 @unlock_rsb(%struct.dlm_rsb* %53)
  %55 = load %struct.dlm_rsb*, %struct.dlm_rsb** %10, align 8
  %56 = call i32 @put_rsb(%struct.dlm_rsb* %55)
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @DLM_ECANCEL, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %61, %52
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %67, %62
  br label %69

69:                                               ; preds = %68, %29
  %70 = load %struct.dlm_lkb*, %struct.dlm_lkb** %7, align 8
  %71 = call i32 @dlm_put_lkb(%struct.dlm_lkb* %70)
  br label %72

72:                                               ; preds = %69, %19
  %73 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %74 = call i32 @dlm_unlock_recovery(%struct.dlm_ls* %73)
  %75 = load i32, i32* %11, align 4
  ret i32 %75
}

declare dso_local i32 @dlm_lock_recovery(%struct.dlm_ls*) #1

declare dso_local i32 @find_lkb(%struct.dlm_ls*, i32, %struct.dlm_lkb**) #1

declare dso_local i32 @set_unlock_args(i32, %struct.dlm_user_args*, %struct.dlm_args*) #1

declare dso_local i32 @hold_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @lock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @validate_unlock_args(%struct.dlm_lkb*, %struct.dlm_args*) #1

declare dso_local i32 @_cancel_lock(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @unlock_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @put_rsb(%struct.dlm_rsb*) #1

declare dso_local i32 @dlm_put_lkb(%struct.dlm_lkb*) #1

declare dso_local i32 @dlm_unlock_recovery(%struct.dlm_ls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
