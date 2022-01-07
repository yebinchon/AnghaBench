; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpc_pipe.c_rpc_close_pipes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpc_pipe.c_rpc_close_pipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.rpc_inode = type { i64, i64, i32, %struct.rpc_pipe_ops*, i64, i32, i32 }
%struct.rpc_pipe_ops = type { i32 (%struct.inode.0*)*, i32 }
%struct.inode.0 = type opaque

@free_list = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @rpc_close_pipes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpc_close_pipes(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.rpc_inode*, align 8
  %4 = alloca %struct.rpc_pipe_ops*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = call %struct.rpc_inode* @RPC_I(%struct.inode* %6)
  store %struct.rpc_inode* %7, %struct.rpc_inode** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.rpc_inode*, %struct.rpc_inode** %3, align 8
  %12 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %11, i32 0, i32 3
  %13 = load %struct.rpc_pipe_ops*, %struct.rpc_pipe_ops** %12, align 8
  store %struct.rpc_pipe_ops* %13, %struct.rpc_pipe_ops** %4, align 8
  %14 = load %struct.rpc_pipe_ops*, %struct.rpc_pipe_ops** %4, align 8
  %15 = icmp ne %struct.rpc_pipe_ops* %14, null
  br i1 %15, label %16, label %76

16:                                               ; preds = %1
  %17 = load i32, i32* @free_list, align 4
  %18 = call i32 @LIST_HEAD(i32 %17)
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 1
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.rpc_inode*, %struct.rpc_inode** %3, align 8
  %23 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %16
  %27 = load %struct.rpc_inode*, %struct.rpc_inode** %3, align 8
  %28 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %26, %16
  %32 = phi i1 [ true, %16 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %5, align 4
  %34 = load %struct.rpc_inode*, %struct.rpc_inode** %3, align 8
  %35 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = load %struct.rpc_inode*, %struct.rpc_inode** %3, align 8
  %37 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %36, i32 0, i32 6
  %38 = call i32 @list_splice_init(i32* %37, i32* @free_list)
  %39 = load %struct.rpc_inode*, %struct.rpc_inode** %3, align 8
  %40 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %39, i32 0, i32 5
  %41 = call i32 @list_splice_init(i32* %40, i32* @free_list)
  %42 = load %struct.rpc_inode*, %struct.rpc_inode** %3, align 8
  %43 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load %struct.rpc_inode*, %struct.rpc_inode** %3, align 8
  %45 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %44, i32 0, i32 3
  store %struct.rpc_pipe_ops* null, %struct.rpc_pipe_ops** %45, align 8
  %46 = load %struct.inode*, %struct.inode** %2, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 1
  %48 = call i32 @spin_unlock(i32* %47)
  %49 = load %struct.rpc_inode*, %struct.rpc_inode** %3, align 8
  %50 = load %struct.rpc_pipe_ops*, %struct.rpc_pipe_ops** %4, align 8
  %51 = getelementptr inbounds %struct.rpc_pipe_ops, %struct.rpc_pipe_ops* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @EPIPE, align 4
  %54 = sub nsw i32 0, %53
  %55 = call i32 @rpc_purge_list(%struct.rpc_inode* %49, i32* @free_list, i32 %52, i32 %54)
  %56 = load %struct.rpc_inode*, %struct.rpc_inode** %3, align 8
  %57 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %31
  %61 = load %struct.rpc_pipe_ops*, %struct.rpc_pipe_ops** %4, align 8
  %62 = getelementptr inbounds %struct.rpc_pipe_ops, %struct.rpc_pipe_ops* %61, i32 0, i32 0
  %63 = load i32 (%struct.inode.0*)*, i32 (%struct.inode.0*)** %62, align 8
  %64 = icmp ne i32 (%struct.inode.0*)* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.rpc_pipe_ops*, %struct.rpc_pipe_ops** %4, align 8
  %67 = getelementptr inbounds %struct.rpc_pipe_ops, %struct.rpc_pipe_ops* %66, i32 0, i32 0
  %68 = load i32 (%struct.inode.0*)*, i32 (%struct.inode.0*)** %67, align 8
  %69 = load %struct.inode*, %struct.inode** %2, align 8
  %70 = bitcast %struct.inode* %69 to %struct.inode.0*
  %71 = call i32 %68(%struct.inode.0* %70)
  br label %72

72:                                               ; preds = %65, %60, %31
  %73 = load %struct.rpc_inode*, %struct.rpc_inode** %3, align 8
  %74 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %73, i32 0, i32 2
  %75 = call i32 @cancel_delayed_work_sync(i32* %74)
  br label %76

76:                                               ; preds = %72, %1
  %77 = load %struct.inode*, %struct.inode** %2, align 8
  %78 = call i32 @rpc_inode_setowner(%struct.inode* %77, i32* null)
  %79 = load %struct.inode*, %struct.inode** %2, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  ret void
}

declare dso_local %struct.rpc_inode* @RPC_I(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rpc_purge_list(%struct.rpc_inode*, i32*, i32, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @rpc_inode_setowner(%struct.inode*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
