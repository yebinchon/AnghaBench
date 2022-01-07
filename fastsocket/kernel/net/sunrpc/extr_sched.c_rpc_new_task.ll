; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c_rpc_new_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c_rpc_new_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i16 }
%struct.rpc_task_setup = type { i32, i32, %struct.rpc_task* }

@ENOMEM = common dso_local global i32 0, align 4
@RPC_TASK_DYNAMIC = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [30 x i8] c"RPC:       allocated task %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rpc_task* @rpc_new_task(%struct.rpc_task_setup* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  %3 = alloca %struct.rpc_task_setup*, align 8
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca i16, align 2
  store %struct.rpc_task_setup* %0, %struct.rpc_task_setup** %3, align 8
  %6 = load %struct.rpc_task_setup*, %struct.rpc_task_setup** %3, align 8
  %7 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %6, i32 0, i32 2
  %8 = load %struct.rpc_task*, %struct.rpc_task** %7, align 8
  store %struct.rpc_task* %8, %struct.rpc_task** %4, align 8
  store i16 0, i16* %5, align 2
  %9 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %10 = icmp eq %struct.rpc_task* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = call %struct.rpc_task* (...) @rpc_alloc_task()
  store %struct.rpc_task* %12, %struct.rpc_task** %4, align 8
  %13 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %14 = icmp eq %struct.rpc_task* %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = load %struct.rpc_task_setup*, %struct.rpc_task_setup** %3, align 8
  %17 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rpc_task_setup*, %struct.rpc_task_setup** %3, align 8
  %20 = getelementptr inbounds %struct.rpc_task_setup, %struct.rpc_task_setup* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @rpc_release_calldata(i32 %18, i32 %21)
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.rpc_task* @ERR_PTR(i32 %24)
  store %struct.rpc_task* %25, %struct.rpc_task** %2, align 8
  br label %43

26:                                               ; preds = %11
  %27 = load i16, i16* @RPC_TASK_DYNAMIC, align 2
  store i16 %27, i16* %5, align 2
  br label %28

28:                                               ; preds = %26, %1
  %29 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %30 = load %struct.rpc_task_setup*, %struct.rpc_task_setup** %3, align 8
  %31 = call i32 @rpc_init_task(%struct.rpc_task* %29, %struct.rpc_task_setup* %30)
  %32 = load i16, i16* %5, align 2
  %33 = zext i16 %32 to i32
  %34 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %35 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %34, i32 0, i32 0
  %36 = load i16, i16* %35, align 2
  %37 = zext i16 %36 to i32
  %38 = or i32 %37, %33
  %39 = trunc i32 %38 to i16
  store i16 %39, i16* %35, align 2
  %40 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %41 = call i32 @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.rpc_task* %40)
  %42 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  store %struct.rpc_task* %42, %struct.rpc_task** %2, align 8
  br label %43

43:                                               ; preds = %28, %15
  %44 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  ret %struct.rpc_task* %44
}

declare dso_local %struct.rpc_task* @rpc_alloc_task(...) #1

declare dso_local i32 @rpc_release_calldata(i32, i32) #1

declare dso_local %struct.rpc_task* @ERR_PTR(i32) #1

declare dso_local i32 @rpc_init_task(%struct.rpc_task*, %struct.rpc_task_setup*) #1

declare dso_local i32 @dprintk(i8*, %struct.rpc_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
