; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/extr_socket.c_sock_alloc_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/extr_socket.c_sock_alloc_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.socket_alloc = type { %struct.inode, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32*, i64, i32, i32*, i32 }

@sock_inode_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*)* @sock_alloc_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @sock_alloc_inode(%struct.super_block* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.socket_alloc*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = load i32, i32* @sock_inode_cachep, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.socket_alloc* @kmem_cache_alloc(i32 %5, i32 %6)
  store %struct.socket_alloc* %7, %struct.socket_alloc** %4, align 8
  %8 = load %struct.socket_alloc*, %struct.socket_alloc** %4, align 8
  %9 = icmp ne %struct.socket_alloc* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %37

11:                                               ; preds = %1
  %12 = load %struct.socket_alloc*, %struct.socket_alloc** %4, align 8
  %13 = getelementptr inbounds %struct.socket_alloc, %struct.socket_alloc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 6
  %15 = call i32 @init_waitqueue_head(i32* %14)
  %16 = load %struct.socket_alloc*, %struct.socket_alloc** %4, align 8
  %17 = getelementptr inbounds %struct.socket_alloc, %struct.socket_alloc* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 5
  store i32* null, i32** %18, align 8
  %19 = load i32, i32* @SS_UNCONNECTED, align 4
  %20 = load %struct.socket_alloc*, %struct.socket_alloc** %4, align 8
  %21 = getelementptr inbounds %struct.socket_alloc, %struct.socket_alloc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 4
  store i32 %19, i32* %22, align 8
  %23 = load %struct.socket_alloc*, %struct.socket_alloc** %4, align 8
  %24 = getelementptr inbounds %struct.socket_alloc, %struct.socket_alloc* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.socket_alloc*, %struct.socket_alloc** %4, align 8
  %27 = getelementptr inbounds %struct.socket_alloc, %struct.socket_alloc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = load %struct.socket_alloc*, %struct.socket_alloc** %4, align 8
  %30 = getelementptr inbounds %struct.socket_alloc, %struct.socket_alloc* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = load %struct.socket_alloc*, %struct.socket_alloc** %4, align 8
  %33 = getelementptr inbounds %struct.socket_alloc, %struct.socket_alloc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  %35 = load %struct.socket_alloc*, %struct.socket_alloc** %4, align 8
  %36 = getelementptr inbounds %struct.socket_alloc, %struct.socket_alloc* %35, i32 0, i32 0
  store %struct.inode* %36, %struct.inode** %2, align 8
  br label %37

37:                                               ; preds = %11, %10
  %38 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %38
}

declare dso_local %struct.socket_alloc* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
