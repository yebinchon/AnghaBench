; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c___rpc_execute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c___rpc_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { {}*, {}*, i32, i32, i32, i32, %struct.rpc_wait_queue*, i32 }
%struct.rpc_wait_queue = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"RPC: %5u __rpc_execute flags=0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"RPC: %5u sync task going to sleep\0A\00", align 1
@RPC_TASK_QUEUED = common dso_local global i32 0, align 4
@rpc_wait_bit_killable = common dso_local global i32 0, align 4
@TASK_KILLABLE = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"RPC: %5u got signal\0A\00", align 1
@RPC_TASK_KILLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"RPC: %5u sync task resuming\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"RPC: %5u return %d, status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*)* @__rpc_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__rpc_execute(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca %struct.rpc_wait_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca void (%struct.rpc_task*)*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %7 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %8 = call i32 @RPC_IS_ASYNC(%struct.rpc_task* %7)
  store i32 %8, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %10 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %13 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14)
  %16 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %17 = call i32 @RPC_IS_QUEUED(%struct.rpc_task* %16)
  %18 = call i32 @BUG_ON(i32 %17)
  br label %19

19:                                               ; preds = %106, %64, %53, %1
  %20 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %21 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to void (%struct.rpc_task*)**
  %23 = load void (%struct.rpc_task*)*, void (%struct.rpc_task*)** %22, align 8
  store void (%struct.rpc_task*)* %23, void (%struct.rpc_task*)** %6, align 8
  %24 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %25 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to void (%struct.rpc_task*)**
  store void (%struct.rpc_task*)* null, void (%struct.rpc_task*)** %26, align 8
  %27 = load void (%struct.rpc_task*)*, void (%struct.rpc_task*)** %6, align 8
  %28 = icmp eq void (%struct.rpc_task*)* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %19
  %30 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %31 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %30, i32 0, i32 1
  %32 = bitcast {}** %31 to void (%struct.rpc_task*)**
  %33 = load void (%struct.rpc_task*)*, void (%struct.rpc_task*)** %32, align 8
  store void (%struct.rpc_task*)* %33, void (%struct.rpc_task*)** %6, align 8
  %34 = load void (%struct.rpc_task*)*, void (%struct.rpc_task*)** %6, align 8
  %35 = icmp eq void (%struct.rpc_task*)* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %113

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %19
  %39 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %40 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %43 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %44 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %43, i32 0, i32 1
  %45 = bitcast {}** %44 to void (%struct.rpc_task*)**
  %46 = load void (%struct.rpc_task*)*, void (%struct.rpc_task*)** %45, align 8
  %47 = call i32 @trace_rpc_task_run_action(i32 %41, %struct.rpc_task* %42, void (%struct.rpc_task*)* %46)
  %48 = load void (%struct.rpc_task*)*, void (%struct.rpc_task*)** %6, align 8
  %49 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  call void %48(%struct.rpc_task* %49)
  %50 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %51 = call i32 @RPC_IS_QUEUED(%struct.rpc_task* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %38
  br label %19

54:                                               ; preds = %38
  %55 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %56 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %55, i32 0, i32 6
  %57 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %56, align 8
  store %struct.rpc_wait_queue* %57, %struct.rpc_wait_queue** %3, align 8
  %58 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %3, align 8
  %59 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %58, i32 0, i32 0
  %60 = call i32 @spin_lock_bh(i32* %59)
  %61 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %62 = call i32 @RPC_IS_QUEUED(%struct.rpc_task* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %54
  %65 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %3, align 8
  %66 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %65, i32 0, i32 0
  %67 = call i32 @spin_unlock_bh(i32* %66)
  br label %19

68:                                               ; preds = %54
  %69 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %70 = call i32 @rpc_clear_running(%struct.rpc_task* %69)
  %71 = load %struct.rpc_wait_queue*, %struct.rpc_wait_queue** %3, align 8
  %72 = getelementptr inbounds %struct.rpc_wait_queue, %struct.rpc_wait_queue* %71, i32 0, i32 0
  %73 = call i32 @spin_unlock_bh(i32* %72)
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %124

77:                                               ; preds = %68
  %78 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %79 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %83 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %82, i32 0, i32 5
  %84 = load i32, i32* @RPC_TASK_QUEUED, align 4
  %85 = load i32, i32* @rpc_wait_bit_killable, align 4
  %86 = load i32, i32* @TASK_KILLABLE, align 4
  %87 = call i32 @out_of_line_wait_on_bit(i32* %83, i32 %84, i32 %85, i32 %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @ERESTARTSYS, align 4
  %90 = sub nsw i32 0, %89
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %77
  %93 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %94 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @RPC_TASK_KILLED, align 4
  %98 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %99 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %103 = load i32, i32* @ERESTARTSYS, align 4
  %104 = sub nsw i32 0, %103
  %105 = call i32 @rpc_exit(%struct.rpc_task* %102, i32 %104)
  br label %106

106:                                              ; preds = %92, %77
  %107 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %108 = call i32 @rpc_set_running(%struct.rpc_task* %107)
  %109 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %110 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  br label %19

113:                                              ; preds = %36
  %114 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %115 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %5, align 4
  %118 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %119 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %116, i32 %117, i32 %120)
  %122 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %123 = call i32 @rpc_release_task(%struct.rpc_task* %122)
  br label %124

124:                                              ; preds = %113, %76
  ret void
}

declare dso_local i32 @RPC_IS_ASYNC(%struct.rpc_task*) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @RPC_IS_QUEUED(%struct.rpc_task*) #1

declare dso_local i32 @trace_rpc_task_run_action(i32, %struct.rpc_task*, void (%struct.rpc_task*)*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @rpc_clear_running(%struct.rpc_task*) #1

declare dso_local i32 @out_of_line_wait_on_bit(i32*, i32, i32, i32) #1

declare dso_local i32 @rpc_exit(%struct.rpc_task*, i32) #1

declare dso_local i32 @rpc_set_running(%struct.rpc_task*) #1

declare dso_local i32 @rpc_release_task(%struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
