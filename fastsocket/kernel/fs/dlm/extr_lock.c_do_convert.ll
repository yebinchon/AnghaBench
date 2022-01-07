; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_do_convert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_do_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_rsb = type { i32, i32 }
%struct.dlm_lkb = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"deadlock %x node %d sts%d g%d r%d %s\00", align 1
@EDEADLK = common dso_local global i32 0, align 4
@DLM_LOCK_IV = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@DLM_LKSTS_CONVERT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_rsb*, %struct.dlm_lkb*)* @do_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_convert(%struct.dlm_rsb* %0, %struct.dlm_lkb* %1) #0 {
  %3 = alloca %struct.dlm_rsb*, align 8
  %4 = alloca %struct.dlm_lkb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dlm_rsb* %0, %struct.dlm_rsb** %3, align 8
  store %struct.dlm_lkb* %1, %struct.dlm_lkb** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %8 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %9 = call i64 @can_be_granted(%struct.dlm_rsb* %7, %struct.dlm_lkb* %8, i32 1, i32 0, i32* %6)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %13 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %14 = call i32 @grant_lock(%struct.dlm_rsb* %12, %struct.dlm_lkb* %13)
  %15 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %16 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %17 = call i32 @queue_cast(%struct.dlm_rsb* %15, %struct.dlm_lkb* %16, i32 0)
  br label %98

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %18
  %22 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %23 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %26 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %29 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %32 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %35 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %38 = getelementptr inbounds %struct.dlm_lkb, %struct.dlm_lkb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %41 = getelementptr inbounds %struct.dlm_rsb, %struct.dlm_rsb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @log_debug(i32 %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30, i32 %33, i32 %36, i32 %39, i32 %42)
  %44 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %45 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %46 = call i32 @revert_lock(%struct.dlm_rsb* %44, %struct.dlm_lkb* %45)
  %47 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %48 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %49 = load i32, i32* @EDEADLK, align 4
  %50 = sub nsw i32 0, %49
  %51 = call i32 @queue_cast(%struct.dlm_rsb* %47, %struct.dlm_lkb* %48, i32 %50)
  %52 = load i32, i32* @EDEADLK, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %98

54:                                               ; preds = %18
  %55 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %56 = call i64 @is_demoted(%struct.dlm_lkb* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %74

58:                                               ; preds = %54
  %59 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %60 = load i32, i32* @DLM_LOCK_IV, align 4
  %61 = call i32 @grant_pending_convert(%struct.dlm_rsb* %59, i32 %60, i32* null)
  %62 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %63 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %64 = call i64 @_can_be_granted(%struct.dlm_rsb* %62, %struct.dlm_lkb* %63, i32 1, i32 0)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %58
  %67 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %68 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %69 = call i32 @grant_lock(%struct.dlm_rsb* %67, %struct.dlm_lkb* %68)
  %70 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %71 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %72 = call i32 @queue_cast(%struct.dlm_rsb* %70, %struct.dlm_lkb* %71, i32 0)
  br label %98

73:                                               ; preds = %58
  br label %74

74:                                               ; preds = %73, %54
  %75 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %76 = call i64 @can_be_queued(%struct.dlm_lkb* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load i32, i32* @EINPROGRESS, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  %81 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %82 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %83 = call i32 @del_lkb(%struct.dlm_rsb* %81, %struct.dlm_lkb* %82)
  %84 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %85 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %86 = load i32, i32* @DLM_LKSTS_CONVERT, align 4
  %87 = call i32 @add_lkb(%struct.dlm_rsb* %84, %struct.dlm_lkb* %85, i32 %86)
  %88 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %89 = call i32 @add_timeout(%struct.dlm_lkb* %88)
  br label %98

90:                                               ; preds = %74
  %91 = load i32, i32* @EAGAIN, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  %93 = load %struct.dlm_rsb*, %struct.dlm_rsb** %3, align 8
  %94 = load %struct.dlm_lkb*, %struct.dlm_lkb** %4, align 8
  %95 = load i32, i32* @EAGAIN, align 4
  %96 = sub nsw i32 0, %95
  %97 = call i32 @queue_cast(%struct.dlm_rsb* %93, %struct.dlm_lkb* %94, i32 %96)
  br label %98

98:                                               ; preds = %90, %78, %66, %21, %11
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i64 @can_be_granted(%struct.dlm_rsb*, %struct.dlm_lkb*, i32, i32, i32*) #1

declare dso_local i32 @grant_lock(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @queue_cast(%struct.dlm_rsb*, %struct.dlm_lkb*, i32) #1

declare dso_local i32 @log_debug(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @revert_lock(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i64 @is_demoted(%struct.dlm_lkb*) #1

declare dso_local i32 @grant_pending_convert(%struct.dlm_rsb*, i32, i32*) #1

declare dso_local i64 @_can_be_granted(%struct.dlm_rsb*, %struct.dlm_lkb*, i32, i32) #1

declare dso_local i64 @can_be_queued(%struct.dlm_lkb*) #1

declare dso_local i32 @del_lkb(%struct.dlm_rsb*, %struct.dlm_lkb*) #1

declare dso_local i32 @add_lkb(%struct.dlm_rsb*, %struct.dlm_lkb*, i32) #1

declare dso_local i32 @add_timeout(%struct.dlm_lkb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
