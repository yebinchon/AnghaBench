; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsocket_alloc_socket.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsocket_alloc_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode_operations = type { i32 }
%struct.file_operations = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.socket = type { i64, i32*, i32*, i32*, i64, i32, i32*, i32 }
%struct.inode = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, %struct.file_operations*, %struct.inode_operations* }
%struct.socket_alloc = type { i32 }

@fsocket_alloc_socket.empty_iops = internal constant %struct.inode_operations zeroinitializer, align 4
@fsocket_alloc_socket.empty_fops = internal constant %struct.file_operations zeroinitializer, align 4
@fsocket_alloc_socket.last_ino = internal global i32 4096, align 4
@ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Fail to allocate sock\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@fastsocket_mnt = common dso_local global %struct.TYPE_2__* null, align 8
@type = common dso_local global i32 0, align 4
@S_IFSOCK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Allocat inode 0x%p\0A\00", align 1
@FSOCKET_INODE_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.socket* ()* @fsocket_alloc_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.socket* @fsocket_alloc_socket() #0 {
  %1 = alloca %struct.socket*, align 8
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.inode*, align 8
  store %struct.inode* null, %struct.inode** %3, align 8
  %4 = call i64 (...) @fsocket_alloc_socket_mem()
  %5 = inttoptr i64 %4 to %struct.socket*
  store %struct.socket* %5, %struct.socket** %2, align 8
  %6 = load %struct.socket*, %struct.socket** %2, align 8
  %7 = icmp ne %struct.socket* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @ERR, align 4
  %10 = call i32 (i32, i8*, ...) @DPRINTK(i32 %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %88

11:                                               ; preds = %0
  %12 = load i32, i32* @THIS_MODULE, align 4
  %13 = call i32 @__module_get(i32 %12)
  %14 = load %struct.socket*, %struct.socket** %2, align 8
  %15 = call %struct.inode* @SOCK_INODE(%struct.socket* %14)
  %16 = call i64 @security_inode_alloc(%struct.inode* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %82

19:                                               ; preds = %11
  %20 = load %struct.socket*, %struct.socket** %2, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 7
  %22 = call i32 @init_waitqueue_head(i32* %21)
  %23 = load %struct.socket*, %struct.socket** %2, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 6
  store i32* null, i32** %24, align 8
  %25 = load i32, i32* @SS_UNCONNECTED, align 4
  %26 = load %struct.socket*, %struct.socket** %2, align 8
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.socket*, %struct.socket** %2, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load %struct.socket*, %struct.socket** %2, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 3
  store i32* null, i32** %31, align 8
  %32 = load %struct.socket*, %struct.socket** %2, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 2
  store i32* null, i32** %33, align 8
  %34 = load %struct.socket*, %struct.socket** %2, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load %struct.socket*, %struct.socket** %2, align 8
  %37 = getelementptr inbounds %struct.socket, %struct.socket* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.socket*, %struct.socket** %2, align 8
  %39 = call %struct.inode* @SOCK_INODE(%struct.socket* %38)
  store %struct.inode* %39, %struct.inode** %3, align 8
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 10
  store %struct.inode_operations* @fsocket_alloc_socket.empty_iops, %struct.inode_operations** %41, align 8
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 9
  store %struct.file_operations* @fsocket_alloc_socket.empty_fops, %struct.file_operations** %43, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fastsocket_mnt, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.inode*, %struct.inode** %3, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 4
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 7
  %51 = call i32 @atomic_set(i32* %50, i32 1)
  %52 = load %struct.inode*, %struct.inode** %3, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 6
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.inode*, %struct.inode** %3, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 5
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load i32, i32* @fsocket_alloc_socket.last_ino, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* @fsocket_alloc_socket.last_ino, align 4
  %60 = load %struct.inode*, %struct.inode** %3, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.inode*, %struct.inode** %3, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 4
  store i64 0, i64* %63, align 8
  %64 = load %struct.socket*, %struct.socket** %2, align 8
  %65 = load i32, i32* @type, align 4
  %66 = call i32 @kmemcheck_annotate_bitfield(%struct.socket* %64, i32 %65)
  %67 = load i32, i32* @S_IFSOCK, align 4
  %68 = load i32, i32* @S_IRWXUGO, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.inode*, %struct.inode** %3, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = call i32 (...) @current_fsuid()
  %73 = load %struct.inode*, %struct.inode** %3, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = call i32 (...) @current_fsgid()
  %76 = load %struct.inode*, %struct.inode** %3, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @DEBUG, align 4
  %79 = load %struct.inode*, %struct.inode** %3, align 8
  %80 = call i32 (i32, i8*, ...) @DPRINTK(i32 %78, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %79)
  %81 = load %struct.socket*, %struct.socket** %2, align 8
  store %struct.socket* %81, %struct.socket** %1, align 8
  br label %89

82:                                               ; preds = %18
  %83 = load i32, i32* @THIS_MODULE, align 4
  %84 = call i32 @module_put(i32 %83)
  %85 = load %struct.socket*, %struct.socket** %2, align 8
  %86 = bitcast %struct.socket* %85 to %struct.socket_alloc*
  %87 = call i32 @fsocket_free_socket_mem(%struct.socket_alloc* %86)
  br label %88

88:                                               ; preds = %82, %8
  store %struct.socket* null, %struct.socket** %1, align 8
  br label %89

89:                                               ; preds = %88, %19
  %90 = load %struct.socket*, %struct.socket** %1, align 8
  ret %struct.socket* %90
}

declare dso_local i64 @fsocket_alloc_socket_mem(...) #1

declare dso_local i32 @DPRINTK(i32, i8*, ...) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i64 @security_inode_alloc(%struct.inode*) #1

declare dso_local %struct.inode* @SOCK_INODE(%struct.socket*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kmemcheck_annotate_bitfield(%struct.socket*, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @fsocket_free_socket_mem(%struct.socket_alloc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
