; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpc_pipe.c_rpc_queue_upcall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpc_pipe.c_rpc_queue_upcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.rpc_pipe_msg = type { i64, i32 }
%struct.rpc_inode = type { i32, i32, i32, i32, i32, i64, i32* }

@EPIPE = common dso_local global i32 0, align 4
@RPC_PIPE_WAIT_FOR_OPEN = common dso_local global i32 0, align 4
@rpciod_workqueue = common dso_local global i32 0, align 4
@RPC_UPCALL_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_queue_upcall(%struct.inode* %0, %struct.rpc_pipe_msg* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.rpc_pipe_msg*, align 8
  %5 = alloca %struct.rpc_inode*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.rpc_pipe_msg* %1, %struct.rpc_pipe_msg** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.rpc_inode* @RPC_I(%struct.inode* %7)
  store %struct.rpc_inode* %8, %struct.rpc_inode** %5, align 8
  %9 = load i32, i32* @EPIPE, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.rpc_inode*, %struct.rpc_inode** %5, align 8
  %15 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %14, i32 0, i32 6
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %74

19:                                               ; preds = %2
  %20 = load %struct.rpc_inode*, %struct.rpc_inode** %5, align 8
  %21 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load %struct.rpc_pipe_msg*, %struct.rpc_pipe_msg** %4, align 8
  %26 = getelementptr inbounds %struct.rpc_pipe_msg, %struct.rpc_pipe_msg* %25, i32 0, i32 1
  %27 = load %struct.rpc_inode*, %struct.rpc_inode** %5, align 8
  %28 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %27, i32 0, i32 3
  %29 = call i32 @list_add_tail(i32* %26, i32* %28)
  %30 = load %struct.rpc_pipe_msg*, %struct.rpc_pipe_msg** %4, align 8
  %31 = getelementptr inbounds %struct.rpc_pipe_msg, %struct.rpc_pipe_msg* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.rpc_inode*, %struct.rpc_inode** %5, align 8
  %34 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %32
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 8
  store i32 0, i32* %6, align 4
  br label %73

39:                                               ; preds = %19
  %40 = load %struct.rpc_inode*, %struct.rpc_inode** %5, align 8
  %41 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @RPC_PIPE_WAIT_FOR_OPEN, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %39
  %47 = load %struct.rpc_inode*, %struct.rpc_inode** %5, align 8
  %48 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %47, i32 0, i32 3
  %49 = call i64 @list_empty(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @rpciod_workqueue, align 4
  %53 = load %struct.rpc_inode*, %struct.rpc_inode** %5, align 8
  %54 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %53, i32 0, i32 4
  %55 = load i32, i32* @RPC_UPCALL_TIMEOUT, align 4
  %56 = call i32 @queue_delayed_work(i32 %52, i32* %54, i32 %55)
  br label %57

57:                                               ; preds = %51, %46
  %58 = load %struct.rpc_pipe_msg*, %struct.rpc_pipe_msg** %4, align 8
  %59 = getelementptr inbounds %struct.rpc_pipe_msg, %struct.rpc_pipe_msg* %58, i32 0, i32 1
  %60 = load %struct.rpc_inode*, %struct.rpc_inode** %5, align 8
  %61 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %60, i32 0, i32 3
  %62 = call i32 @list_add_tail(i32* %59, i32* %61)
  %63 = load %struct.rpc_pipe_msg*, %struct.rpc_pipe_msg** %4, align 8
  %64 = getelementptr inbounds %struct.rpc_pipe_msg, %struct.rpc_pipe_msg* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.rpc_inode*, %struct.rpc_inode** %5, align 8
  %67 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %65
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 8
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %57, %39
  br label %73

73:                                               ; preds = %72, %24
  br label %74

74:                                               ; preds = %73, %18
  %75 = load %struct.inode*, %struct.inode** %3, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  %77 = call i32 @spin_unlock(i32* %76)
  %78 = load %struct.rpc_inode*, %struct.rpc_inode** %5, align 8
  %79 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %78, i32 0, i32 1
  %80 = call i32 @wake_up(i32* %79)
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local %struct.rpc_inode* @RPC_I(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
