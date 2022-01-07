; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_get_volume_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_get_volume_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_server = type { i32 }
%struct.key = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.afs_volume_status = type { i32 }
%struct.afs_wait_mode = type { i32 }
%struct.afs_call = type { i32*, i32, i32, i8*, %struct.afs_volume_status*, %struct.afs_vnode*, %struct.key* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AFSOPAQUEMAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@afs_RXFSGetVolumeStatus = common dso_local global i32 0, align 4
@FS_SERVICE = common dso_local global i32 0, align 4
@AFS_FS_PORT = common dso_local global i32 0, align 4
@FSGETVOLUMESTATUS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_get_volume_status(%struct.afs_server* %0, %struct.key* %1, %struct.afs_vnode* %2, %struct.afs_volume_status* %3, %struct.afs_wait_mode* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.afs_server*, align 8
  %8 = alloca %struct.key*, align 8
  %9 = alloca %struct.afs_vnode*, align 8
  %10 = alloca %struct.afs_volume_status*, align 8
  %11 = alloca %struct.afs_wait_mode*, align 8
  %12 = alloca %struct.afs_call*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store %struct.afs_server* %0, %struct.afs_server** %7, align 8
  store %struct.key* %1, %struct.key** %8, align 8
  store %struct.afs_vnode* %2, %struct.afs_vnode** %9, align 8
  store %struct.afs_volume_status* %3, %struct.afs_volume_status** %10, align 8
  store %struct.afs_wait_mode* %4, %struct.afs_wait_mode** %11, align 8
  %15 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @AFSOPAQUEMAX, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kmalloc(i32 %16, i32 %17)
  store i8* %18, i8** %14, align 8
  %19 = load i8*, i8** %14, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %73

24:                                               ; preds = %5
  %25 = call %struct.afs_call* @afs_alloc_flat_call(i32* @afs_RXFSGetVolumeStatus, i32 8, i32 48)
  store %struct.afs_call* %25, %struct.afs_call** %12, align 8
  %26 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %27 = icmp ne %struct.afs_call* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %14, align 8
  %30 = call i32 @kfree(i8* %29)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %73

33:                                               ; preds = %24
  %34 = load %struct.key*, %struct.key** %8, align 8
  %35 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %36 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %35, i32 0, i32 6
  store %struct.key* %34, %struct.key** %36, align 8
  %37 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %38 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %39 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %38, i32 0, i32 5
  store %struct.afs_vnode* %37, %struct.afs_vnode** %39, align 8
  %40 = load %struct.afs_volume_status*, %struct.afs_volume_status** %10, align 8
  %41 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %42 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %41, i32 0, i32 4
  store %struct.afs_volume_status* %40, %struct.afs_volume_status** %42, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %45 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* @FS_SERVICE, align 4
  %47 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %48 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @AFS_FS_PORT, align 4
  %50 = call i32 @htons(i32 %49)
  %51 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %52 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %54 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %13, align 8
  %56 = load i32, i32* @FSGETVOLUMESTATUS, align 4
  %57 = call i32 @htonl(i32 %56)
  %58 = load i32*, i32** %13, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %61 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @htonl(i32 %63)
  %65 = load i32*, i32** %13, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.afs_server*, %struct.afs_server** %7, align 8
  %68 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %67, i32 0, i32 0
  %69 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %70 = load i32, i32* @GFP_NOFS, align 4
  %71 = load %struct.afs_wait_mode*, %struct.afs_wait_mode** %11, align 8
  %72 = call i32 @afs_make_call(i32* %68, %struct.afs_call* %69, i32 %70, %struct.afs_wait_mode* %71)
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %33, %28, %21
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(i32*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @afs_make_call(i32*, %struct.afs_call*, i32, %struct.afs_wait_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
