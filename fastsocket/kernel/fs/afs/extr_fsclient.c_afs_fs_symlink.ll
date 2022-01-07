; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_server = type { i32 }
%struct.key = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.afs_fid = type { i32 }
%struct.afs_file_status = type { i32 }
%struct.afs_wait_mode = type { i32 }
%struct.afs_call = type { i32*, i32, i32, %struct.afs_file_status*, %struct.afs_fid*, %struct.afs_vnode*, %struct.key* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@afs_RXFSSymlink = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FS_SERVICE = common dso_local global i32 0, align 4
@AFS_FS_PORT = common dso_local global i32 0, align 4
@FSSYMLINK = common dso_local global i64 0, align 8
@AFS_SET_MODE = common dso_local global i64 0, align 8
@S_IRWXUGO = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_symlink(%struct.afs_server* %0, %struct.key* %1, %struct.afs_vnode* %2, i8* %3, i8* %4, %struct.afs_fid* %5, %struct.afs_file_status* %6, %struct.afs_wait_mode* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.afs_server*, align 8
  %11 = alloca %struct.key*, align 8
  %12 = alloca %struct.afs_vnode*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.afs_fid*, align 8
  %16 = alloca %struct.afs_file_status*, align 8
  %17 = alloca %struct.afs_wait_mode*, align 8
  %18 = alloca %struct.afs_call*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  store %struct.afs_server* %0, %struct.afs_server** %10, align 8
  store %struct.key* %1, %struct.key** %11, align 8
  store %struct.afs_vnode* %2, %struct.afs_vnode** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store %struct.afs_fid* %5, %struct.afs_fid** %15, align 8
  store %struct.afs_file_status* %6, %struct.afs_file_status** %16, align 8
  store %struct.afs_wait_mode* %7, %struct.afs_wait_mode** %17, align 8
  %25 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %26 = load i8*, i8** %13, align 8
  %27 = call i64 @strlen(i8* %26)
  store i64 %27, i64* %19, align 8
  %28 = load i64, i64* %19, align 8
  %29 = and i64 %28, 3
  %30 = sub i64 4, %29
  %31 = and i64 %30, 3
  store i64 %31, i64* %21, align 8
  %32 = load i8*, i8** %14, align 8
  %33 = call i64 @strlen(i8* %32)
  store i64 %33, i64* %22, align 8
  %34 = load i64, i64* %22, align 8
  %35 = and i64 %34, 3
  %36 = sub i64 4, %35
  %37 = and i64 %36, 3
  store i64 %37, i64* %23, align 8
  %38 = load i64, i64* %19, align 8
  %39 = add i64 24, %38
  %40 = load i64, i64* %21, align 8
  %41 = add i64 %39, %40
  %42 = load i64, i64* %22, align 8
  %43 = add i64 %41, %42
  %44 = load i64, i64* %23, align 8
  %45 = add i64 %43, %44
  %46 = add i64 %45, 24
  store i64 %46, i64* %20, align 8
  %47 = load i64, i64* %20, align 8
  %48 = call %struct.afs_call* @afs_alloc_flat_call(i32* @afs_RXFSSymlink, i64 %47, i32 204)
  store %struct.afs_call* %48, %struct.afs_call** %18, align 8
  %49 = load %struct.afs_call*, %struct.afs_call** %18, align 8
  %50 = icmp ne %struct.afs_call* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %8
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %9, align 4
  br label %182

54:                                               ; preds = %8
  %55 = load %struct.key*, %struct.key** %11, align 8
  %56 = load %struct.afs_call*, %struct.afs_call** %18, align 8
  %57 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %56, i32 0, i32 6
  store %struct.key* %55, %struct.key** %57, align 8
  %58 = load %struct.afs_vnode*, %struct.afs_vnode** %12, align 8
  %59 = load %struct.afs_call*, %struct.afs_call** %18, align 8
  %60 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %59, i32 0, i32 5
  store %struct.afs_vnode* %58, %struct.afs_vnode** %60, align 8
  %61 = load %struct.afs_fid*, %struct.afs_fid** %15, align 8
  %62 = load %struct.afs_call*, %struct.afs_call** %18, align 8
  %63 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %62, i32 0, i32 4
  store %struct.afs_fid* %61, %struct.afs_fid** %63, align 8
  %64 = load %struct.afs_file_status*, %struct.afs_file_status** %16, align 8
  %65 = load %struct.afs_call*, %struct.afs_call** %18, align 8
  %66 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %65, i32 0, i32 3
  store %struct.afs_file_status* %64, %struct.afs_file_status** %66, align 8
  %67 = load i32, i32* @FS_SERVICE, align 4
  %68 = load %struct.afs_call*, %struct.afs_call** %18, align 8
  %69 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @AFS_FS_PORT, align 4
  %71 = call i32 @htons(i32 %70)
  %72 = load %struct.afs_call*, %struct.afs_call** %18, align 8
  %73 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.afs_call*, %struct.afs_call** %18, align 8
  %75 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %24, align 8
  %77 = load i64, i64* @FSSYMLINK, align 8
  %78 = call i8* @htonl(i64 %77)
  %79 = ptrtoint i8* %78 to i32
  %80 = load i32*, i32** %24, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %24, align 8
  store i32 %79, i32* %80, align 4
  %82 = load %struct.afs_vnode*, %struct.afs_vnode** %12, align 8
  %83 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i8* @htonl(i64 %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = load i32*, i32** %24, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %24, align 8
  store i32 %87, i32* %88, align 4
  %90 = load %struct.afs_vnode*, %struct.afs_vnode** %12, align 8
  %91 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i8* @htonl(i64 %93)
  %95 = ptrtoint i8* %94 to i32
  %96 = load i32*, i32** %24, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %24, align 8
  store i32 %95, i32* %96, align 4
  %98 = load %struct.afs_vnode*, %struct.afs_vnode** %12, align 8
  %99 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = call i8* @htonl(i64 %101)
  %103 = ptrtoint i8* %102 to i32
  %104 = load i32*, i32** %24, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %24, align 8
  store i32 %103, i32* %104, align 4
  %106 = load i64, i64* %19, align 8
  %107 = call i8* @htonl(i64 %106)
  %108 = ptrtoint i8* %107 to i32
  %109 = load i32*, i32** %24, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %24, align 8
  store i32 %108, i32* %109, align 4
  %111 = load i32*, i32** %24, align 8
  %112 = load i8*, i8** %13, align 8
  %113 = load i64, i64* %19, align 8
  %114 = call i32 @memcpy(i32* %111, i8* %112, i64 %113)
  %115 = load i32*, i32** %24, align 8
  %116 = bitcast i32* %115 to i8*
  %117 = load i64, i64* %19, align 8
  %118 = getelementptr i8, i8* %116, i64 %117
  %119 = bitcast i8* %118 to i32*
  store i32* %119, i32** %24, align 8
  %120 = load i64, i64* %21, align 8
  %121 = icmp ugt i64 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %54
  %123 = load i32*, i32** %24, align 8
  %124 = load i64, i64* %21, align 8
  %125 = call i32 @memset(i32* %123, i32 0, i64 %124)
  %126 = load i32*, i32** %24, align 8
  %127 = bitcast i32* %126 to i8*
  %128 = load i64, i64* %21, align 8
  %129 = getelementptr i8, i8* %127, i64 %128
  %130 = bitcast i8* %129 to i32*
  store i32* %130, i32** %24, align 8
  br label %131

131:                                              ; preds = %122, %54
  %132 = load i64, i64* %22, align 8
  %133 = call i8* @htonl(i64 %132)
  %134 = ptrtoint i8* %133 to i32
  %135 = load i32*, i32** %24, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %24, align 8
  store i32 %134, i32* %135, align 4
  %137 = load i32*, i32** %24, align 8
  %138 = load i8*, i8** %14, align 8
  %139 = load i64, i64* %22, align 8
  %140 = call i32 @memcpy(i32* %137, i8* %138, i64 %139)
  %141 = load i32*, i32** %24, align 8
  %142 = bitcast i32* %141 to i8*
  %143 = load i64, i64* %22, align 8
  %144 = getelementptr i8, i8* %142, i64 %143
  %145 = bitcast i8* %144 to i32*
  store i32* %145, i32** %24, align 8
  %146 = load i64, i64* %23, align 8
  %147 = icmp ugt i64 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %131
  %149 = load i32*, i32** %24, align 8
  %150 = load i64, i64* %23, align 8
  %151 = call i32 @memset(i32* %149, i32 0, i64 %150)
  %152 = load i32*, i32** %24, align 8
  %153 = bitcast i32* %152 to i8*
  %154 = load i64, i64* %23, align 8
  %155 = getelementptr i8, i8* %153, i64 %154
  %156 = bitcast i8* %155 to i32*
  store i32* %156, i32** %24, align 8
  br label %157

157:                                              ; preds = %148, %131
  %158 = load i64, i64* @AFS_SET_MODE, align 8
  %159 = call i8* @htonl(i64 %158)
  %160 = ptrtoint i8* %159 to i32
  %161 = load i32*, i32** %24, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %162, i32** %24, align 8
  store i32 %160, i32* %161, align 4
  %163 = load i32*, i32** %24, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %24, align 8
  store i32 0, i32* %163, align 4
  %165 = load i32*, i32** %24, align 8
  %166 = getelementptr inbounds i32, i32* %165, i32 1
  store i32* %166, i32** %24, align 8
  store i32 0, i32* %165, align 4
  %167 = load i32*, i32** %24, align 8
  %168 = getelementptr inbounds i32, i32* %167, i32 1
  store i32* %168, i32** %24, align 8
  store i32 0, i32* %167, align 4
  %169 = load i64, i64* @S_IRWXUGO, align 8
  %170 = call i8* @htonl(i64 %169)
  %171 = ptrtoint i8* %170 to i32
  %172 = load i32*, i32** %24, align 8
  %173 = getelementptr inbounds i32, i32* %172, i32 1
  store i32* %173, i32** %24, align 8
  store i32 %171, i32* %172, align 4
  %174 = load i32*, i32** %24, align 8
  %175 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %175, i32** %24, align 8
  store i32 0, i32* %174, align 4
  %176 = load %struct.afs_server*, %struct.afs_server** %10, align 8
  %177 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %176, i32 0, i32 0
  %178 = load %struct.afs_call*, %struct.afs_call** %18, align 8
  %179 = load i32, i32* @GFP_NOFS, align 4
  %180 = load %struct.afs_wait_mode*, %struct.afs_wait_mode** %17, align 8
  %181 = call i32 @afs_make_call(i32* %177, %struct.afs_call* %178, i32 %179, %struct.afs_wait_mode* %180)
  store i32 %181, i32* %9, align 4
  br label %182

182:                                              ; preds = %157, %51
  %183 = load i32, i32* %9, align 4
  ret i32 %183
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
