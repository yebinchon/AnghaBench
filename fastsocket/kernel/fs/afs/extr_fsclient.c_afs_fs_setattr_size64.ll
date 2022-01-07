; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_setattr_size64.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_setattr_size64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_server = type { i32 }
%struct.key = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.iattr = type { i32, i32 }
%struct.afs_wait_mode = type { i32 }
%struct.afs_call = type { i32*, i32, i64, i32, i32, %struct.afs_vnode*, %struct.key* }

@.str = private unnamed_addr constant [14 x i8] c",%x,{%x:%u},,\00", align 1
@ATTR_SIZE = common dso_local global i32 0, align 4
@afs_RXFSStoreData64_as_Status = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FS_SERVICE = common dso_local global i32 0, align 4
@AFS_FS_PORT = common dso_local global i32 0, align 4
@FSSTOREDATA = common dso_local global i32 0, align 4
@FSSTOREDATA64 = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_server*, %struct.key*, %struct.afs_vnode*, %struct.iattr*, %struct.afs_wait_mode*)* @afs_fs_setattr_size64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_fs_setattr_size64(%struct.afs_server* %0, %struct.key* %1, %struct.afs_vnode* %2, %struct.iattr* %3, %struct.afs_wait_mode* %4) #0 {
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
  %14 = load %struct.key*, %struct.key** %8, align 8
  %15 = call i32 @key_serial(%struct.key* %14)
  %16 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %17 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %21 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @_enter(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19, i32 %23)
  %25 = load %struct.iattr*, %struct.iattr** %10, align 8
  %26 = getelementptr inbounds %struct.iattr, %struct.iattr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ATTR_SIZE, align 4
  %29 = and i32 %27, %28
  %30 = call i32 @ASSERT(i32 %29)
  %31 = call %struct.afs_call* @afs_alloc_flat_call(i32* @afs_RXFSStoreData64_as_Status, i32 64, i32 108)
  store %struct.afs_call* %31, %struct.afs_call** %12, align 8
  %32 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %33 = icmp ne %struct.afs_call* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %5
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %124

37:                                               ; preds = %5
  %38 = load %struct.key*, %struct.key** %8, align 8
  %39 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %40 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %39, i32 0, i32 6
  store %struct.key* %38, %struct.key** %40, align 8
  %41 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %42 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %43 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %42, i32 0, i32 5
  store %struct.afs_vnode* %41, %struct.afs_vnode** %43, align 8
  %44 = load i32, i32* @FS_SERVICE, align 4
  %45 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %46 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @AFS_FS_PORT, align 4
  %48 = call i32 @htons(i32 %47)
  %49 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %50 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %52 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, 1
  %56 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %57 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* @FSSTOREDATA, align 4
  %59 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %60 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %62 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %13, align 8
  %64 = load i32, i32* @FSSTOREDATA64, align 4
  %65 = call i8* @htonl(i32 %64)
  %66 = ptrtoint i8* %65 to i32
  %67 = load i32*, i32** %13, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %13, align 8
  store i32 %66, i32* %67, align 4
  %69 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %70 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i8* @htonl(i32 %72)
  %74 = ptrtoint i8* %73 to i32
  %75 = load i32*, i32** %13, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %13, align 8
  store i32 %74, i32* %75, align 4
  %77 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %78 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @htonl(i32 %80)
  %82 = ptrtoint i8* %81 to i32
  %83 = load i32*, i32** %13, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %13, align 8
  store i32 %82, i32* %83, align 4
  %85 = load %struct.afs_vnode*, %struct.afs_vnode** %9, align 8
  %86 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i8* @htonl(i32 %88)
  %90 = ptrtoint i8* %89 to i32
  %91 = load i32*, i32** %13, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %13, align 8
  store i32 %90, i32* %91, align 4
  %93 = load %struct.iattr*, %struct.iattr** %10, align 8
  %94 = call i32 @xdr_encode_AFS_StoreStatus(i32** %13, %struct.iattr* %93)
  %95 = load i32*, i32** %13, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %13, align 8
  store i32 0, i32* %95, align 4
  %97 = load i32*, i32** %13, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %13, align 8
  store i32 0, i32* %97, align 4
  %99 = load i32*, i32** %13, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %13, align 8
  store i32 0, i32* %99, align 4
  %101 = load i32*, i32** %13, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %13, align 8
  store i32 0, i32* %101, align 4
  %103 = load %struct.iattr*, %struct.iattr** %10, align 8
  %104 = getelementptr inbounds %struct.iattr, %struct.iattr* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = ashr i32 %105, 32
  %107 = call i8* @htonl(i32 %106)
  %108 = ptrtoint i8* %107 to i32
  %109 = load i32*, i32** %13, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %13, align 8
  store i32 %108, i32* %109, align 4
  %111 = load %struct.iattr*, %struct.iattr** %10, align 8
  %112 = getelementptr inbounds %struct.iattr, %struct.iattr* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @htonl(i32 %113)
  %115 = ptrtoint i8* %114 to i32
  %116 = load i32*, i32** %13, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %13, align 8
  store i32 %115, i32* %116, align 4
  %118 = load %struct.afs_server*, %struct.afs_server** %7, align 8
  %119 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %118, i32 0, i32 0
  %120 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %121 = load i32, i32* @GFP_NOFS, align 4
  %122 = load %struct.afs_wait_mode*, %struct.afs_wait_mode** %11, align 8
  %123 = call i32 @afs_make_call(i32* %119, %struct.afs_call* %120, i32 %121, %struct.afs_wait_mode* %122)
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %37, %34
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @key_serial(%struct.key*) #1

declare dso_local i32 @ASSERT(i32) #1

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
