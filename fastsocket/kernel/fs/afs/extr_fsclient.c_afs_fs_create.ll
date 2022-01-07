; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_server = type { i32 }
%struct.key = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.afs_fid = type { i32 }
%struct.afs_file_status = type { i32 }
%struct.afs_callback = type { i32 }
%struct.afs_wait_mode = type { i32 }
%struct.afs_call = type { i32*, i32, i32, %struct.afs_callback*, %struct.afs_file_status*, %struct.afs_fid*, %struct.afs_vnode*, %struct.key* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@afs_RXFSCreateXXXX = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FS_SERVICE = common dso_local global i32 0, align 4
@AFS_FS_PORT = common dso_local global i32 0, align 4
@FSMAKEDIR = common dso_local global i64 0, align 8
@FSCREATEFILE = common dso_local global i64 0, align 8
@AFS_SET_MODE = common dso_local global i64 0, align 8
@S_IALLUGO = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_create(%struct.afs_server* %0, %struct.key* %1, %struct.afs_vnode* %2, i8* %3, i64 %4, %struct.afs_fid* %5, %struct.afs_file_status* %6, %struct.afs_callback* %7, %struct.afs_wait_mode* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.afs_server*, align 8
  %12 = alloca %struct.key*, align 8
  %13 = alloca %struct.afs_vnode*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.afs_fid*, align 8
  %17 = alloca %struct.afs_file_status*, align 8
  %18 = alloca %struct.afs_callback*, align 8
  %19 = alloca %struct.afs_wait_mode*, align 8
  %20 = alloca %struct.afs_call*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  store %struct.afs_server* %0, %struct.afs_server** %11, align 8
  store %struct.key* %1, %struct.key** %12, align 8
  store %struct.afs_vnode* %2, %struct.afs_vnode** %13, align 8
  store i8* %3, i8** %14, align 8
  store i64 %4, i64* %15, align 8
  store %struct.afs_fid* %5, %struct.afs_fid** %16, align 8
  store %struct.afs_file_status* %6, %struct.afs_file_status** %17, align 8
  store %struct.afs_callback* %7, %struct.afs_callback** %18, align 8
  store %struct.afs_wait_mode* %8, %struct.afs_wait_mode** %19, align 8
  %25 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %26 = load i8*, i8** %14, align 8
  %27 = call i64 @strlen(i8* %26)
  store i64 %27, i64* %21, align 8
  %28 = load i64, i64* %21, align 8
  %29 = and i64 %28, 3
  %30 = sub i64 4, %29
  %31 = and i64 %30, 3
  store i64 %31, i64* %23, align 8
  %32 = load i64, i64* %21, align 8
  %33 = add i64 20, %32
  %34 = load i64, i64* %23, align 8
  %35 = add i64 %33, %34
  %36 = add i64 %35, 24
  store i64 %36, i64* %22, align 8
  %37 = load i64, i64* %22, align 8
  %38 = call %struct.afs_call* @afs_alloc_flat_call(i32* @afs_RXFSCreateXXXX, i64 %37, i32 216)
  store %struct.afs_call* %38, %struct.afs_call** %20, align 8
  %39 = load %struct.afs_call*, %struct.afs_call** %20, align 8
  %40 = icmp ne %struct.afs_call* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %9
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %10, align 4
  br label %159

44:                                               ; preds = %9
  %45 = load %struct.key*, %struct.key** %12, align 8
  %46 = load %struct.afs_call*, %struct.afs_call** %20, align 8
  %47 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %46, i32 0, i32 7
  store %struct.key* %45, %struct.key** %47, align 8
  %48 = load %struct.afs_vnode*, %struct.afs_vnode** %13, align 8
  %49 = load %struct.afs_call*, %struct.afs_call** %20, align 8
  %50 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %49, i32 0, i32 6
  store %struct.afs_vnode* %48, %struct.afs_vnode** %50, align 8
  %51 = load %struct.afs_fid*, %struct.afs_fid** %16, align 8
  %52 = load %struct.afs_call*, %struct.afs_call** %20, align 8
  %53 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %52, i32 0, i32 5
  store %struct.afs_fid* %51, %struct.afs_fid** %53, align 8
  %54 = load %struct.afs_file_status*, %struct.afs_file_status** %17, align 8
  %55 = load %struct.afs_call*, %struct.afs_call** %20, align 8
  %56 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %55, i32 0, i32 4
  store %struct.afs_file_status* %54, %struct.afs_file_status** %56, align 8
  %57 = load %struct.afs_callback*, %struct.afs_callback** %18, align 8
  %58 = load %struct.afs_call*, %struct.afs_call** %20, align 8
  %59 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %58, i32 0, i32 3
  store %struct.afs_callback* %57, %struct.afs_callback** %59, align 8
  %60 = load i32, i32* @FS_SERVICE, align 4
  %61 = load %struct.afs_call*, %struct.afs_call** %20, align 8
  %62 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @AFS_FS_PORT, align 4
  %64 = call i32 @htons(i32 %63)
  %65 = load %struct.afs_call*, %struct.afs_call** %20, align 8
  %66 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.afs_call*, %struct.afs_call** %20, align 8
  %68 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %24, align 8
  %70 = load i64, i64* %15, align 8
  %71 = call i64 @S_ISDIR(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %44
  %74 = load i64, i64* @FSMAKEDIR, align 8
  br label %77

75:                                               ; preds = %44
  %76 = load i64, i64* @FSCREATEFILE, align 8
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i64 [ %74, %73 ], [ %76, %75 ]
  %79 = call i8* @htonl(i64 %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load i32*, i32** %24, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %24, align 8
  store i32 %80, i32* %81, align 4
  %83 = load %struct.afs_vnode*, %struct.afs_vnode** %13, align 8
  %84 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i8* @htonl(i64 %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = load i32*, i32** %24, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %24, align 8
  store i32 %88, i32* %89, align 4
  %91 = load %struct.afs_vnode*, %struct.afs_vnode** %13, align 8
  %92 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i8* @htonl(i64 %94)
  %96 = ptrtoint i8* %95 to i32
  %97 = load i32*, i32** %24, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %24, align 8
  store i32 %96, i32* %97, align 4
  %99 = load %struct.afs_vnode*, %struct.afs_vnode** %13, align 8
  %100 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = call i8* @htonl(i64 %102)
  %104 = ptrtoint i8* %103 to i32
  %105 = load i32*, i32** %24, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %24, align 8
  store i32 %104, i32* %105, align 4
  %107 = load i64, i64* %21, align 8
  %108 = call i8* @htonl(i64 %107)
  %109 = ptrtoint i8* %108 to i32
  %110 = load i32*, i32** %24, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %24, align 8
  store i32 %109, i32* %110, align 4
  %112 = load i32*, i32** %24, align 8
  %113 = load i8*, i8** %14, align 8
  %114 = load i64, i64* %21, align 8
  %115 = call i32 @memcpy(i32* %112, i8* %113, i64 %114)
  %116 = load i32*, i32** %24, align 8
  %117 = bitcast i32* %116 to i8*
  %118 = load i64, i64* %21, align 8
  %119 = getelementptr i8, i8* %117, i64 %118
  %120 = bitcast i8* %119 to i32*
  store i32* %120, i32** %24, align 8
  %121 = load i64, i64* %23, align 8
  %122 = icmp ugt i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %77
  %124 = load i32*, i32** %24, align 8
  %125 = load i64, i64* %23, align 8
  %126 = call i32 @memset(i32* %124, i32 0, i64 %125)
  %127 = load i32*, i32** %24, align 8
  %128 = bitcast i32* %127 to i8*
  %129 = load i64, i64* %23, align 8
  %130 = getelementptr i8, i8* %128, i64 %129
  %131 = bitcast i8* %130 to i32*
  store i32* %131, i32** %24, align 8
  br label %132

132:                                              ; preds = %123, %77
  %133 = load i64, i64* @AFS_SET_MODE, align 8
  %134 = call i8* @htonl(i64 %133)
  %135 = ptrtoint i8* %134 to i32
  %136 = load i32*, i32** %24, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %24, align 8
  store i32 %135, i32* %136, align 4
  %138 = load i32*, i32** %24, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %24, align 8
  store i32 0, i32* %138, align 4
  %140 = load i32*, i32** %24, align 8
  %141 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %141, i32** %24, align 8
  store i32 0, i32* %140, align 4
  %142 = load i32*, i32** %24, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %24, align 8
  store i32 0, i32* %142, align 4
  %144 = load i64, i64* %15, align 8
  %145 = load i64, i64* @S_IALLUGO, align 8
  %146 = and i64 %144, %145
  %147 = call i8* @htonl(i64 %146)
  %148 = ptrtoint i8* %147 to i32
  %149 = load i32*, i32** %24, align 8
  %150 = getelementptr inbounds i32, i32* %149, i32 1
  store i32* %150, i32** %24, align 8
  store i32 %148, i32* %149, align 4
  %151 = load i32*, i32** %24, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %152, i32** %24, align 8
  store i32 0, i32* %151, align 4
  %153 = load %struct.afs_server*, %struct.afs_server** %11, align 8
  %154 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %153, i32 0, i32 0
  %155 = load %struct.afs_call*, %struct.afs_call** %20, align 8
  %156 = load i32, i32* @GFP_NOFS, align 4
  %157 = load %struct.afs_wait_mode*, %struct.afs_wait_mode** %19, align 8
  %158 = call i32 @afs_make_call(i32* %154, %struct.afs_call* %155, i32 %156, %struct.afs_wait_mode* %157)
  store i32 %158, i32* %10, align 4
  br label %159

159:                                              ; preds = %132, %41
  %160 = load i32, i32* %10, align 4
  ret i32 %160
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(i32*, i64, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i64 @S_ISDIR(i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @afs_make_call(i32*, %struct.afs_call*, i32, %struct.afs_wait_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
