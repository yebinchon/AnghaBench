; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_release_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_release_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_server = type { i32 }
%struct.key = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.afs_wait_mode = type { i32 }
%struct.afs_call = type { i32*, i32, i32, %struct.afs_vnode*, %struct.key* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@afs_RXFSReleaseLock = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FS_SERVICE = common dso_local global i32 0, align 4
@AFS_FS_PORT = common dso_local global i32 0, align 4
@FSRELEASELOCK = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_release_lock(%struct.afs_server* %0, %struct.key* %1, %struct.afs_vnode* %2, %struct.afs_wait_mode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.afs_server*, align 8
  %7 = alloca %struct.key*, align 8
  %8 = alloca %struct.afs_vnode*, align 8
  %9 = alloca %struct.afs_wait_mode*, align 8
  %10 = alloca %struct.afs_call*, align 8
  %11 = alloca i32*, align 8
  store %struct.afs_server* %0, %struct.afs_server** %6, align 8
  store %struct.key* %1, %struct.key** %7, align 8
  store %struct.afs_vnode* %2, %struct.afs_vnode** %8, align 8
  store %struct.afs_wait_mode* %3, %struct.afs_wait_mode** %9, align 8
  %12 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %13 = call %struct.afs_call* @afs_alloc_flat_call(i32* @afs_RXFSReleaseLock, i32 16, i32 24)
  store %struct.afs_call* %13, %struct.afs_call** %10, align 8
  %14 = load %struct.afs_call*, %struct.afs_call** %10, align 8
  %15 = icmp ne %struct.afs_call* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %71

19:                                               ; preds = %4
  %20 = load %struct.key*, %struct.key** %7, align 8
  %21 = load %struct.afs_call*, %struct.afs_call** %10, align 8
  %22 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %21, i32 0, i32 4
  store %struct.key* %20, %struct.key** %22, align 8
  %23 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %24 = load %struct.afs_call*, %struct.afs_call** %10, align 8
  %25 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %24, i32 0, i32 3
  store %struct.afs_vnode* %23, %struct.afs_vnode** %25, align 8
  %26 = load i32, i32* @FS_SERVICE, align 4
  %27 = load %struct.afs_call*, %struct.afs_call** %10, align 8
  %28 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @AFS_FS_PORT, align 4
  %30 = call i32 @htons(i32 %29)
  %31 = load %struct.afs_call*, %struct.afs_call** %10, align 8
  %32 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.afs_call*, %struct.afs_call** %10, align 8
  %34 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %11, align 8
  %36 = load i32, i32* @FSRELEASELOCK, align 4
  %37 = call i8* @htonl(i32 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load i32*, i32** %11, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %11, align 8
  store i32 %38, i32* %39, align 4
  %41 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %42 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @htonl(i32 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load i32*, i32** %11, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %11, align 8
  store i32 %46, i32* %47, align 4
  %49 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %50 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @htonl(i32 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = load i32*, i32** %11, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %11, align 8
  store i32 %54, i32* %55, align 4
  %57 = load %struct.afs_vnode*, %struct.afs_vnode** %8, align 8
  %58 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @htonl(i32 %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = load i32*, i32** %11, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %11, align 8
  store i32 %62, i32* %63, align 4
  %65 = load %struct.afs_server*, %struct.afs_server** %6, align 8
  %66 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %65, i32 0, i32 0
  %67 = load %struct.afs_call*, %struct.afs_call** %10, align 8
  %68 = load i32, i32* @GFP_NOFS, align 4
  %69 = load %struct.afs_wait_mode*, %struct.afs_wait_mode** %9, align 8
  %70 = call i32 @afs_make_call(i32* %66, %struct.afs_call* %67, i32 %68, %struct.afs_wait_mode* %69)
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %19, %16
  %72 = load i32, i32* %5, align 4
  ret i32 %72
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
