; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_generic_new_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_generic_new_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i64, i32, i32, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { {}* }

@SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC = common dso_local global i32 0, align 4
@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@TRANSPORT_WRITE_PENDING = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Handling write_pending QUEUE__FULL: se_cmd: %p\0A\00", align 1
@TRANSPORT_COMPLETE_QF_WP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transport_generic_new_cmd(%struct.se_cmd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.se_cmd*, align 8
  %4 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %6 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @SCF_PASSTHROUGH_SG_TO_MEM_NOALLOC, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %1
  %12 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %12, i32 0, i32 7
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %18 = call i32 @transport_generic_get_mem(%struct.se_cmd* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  store i32 %22, i32* %2, align 4
  br label %89

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %11, %1
  %25 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %26 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %25, i32 0, i32 6
  %27 = call i32 @atomic_inc(i32* %26)
  %28 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %29 = call i32 @target_add_to_state_list(%struct.se_cmd* %28)
  %30 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %31 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @DMA_TO_DEVICE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %37 = call i32 @target_execute_cmd(%struct.se_cmd* %36)
  store i32 0, i32* %2, align 4
  br label %89

38:                                               ; preds = %24
  %39 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %40 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %39, i32 0, i32 5
  %41 = call i32 @spin_lock_irq(i32* %40)
  %42 = load i32, i32* @TRANSPORT_WRITE_PENDING, align 4
  %43 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %44 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %46 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %45, i32 0, i32 5
  %47 = call i32 @spin_unlock_irq(i32* %46)
  %48 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %49 = call i32 @transport_cmd_check_stop(%struct.se_cmd* %48, i32 0)
  %50 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %51 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %50, i32 0, i32 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = bitcast {}** %53 to i32 (%struct.se_cmd*)**
  %55 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %54, align 8
  %56 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %57 = call i32 %55(%struct.se_cmd* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @EAGAIN, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %38
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %38
  br label %78

68:                                               ; preds = %62
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @WARN_ON(i32 %69)
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  br label %76

76:                                               ; preds = %74, %73
  %77 = phi i32 [ 0, %73 ], [ %75, %74 ]
  store i32 %77, i32* %2, align 4
  br label %89

78:                                               ; preds = %67
  %79 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %80 = call i32 @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.se_cmd* %79)
  %81 = load i32, i32* @TRANSPORT_COMPLETE_QF_WP, align 4
  %82 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %83 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %85 = load %struct.se_cmd*, %struct.se_cmd** %3, align 8
  %86 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @transport_handle_queue_full(%struct.se_cmd* %84, i32 %87)
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %78, %76, %35, %21
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @transport_generic_get_mem(%struct.se_cmd*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @target_add_to_state_list(%struct.se_cmd*) #1

declare dso_local i32 @target_execute_cmd(%struct.se_cmd*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @transport_cmd_check_stop(%struct.se_cmd*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.se_cmd*) #1

declare dso_local i32 @transport_handle_queue_full(%struct.se_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
