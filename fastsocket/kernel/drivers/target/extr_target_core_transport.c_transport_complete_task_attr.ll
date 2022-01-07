; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_complete_task_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_complete_task_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i64, i32, %struct.se_device* }
%struct.se_device = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TRANSPORT_PLUGIN_PHBA_PDEV = common dso_local global i64 0, align 8
@MSG_SIMPLE_TAG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"Incremented dev->dev_cur_ordered_id: %u for SIMPLE: %u\0A\00", align 1
@MSG_HEAD_TAG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"Incremented dev_cur_ordered_id: %u for HEAD_OF_QUEUE: %u\0A\00", align 1
@MSG_ORDERED_TAG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"Incremented dev_cur_ordered_id: %u for ORDERED: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_cmd*)* @transport_complete_task_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transport_complete_task_attr(%struct.se_cmd* %0) #0 {
  %2 = alloca %struct.se_cmd*, align 8
  %3 = alloca %struct.se_device*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %2, align 8
  %4 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %5 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %4, i32 0, i32 2
  %6 = load %struct.se_device*, %struct.se_device** %5, align 8
  store %struct.se_device* %6, %struct.se_device** %3, align 8
  %7 = load %struct.se_device*, %struct.se_device** %3, align 8
  %8 = getelementptr inbounds %struct.se_device, %struct.se_device* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TRANSPORT_PLUGIN_PHBA_PDEV, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %82

15:                                               ; preds = %1
  %16 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %17 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MSG_SIMPLE_TAG, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load %struct.se_device*, %struct.se_device** %3, align 8
  %23 = getelementptr inbounds %struct.se_device, %struct.se_device* %22, i32 0, i32 2
  %24 = call i32 @atomic_dec(i32* %23)
  %25 = call i32 (...) @smp_mb__after_atomic_dec()
  %26 = load %struct.se_device*, %struct.se_device** %3, align 8
  %27 = getelementptr inbounds %struct.se_device, %struct.se_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load %struct.se_device*, %struct.se_device** %3, align 8
  %31 = getelementptr inbounds %struct.se_device, %struct.se_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %34 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35)
  br label %79

37:                                               ; preds = %15
  %38 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %39 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MSG_HEAD_TAG, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %37
  %44 = load %struct.se_device*, %struct.se_device** %3, align 8
  %45 = getelementptr inbounds %struct.se_device, %struct.se_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.se_device*, %struct.se_device** %3, align 8
  %49 = getelementptr inbounds %struct.se_device, %struct.se_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %52 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %53)
  br label %78

55:                                               ; preds = %37
  %56 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %57 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MSG_ORDERED_TAG, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %55
  %62 = load %struct.se_device*, %struct.se_device** %3, align 8
  %63 = getelementptr inbounds %struct.se_device, %struct.se_device* %62, i32 0, i32 1
  %64 = call i32 @atomic_dec(i32* %63)
  %65 = call i32 (...) @smp_mb__after_atomic_dec()
  %66 = load %struct.se_device*, %struct.se_device** %3, align 8
  %67 = getelementptr inbounds %struct.se_device, %struct.se_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = load %struct.se_device*, %struct.se_device** %3, align 8
  %71 = getelementptr inbounds %struct.se_device, %struct.se_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %74 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %61, %55
  br label %78

78:                                               ; preds = %77, %43
  br label %79

79:                                               ; preds = %78, %21
  %80 = load %struct.se_device*, %struct.se_device** %3, align 8
  %81 = call i32 @target_restart_delayed_cmds(%struct.se_device* %80)
  br label %82

82:                                               ; preds = %79, %14
  ret void
}

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @smp_mb__after_atomic_dec(...) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @target_restart_delayed_cmds(%struct.se_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
