; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsocket_alloc_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsocket_alloc_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.socket_alloc = type { %struct.inode, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32*, i64, i32, i32*, i32 }

@SS_UNCONNECTED = common dso_local global i32 0, align 4
@DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Allocate inode 0x%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @fsocket_alloc_inode(%struct.super_block* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.socket_alloc*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %5 = call %struct.socket_alloc* (...) @fsocket_alloc_socket_mem()
  store %struct.socket_alloc* %5, %struct.socket_alloc** %4, align 8
  %6 = load %struct.socket_alloc*, %struct.socket_alloc** %4, align 8
  %7 = icmp ne %struct.socket_alloc* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %47

9:                                                ; preds = %1
  %10 = load %struct.socket_alloc*, %struct.socket_alloc** %4, align 8
  %11 = getelementptr inbounds %struct.socket_alloc, %struct.socket_alloc* %10, i32 0, i32 0
  %12 = call i64 @security_inode_alloc(%struct.inode* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.socket_alloc*, %struct.socket_alloc** %4, align 8
  %16 = call i32 @fsocket_free_socket_mem(%struct.socket_alloc* %15)
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %47

17:                                               ; preds = %9
  %18 = load %struct.socket_alloc*, %struct.socket_alloc** %4, align 8
  %19 = getelementptr inbounds %struct.socket_alloc, %struct.socket_alloc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 6
  %21 = call i32 @init_waitqueue_head(i32* %20)
  %22 = load %struct.socket_alloc*, %struct.socket_alloc** %4, align 8
  %23 = getelementptr inbounds %struct.socket_alloc, %struct.socket_alloc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 5
  store i32* null, i32** %24, align 8
  %25 = load i32, i32* @SS_UNCONNECTED, align 4
  %26 = load %struct.socket_alloc*, %struct.socket_alloc** %4, align 8
  %27 = getelementptr inbounds %struct.socket_alloc, %struct.socket_alloc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  store i32 %25, i32* %28, align 8
  %29 = load %struct.socket_alloc*, %struct.socket_alloc** %4, align 8
  %30 = getelementptr inbounds %struct.socket_alloc, %struct.socket_alloc* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.socket_alloc*, %struct.socket_alloc** %4, align 8
  %33 = getelementptr inbounds %struct.socket_alloc, %struct.socket_alloc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load %struct.socket_alloc*, %struct.socket_alloc** %4, align 8
  %36 = getelementptr inbounds %struct.socket_alloc, %struct.socket_alloc* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = load %struct.socket_alloc*, %struct.socket_alloc** %4, align 8
  %39 = getelementptr inbounds %struct.socket_alloc, %struct.socket_alloc* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load i32, i32* @DEBUG, align 4
  %42 = load %struct.socket_alloc*, %struct.socket_alloc** %4, align 8
  %43 = getelementptr inbounds %struct.socket_alloc, %struct.socket_alloc* %42, i32 0, i32 0
  %44 = call i32 @DPRINTK(i32 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.inode* %43)
  %45 = load %struct.socket_alloc*, %struct.socket_alloc** %4, align 8
  %46 = getelementptr inbounds %struct.socket_alloc, %struct.socket_alloc* %45, i32 0, i32 0
  store %struct.inode* %46, %struct.inode** %2, align 8
  br label %47

47:                                               ; preds = %17, %14, %8
  %48 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %48
}

declare dso_local %struct.socket_alloc* @fsocket_alloc_socket_mem(...) #1

declare dso_local i64 @security_inode_alloc(%struct.inode*) #1

declare dso_local i32 @fsocket_free_socket_mem(%struct.socket_alloc*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @DPRINTK(i32, i8*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
