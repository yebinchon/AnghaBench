; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_recover.c_dlm_wait_function.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_recover.c_dlm_wait_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.dlm_ls = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i64, i32 }

@dlm_wait_timer_fn = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@dlm_config = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"dlm_wait_function aborted\00", align 1
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_wait_function(%struct.dlm_ls* %0, i32 (%struct.dlm_ls*)* %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca i32 (%struct.dlm_ls*)*, align 8
  %5 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store i32 (%struct.dlm_ls*)* %1, i32 (%struct.dlm_ls*)** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %7 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %6, i32 0, i32 0
  %8 = call i32 @init_timer(%struct.TYPE_5__* %7)
  %9 = load i32, i32* @dlm_wait_timer_fn, align 4
  %10 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %11 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  store i32 %9, i32* %12, align 8
  %13 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %14 = ptrtoint %struct.dlm_ls* %13 to i64
  %15 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %16 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i64 %14, i64* %17, align 8
  %18 = load i64, i64* @jiffies, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dlm_config, i32 0, i32 0), align 4
  %20 = load i32, i32* @HZ, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %18, %22
  %24 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %25 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store i64 %23, i64* %26, align 8
  %27 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %28 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %27, i32 0, i32 0
  %29 = call i32 @add_timer(%struct.TYPE_5__* %28)
  %30 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %31 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32 (%struct.dlm_ls*)*, i32 (%struct.dlm_ls*)** %4, align 8
  %34 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %35 = call i32 %33(%struct.dlm_ls* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %2
  %38 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %39 = call i64 @dlm_recovery_stopped(%struct.dlm_ls* %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %37, %2
  %42 = phi i1 [ true, %2 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @wait_event(i32 %32, i32 %43)
  %45 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %46 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %45, i32 0, i32 0
  %47 = call i32 @del_timer_sync(%struct.TYPE_5__* %46)
  %48 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %49 = call i64 @dlm_recovery_stopped(%struct.dlm_ls* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %53 = call i32 @log_debug(%struct.dlm_ls* %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINTR, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %51, %41
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @init_timer(%struct.TYPE_5__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i64 @dlm_recovery_stopped(%struct.dlm_ls*) #1

declare dso_local i32 @del_timer_sync(%struct.TYPE_5__*) #1

declare dso_local i32 @log_debug(%struct.dlm_ls*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
