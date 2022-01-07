; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_fetch_file_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_fetch_file_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_server = type { i32 }
%struct.key = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.afs_volsync = type { i32 }
%struct.afs_wait_mode = type { i32 }
%struct.afs_call = type { i32*, i32, i32, %struct.afs_volsync*, %struct.afs_vnode*, %struct.key* }

@.str = private unnamed_addr constant [14 x i8] c",%x,{%x:%u},,\00", align 1
@afs_RXFSFetchStatus = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FS_SERVICE = common dso_local global i32 0, align 4
@AFS_FS_PORT = common dso_local global i32 0, align 4
@FSFETCHSTATUS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_fetch_file_status(%struct.afs_server* %0, %struct.key* %1, %struct.afs_vnode* %2, %struct.afs_volsync* %3, %struct.afs_wait_mode* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.afs_server*, align 8
  %8 = alloca %struct.key*, align 8
  %9 = alloca %struct.afs_vnode*, align 8
  %10 = alloca %struct.afs_volsync*, align 8
  %11 = alloca %struct.afs_wait_mode*, align 8
  %12 = alloca %struct.afs_call*, align 8
  %13 = alloca i32*, align 8
  store %struct.afs_server* %0, %struct.afs_server** %7, align 8
  store %struct.key* %1, %struct.key** %8, align 8
  store %struct.afs_vnode* %2, %struct.afs_vnode** %9, align 8
  store %struct.afs_volsync* %3, %struct.afs_volsync** %10, align 8
  store %struct.afs_wait_mode* %4, %struct.afs_wait_mode** %11, align 8
  %14 = load %struct.key*, %struct.key** %8, align 8
  %15 = call i32 @key_serial(%struct.key* %14)
  %16 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %17 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %21 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @_enter(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19, i32 %23)
  %25 = call %struct.afs_call* @afs_alloc_flat_call(i32* @afs_RXFSFetchStatus, i32 16, i32 120)
  store %struct.afs_call* %25, %struct.afs_call** %12, align 8
  %26 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %27 = icmp ne %struct.afs_call* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %5
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %82

31:                                               ; preds = %5
  %32 = load %struct.key*, %struct.key** %8, align 8
  %33 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %34 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %33, i32 0, i32 5
  store %struct.key* %32, %struct.key** %34, align 8
  %35 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %36 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %37 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %36, i32 0, i32 4
  store %struct.afs_vnode* %35, %struct.afs_vnode** %37, align 8
  %38 = load %struct.afs_volsync*, %struct.afs_volsync** %10, align 8
  %39 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %40 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %39, i32 0, i32 3
  store %struct.afs_volsync* %38, %struct.afs_volsync** %40, align 8
  %41 = load i32, i32* @FS_SERVICE, align 4
  %42 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %43 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @AFS_FS_PORT, align 4
  %45 = call i32 @htons(i32 %44)
  %46 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %47 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %49 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %13, align 8
  %51 = load i32, i32* @FSFETCHSTATUS, align 4
  %52 = call i32 @htonl(i32 %51)
  %53 = load i32*, i32** %13, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %56 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @htonl(i32 %58)
  %60 = load i32*, i32** %13, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %63 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @htonl(i32 %65)
  %67 = load i32*, i32** %13, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %70 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @htonl(i32 %72)
  %74 = load i32*, i32** %13, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.afs_server*, %struct.afs_server** %7, align 8
  %77 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %76, i32 0, i32 0
  %78 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %79 = load i32, i32* @GFP_NOFS, align 4
  %80 = load %struct.afs_wait_mode*, %struct.afs_wait_mode** %11, align 8
  %81 = call i32 @afs_make_call(i32* %77, %struct.afs_call* %78, i32 %79, %struct.afs_wait_mode* %80)
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %31, %28
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(i32*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @afs_make_call(i32*, %struct.afs_call*, i32, %struct.afs_wait_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
