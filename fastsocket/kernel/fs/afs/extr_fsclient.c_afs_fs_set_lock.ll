; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_set_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_set_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_server = type { i32 }
%struct.key = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.afs_wait_mode = type { i32 }
%struct.afs_call = type { i32*, i32, i32, %struct.afs_vnode*, %struct.key* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@afs_RXFSSetLock = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FS_SERVICE = common dso_local global i32 0, align 4
@AFS_FS_PORT = common dso_local global i32 0, align 4
@FSSETLOCK = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_set_lock(%struct.afs_server* %0, %struct.key* %1, %struct.afs_vnode* %2, i32 %3, %struct.afs_wait_mode* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.afs_server*, align 8
  %8 = alloca %struct.key*, align 8
  %9 = alloca %struct.afs_vnode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.afs_wait_mode*, align 8
  %12 = alloca %struct.afs_call*, align 8
  %13 = alloca i32*, align 8
  store %struct.afs_server* %0, %struct.afs_server** %7, align 8
  store %struct.key* %1, %struct.key** %8, align 8
  store %struct.afs_vnode* %2, %struct.afs_vnode** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.afs_wait_mode* %4, %struct.afs_wait_mode** %11, align 8
  %14 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %15 = call %struct.afs_call* @afs_alloc_flat_call(i32* @afs_RXFSSetLock, i32 20, i32 24)
  store %struct.afs_call* %15, %struct.afs_call** %12, align 8
  %16 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %17 = icmp ne %struct.afs_call* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %78

21:                                               ; preds = %5
  %22 = load %struct.key*, %struct.key** %8, align 8
  %23 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %24 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %23, i32 0, i32 4
  store %struct.key* %22, %struct.key** %24, align 8
  %25 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %26 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %27 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %26, i32 0, i32 3
  store %struct.afs_vnode* %25, %struct.afs_vnode** %27, align 8
  %28 = load i32, i32* @FS_SERVICE, align 4
  %29 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %30 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @AFS_FS_PORT, align 4
  %32 = call i32 @htons(i32 %31)
  %33 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %34 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %36 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %13, align 8
  %38 = load i32, i32* @FSSETLOCK, align 4
  %39 = call i8* @htonl(i32 %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load i32*, i32** %13, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %13, align 8
  store i32 %40, i32* %41, align 4
  %43 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %44 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @htonl(i32 %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = load i32*, i32** %13, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %13, align 8
  store i32 %48, i32* %49, align 4
  %51 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %52 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @htonl(i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load i32*, i32** %13, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %13, align 8
  store i32 %56, i32* %57, align 4
  %59 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %60 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @htonl(i32 %62)
  %64 = ptrtoint i8* %63 to i32
  %65 = load i32*, i32** %13, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %13, align 8
  store i32 %64, i32* %65, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i8* @htonl(i32 %67)
  %69 = ptrtoint i8* %68 to i32
  %70 = load i32*, i32** %13, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %13, align 8
  store i32 %69, i32* %70, align 4
  %72 = load %struct.afs_server*, %struct.afs_server** %7, align 8
  %73 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %72, i32 0, i32 0
  %74 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %75 = load i32, i32* @GFP_NOFS, align 4
  %76 = load %struct.afs_wait_mode*, %struct.afs_wait_mode** %11, align 8
  %77 = call i32 @afs_make_call(i32* %73, %struct.afs_call* %74, i32 %75, %struct.afs_wait_mode* %76)
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %21, %18
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(i32*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @afs_make_call(i32*, %struct.afs_call*, i32, %struct.afs_wait_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
