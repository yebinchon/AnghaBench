; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c_rpc_release_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_sched.c_rpc_release_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"RPC: %5u release task\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_task*)* @rpc_release_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_release_task(%struct.rpc_task* %0) #0 {
  %2 = alloca %struct.rpc_task*, align 8
  store %struct.rpc_task* %0, %struct.rpc_task** %2, align 8
  %3 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %4 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @dprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %8 = call i32 @RPC_IS_QUEUED(%struct.rpc_task* %7)
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %11 = call i32 @rpc_release_resources_task(%struct.rpc_task* %10)
  %12 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %13 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %12, i32 0, i32 1
  %14 = call i32 @atomic_read(i32* %13)
  %15 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %16 = call i32 @RPC_IS_ASYNC(%struct.rpc_task* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = add nsw i32 1, %19
  %21 = icmp ne i32 %14, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %24 = call i32 @rpc_complete_task(%struct.rpc_task* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  br label %41

27:                                               ; preds = %22
  br label %35

28:                                               ; preds = %1
  %29 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %30 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %29, i32 0, i32 1
  %31 = call i32 @atomic_dec_and_test(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %41

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34, %27
  %36 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %37 = load %struct.rpc_task*, %struct.rpc_task** %2, align 8
  %38 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @rpc_final_put_task(%struct.rpc_task* %36, i32 %39)
  br label %41

41:                                               ; preds = %35, %33, %26
  ret void
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @RPC_IS_QUEUED(%struct.rpc_task*) #1

declare dso_local i32 @rpc_release_resources_task(%struct.rpc_task*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @RPC_IS_ASYNC(%struct.rpc_task*) #1

declare dso_local i32 @rpc_complete_task(%struct.rpc_task*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @rpc_final_put_task(%struct.rpc_task*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
