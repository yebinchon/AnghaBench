; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpc_pipe.c_init_once.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpc_pipe.c_init_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_inode = type { i32*, i32, i32, i64, i32, i32, i32, i64, i64, i32*, i32 }

@rpc_timeout_upcall_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @init_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_once(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rpc_inode*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.rpc_inode*
  store %struct.rpc_inode* %5, %struct.rpc_inode** %3, align 8
  %6 = load %struct.rpc_inode*, %struct.rpc_inode** %3, align 8
  %7 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %6, i32 0, i32 10
  %8 = call i32 @inode_init_once(i32* %7)
  %9 = load %struct.rpc_inode*, %struct.rpc_inode** %3, align 8
  %10 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %9, i32 0, i32 9
  store i32* null, i32** %10, align 8
  %11 = load %struct.rpc_inode*, %struct.rpc_inode** %3, align 8
  %12 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %11, i32 0, i32 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.rpc_inode*, %struct.rpc_inode** %3, align 8
  %14 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %13, i32 0, i32 7
  store i64 0, i64* %14, align 8
  %15 = load %struct.rpc_inode*, %struct.rpc_inode** %3, align 8
  %16 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %15, i32 0, i32 6
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.rpc_inode*, %struct.rpc_inode** %3, align 8
  %19 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %18, i32 0, i32 5
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.rpc_inode*, %struct.rpc_inode** %3, align 8
  %22 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %21, i32 0, i32 4
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.rpc_inode*, %struct.rpc_inode** %3, align 8
  %25 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.rpc_inode*, %struct.rpc_inode** %3, align 8
  %27 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %26, i32 0, i32 2
  %28 = call i32 @init_waitqueue_head(i32* %27)
  %29 = load %struct.rpc_inode*, %struct.rpc_inode** %3, align 8
  %30 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %29, i32 0, i32 1
  %31 = load i32, i32* @rpc_timeout_upcall_queue, align 4
  %32 = call i32 @INIT_DELAYED_WORK(i32* %30, i32 %31)
  %33 = load %struct.rpc_inode*, %struct.rpc_inode** %3, align 8
  %34 = getelementptr inbounds %struct.rpc_inode, %struct.rpc_inode* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  ret void
}

declare dso_local i32 @inode_init_once(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
