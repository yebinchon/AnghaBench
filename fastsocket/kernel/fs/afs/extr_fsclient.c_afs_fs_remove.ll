; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_server = type { i32 }
%struct.key = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.afs_wait_mode = type { i32 }
%struct.afs_call = type { i32*, i32, i32, %struct.afs_vnode*, %struct.key* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@afs_RXFSRemoveXXXX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FS_SERVICE = common dso_local global i32 0, align 4
@AFS_FS_PORT = common dso_local global i32 0, align 4
@FSREMOVEDIR = common dso_local global i64 0, align 8
@FSREMOVEFILE = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_remove(%struct.afs_server* %0, %struct.key* %1, %struct.afs_vnode* %2, i8* %3, i32 %4, %struct.afs_wait_mode* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.afs_server*, align 8
  %9 = alloca %struct.key*, align 8
  %10 = alloca %struct.afs_vnode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.afs_wait_mode*, align 8
  %14 = alloca %struct.afs_call*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  store %struct.afs_server* %0, %struct.afs_server** %8, align 8
  store %struct.key* %1, %struct.key** %9, align 8
  store %struct.afs_vnode* %2, %struct.afs_vnode** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.afs_wait_mode* %5, %struct.afs_wait_mode** %13, align 8
  %19 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %11, align 8
  %21 = call i64 @strlen(i8* %20)
  store i64 %21, i64* %15, align 8
  %22 = load i64, i64* %15, align 8
  %23 = and i64 %22, 3
  %24 = sub i64 4, %23
  %25 = and i64 %24, 3
  store i64 %25, i64* %17, align 8
  %26 = load i64, i64* %15, align 8
  %27 = add i64 20, %26
  %28 = load i64, i64* %17, align 8
  %29 = add i64 %27, %28
  store i64 %29, i64* %16, align 8
  %30 = load i64, i64* %16, align 8
  %31 = call %struct.afs_call* @afs_alloc_flat_call(i32* @afs_RXFSRemoveXXXX, i64 %30, i32 108)
  store %struct.afs_call* %31, %struct.afs_call** %14, align 8
  %32 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %33 = icmp ne %struct.afs_call* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %6
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %122

37:                                               ; preds = %6
  %38 = load %struct.key*, %struct.key** %9, align 8
  %39 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %40 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %39, i32 0, i32 4
  store %struct.key* %38, %struct.key** %40, align 8
  %41 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %42 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %43 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %42, i32 0, i32 3
  store %struct.afs_vnode* %41, %struct.afs_vnode** %43, align 8
  %44 = load i32, i32* @FS_SERVICE, align 4
  %45 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %46 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @AFS_FS_PORT, align 4
  %48 = call i32 @htons(i32 %47)
  %49 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %50 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %52 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %18, align 8
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %37
  %57 = load i64, i64* @FSREMOVEDIR, align 8
  br label %60

58:                                               ; preds = %37
  %59 = load i64, i64* @FSREMOVEFILE, align 8
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i64 [ %57, %56 ], [ %59, %58 ]
  %62 = call i8* @htonl(i64 %61)
  %63 = ptrtoint i8* %62 to i32
  %64 = load i32*, i32** %18, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %18, align 8
  store i32 %63, i32* %64, align 4
  %66 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %67 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i8* @htonl(i64 %69)
  %71 = ptrtoint i8* %70 to i32
  %72 = load i32*, i32** %18, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %18, align 8
  store i32 %71, i32* %72, align 4
  %74 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %75 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i8* @htonl(i64 %77)
  %79 = ptrtoint i8* %78 to i32
  %80 = load i32*, i32** %18, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %18, align 8
  store i32 %79, i32* %80, align 4
  %82 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %83 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i8* @htonl(i64 %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = load i32*, i32** %18, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %18, align 8
  store i32 %87, i32* %88, align 4
  %90 = load i64, i64* %15, align 8
  %91 = call i8* @htonl(i64 %90)
  %92 = ptrtoint i8* %91 to i32
  %93 = load i32*, i32** %18, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %18, align 8
  store i32 %92, i32* %93, align 4
  %95 = load i32*, i32** %18, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = load i64, i64* %15, align 8
  %98 = call i32 @memcpy(i32* %95, i8* %96, i64 %97)
  %99 = load i32*, i32** %18, align 8
  %100 = bitcast i32* %99 to i8*
  %101 = load i64, i64* %15, align 8
  %102 = getelementptr i8, i8* %100, i64 %101
  %103 = bitcast i8* %102 to i32*
  store i32* %103, i32** %18, align 8
  %104 = load i64, i64* %17, align 8
  %105 = icmp ugt i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %60
  %107 = load i32*, i32** %18, align 8
  %108 = load i64, i64* %17, align 8
  %109 = call i32 @memset(i32* %107, i32 0, i64 %108)
  %110 = load i32*, i32** %18, align 8
  %111 = bitcast i32* %110 to i8*
  %112 = load i64, i64* %17, align 8
  %113 = getelementptr i8, i8* %111, i64 %112
  %114 = bitcast i8* %113 to i32*
  store i32* %114, i32** %18, align 8
  br label %115

115:                                              ; preds = %106, %60
  %116 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %117 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %116, i32 0, i32 0
  %118 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %119 = load i32, i32* @GFP_NOFS, align 4
  %120 = load %struct.afs_wait_mode*, %struct.afs_wait_mode** %13, align 8
  %121 = call i32 @afs_make_call(i32* %117, %struct.afs_call* %118, i32 %119, %struct.afs_wait_mode* %120)
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %115, %34
  %123 = load i32, i32* %7, align 4
  ret i32 %123
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(i32*, i64, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @afs_make_call(i32*, %struct.afs_call*, i32, %struct.afs_wait_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
