; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_server = type { i32 }
%struct.key = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.iattr = type { i32 }
%struct.afs_wait_mode = type { i32 }
%struct.afs_call = type { i32*, i32, i32, i32, %struct.afs_vnode*, %struct.key* }

@ATTR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c",%x,{%x:%u},,\00", align 1
@afs_RXFSStoreStatus = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FS_SERVICE = common dso_local global i32 0, align 4
@AFS_FS_PORT = common dso_local global i32 0, align 4
@FSSTORESTATUS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_setattr(%struct.afs_server* %0, %struct.key* %1, %struct.afs_vnode* %2, %struct.iattr* %3, %struct.afs_wait_mode* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.afs_server*, align 8
  %8 = alloca %struct.key*, align 8
  %9 = alloca %struct.afs_vnode*, align 8
  %10 = alloca %struct.iattr*, align 8
  %11 = alloca %struct.afs_wait_mode*, align 8
  %12 = alloca %struct.afs_call*, align 8
  %13 = alloca i32*, align 8
  store %struct.afs_server* %0, %struct.afs_server** %7, align 8
  store %struct.key* %1, %struct.key** %8, align 8
  store %struct.afs_vnode* %2, %struct.afs_vnode** %9, align 8
  store %struct.iattr* %3, %struct.iattr** %10, align 8
  store %struct.afs_wait_mode* %4, %struct.afs_wait_mode** %11, align 8
  %14 = load %struct.iattr*, %struct.iattr** %10, align 8
  %15 = getelementptr inbounds %struct.iattr, %struct.iattr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ATTR_SIZE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %5
  %21 = load %struct.afs_server*, %struct.afs_server** %7, align 8
  %22 = load %struct.key*, %struct.key** %8, align 8
  %23 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %24 = load %struct.iattr*, %struct.iattr** %10, align 8
  %25 = load %struct.afs_wait_mode*, %struct.afs_wait_mode** %11, align 8
  %26 = call i32 @afs_fs_setattr_size(%struct.afs_server* %21, %struct.key* %22, %struct.afs_vnode* %23, %struct.iattr* %24, %struct.afs_wait_mode* %25)
  store i32 %26, i32* %6, align 4
  br label %102

27:                                               ; preds = %5
  %28 = load %struct.key*, %struct.key** %8, align 8
  %29 = call i32 @key_serial(%struct.key* %28)
  %30 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %31 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %35 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @_enter(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %33, i32 %37)
  %39 = call %struct.afs_call* @afs_alloc_flat_call(i32* @afs_RXFSStoreStatus, i32 40, i32 108)
  store %struct.afs_call* %39, %struct.afs_call** %12, align 8
  %40 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %41 = icmp ne %struct.afs_call* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %27
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %102

45:                                               ; preds = %27
  %46 = load %struct.key*, %struct.key** %8, align 8
  %47 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %48 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %47, i32 0, i32 5
  store %struct.key* %46, %struct.key** %48, align 8
  %49 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %50 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %51 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %50, i32 0, i32 4
  store %struct.afs_vnode* %49, %struct.afs_vnode** %51, align 8
  %52 = load i32, i32* @FS_SERVICE, align 4
  %53 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %54 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @AFS_FS_PORT, align 4
  %56 = call i32 @htons(i32 %55)
  %57 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %58 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @FSSTORESTATUS, align 4
  %60 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %61 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %63 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %13, align 8
  %65 = load i32, i32* @FSSTORESTATUS, align 4
  %66 = call i8* @htonl(i32 %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = load i32*, i32** %13, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %13, align 8
  store i32 %67, i32* %68, align 4
  %70 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %71 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @htonl(i32 %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = load i32*, i32** %13, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %13, align 8
  store i32 %75, i32* %76, align 4
  %78 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %79 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @htonl(i32 %81)
  %83 = ptrtoint i8* %82 to i32
  %84 = load i32*, i32** %13, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %13, align 8
  store i32 %83, i32* %84, align 4
  %86 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %87 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @htonl(i32 %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load i32*, i32** %13, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %13, align 8
  store i32 %91, i32* %92, align 4
  %94 = load %struct.iattr*, %struct.iattr** %10, align 8
  %95 = call i32 @xdr_encode_AFS_StoreStatus(i32** %13, %struct.iattr* %94)
  %96 = load %struct.afs_server*, %struct.afs_server** %7, align 8
  %97 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %96, i32 0, i32 0
  %98 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %99 = load i32, i32* @GFP_NOFS, align 4
  %100 = load %struct.afs_wait_mode*, %struct.afs_wait_mode** %11, align 8
  %101 = call i32 @afs_make_call(i32* %97, %struct.afs_call* %98, i32 %99, %struct.afs_wait_mode* %100)
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %45, %42, %20
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i32 @afs_fs_setattr_size(%struct.afs_server*, %struct.key*, %struct.afs_vnode*, %struct.iattr*, %struct.afs_wait_mode*) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(i32*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @xdr_encode_AFS_StoreStatus(i32**, %struct.iattr*) #1

declare dso_local i32 @afs_make_call(i32*, %struct.afs_call*, i32, %struct.afs_wait_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
