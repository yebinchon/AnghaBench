; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_server = type { i32 }
%struct.key = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.afs_wait_mode = type { i32 }
%struct.afs_call = type { i32*, i32, i32, %struct.afs_vnode*, %struct.afs_vnode*, %struct.key* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@afs_RXFSRename = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FS_SERVICE = common dso_local global i32 0, align 4
@AFS_FS_PORT = common dso_local global i32 0, align 4
@FSRENAME = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_rename(%struct.afs_server* %0, %struct.key* %1, %struct.afs_vnode* %2, i8* %3, %struct.afs_vnode* %4, i8* %5, %struct.afs_wait_mode* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.afs_server*, align 8
  %10 = alloca %struct.key*, align 8
  %11 = alloca %struct.afs_vnode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.afs_vnode*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.afs_wait_mode*, align 8
  %16 = alloca %struct.afs_call*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  store %struct.afs_server* %0, %struct.afs_server** %9, align 8
  store %struct.key* %1, %struct.key** %10, align 8
  store %struct.afs_vnode* %2, %struct.afs_vnode** %11, align 8
  store i8* %3, i8** %12, align 8
  store %struct.afs_vnode* %4, %struct.afs_vnode** %13, align 8
  store i8* %5, i8** %14, align 8
  store %struct.afs_wait_mode* %6, %struct.afs_wait_mode** %15, align 8
  %23 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** %12, align 8
  %25 = call i64 @strlen(i8* %24)
  store i64 %25, i64* %18, align 8
  %26 = load i64, i64* %18, align 8
  %27 = and i64 %26, 3
  %28 = sub i64 4, %27
  %29 = and i64 %28, 3
  store i64 %29, i64* %19, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = call i64 @strlen(i8* %30)
  store i64 %31, i64* %20, align 8
  %32 = load i64, i64* %20, align 8
  %33 = and i64 %32, 3
  %34 = sub i64 4, %33
  %35 = and i64 %34, 3
  store i64 %35, i64* %21, align 8
  %36 = load i64, i64* %18, align 8
  %37 = add i64 20, %36
  %38 = load i64, i64* %19, align 8
  %39 = add i64 %37, %38
  %40 = add i64 %39, 12
  %41 = add i64 %40, 4
  %42 = load i64, i64* %20, align 8
  %43 = add i64 %41, %42
  %44 = load i64, i64* %21, align 8
  %45 = add i64 %43, %44
  store i64 %45, i64* %17, align 8
  %46 = load i64, i64* %17, align 8
  %47 = call %struct.afs_call* @afs_alloc_flat_call(i32* @afs_RXFSRename, i64 %46, i32 192)
  store %struct.afs_call* %47, %struct.afs_call** %16, align 8
  %48 = load %struct.afs_call*, %struct.afs_call** %16, align 8
  %49 = icmp ne %struct.afs_call* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %7
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %8, align 4
  br label %184

53:                                               ; preds = %7
  %54 = load %struct.key*, %struct.key** %10, align 8
  %55 = load %struct.afs_call*, %struct.afs_call** %16, align 8
  %56 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %55, i32 0, i32 5
  store %struct.key* %54, %struct.key** %56, align 8
  %57 = load %struct.afs_vnode*, %struct.afs_vnode** %11, align 8
  %58 = load %struct.afs_call*, %struct.afs_call** %16, align 8
  %59 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %58, i32 0, i32 4
  store %struct.afs_vnode* %57, %struct.afs_vnode** %59, align 8
  %60 = load %struct.afs_vnode*, %struct.afs_vnode** %13, align 8
  %61 = load %struct.afs_call*, %struct.afs_call** %16, align 8
  %62 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %61, i32 0, i32 3
  store %struct.afs_vnode* %60, %struct.afs_vnode** %62, align 8
  %63 = load i32, i32* @FS_SERVICE, align 4
  %64 = load %struct.afs_call*, %struct.afs_call** %16, align 8
  %65 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @AFS_FS_PORT, align 4
  %67 = call i32 @htons(i32 %66)
  %68 = load %struct.afs_call*, %struct.afs_call** %16, align 8
  %69 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.afs_call*, %struct.afs_call** %16, align 8
  %71 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %22, align 8
  %73 = load i64, i64* @FSRENAME, align 8
  %74 = call i8* @htonl(i64 %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = load i32*, i32** %22, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %22, align 8
  store i32 %75, i32* %76, align 4
  %78 = load %struct.afs_vnode*, %struct.afs_vnode** %11, align 8
  %79 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i8* @htonl(i64 %81)
  %83 = ptrtoint i8* %82 to i32
  %84 = load i32*, i32** %22, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %22, align 8
  store i32 %83, i32* %84, align 4
  %86 = load %struct.afs_vnode*, %struct.afs_vnode** %11, align 8
  %87 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call i8* @htonl(i64 %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load i32*, i32** %22, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %22, align 8
  store i32 %91, i32* %92, align 4
  %94 = load %struct.afs_vnode*, %struct.afs_vnode** %11, align 8
  %95 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = call i8* @htonl(i64 %97)
  %99 = ptrtoint i8* %98 to i32
  %100 = load i32*, i32** %22, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %22, align 8
  store i32 %99, i32* %100, align 4
  %102 = load i64, i64* %18, align 8
  %103 = call i8* @htonl(i64 %102)
  %104 = ptrtoint i8* %103 to i32
  %105 = load i32*, i32** %22, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %22, align 8
  store i32 %104, i32* %105, align 4
  %107 = load i32*, i32** %22, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = load i64, i64* %18, align 8
  %110 = call i32 @memcpy(i32* %107, i8* %108, i64 %109)
  %111 = load i32*, i32** %22, align 8
  %112 = bitcast i32* %111 to i8*
  %113 = load i64, i64* %18, align 8
  %114 = getelementptr i8, i8* %112, i64 %113
  %115 = bitcast i8* %114 to i32*
  store i32* %115, i32** %22, align 8
  %116 = load i64, i64* %19, align 8
  %117 = icmp ugt i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %53
  %119 = load i32*, i32** %22, align 8
  %120 = load i64, i64* %19, align 8
  %121 = call i32 @memset(i32* %119, i32 0, i64 %120)
  %122 = load i32*, i32** %22, align 8
  %123 = bitcast i32* %122 to i8*
  %124 = load i64, i64* %19, align 8
  %125 = getelementptr i8, i8* %123, i64 %124
  %126 = bitcast i8* %125 to i32*
  store i32* %126, i32** %22, align 8
  br label %127

127:                                              ; preds = %118, %53
  %128 = load %struct.afs_vnode*, %struct.afs_vnode** %13, align 8
  %129 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i8* @htonl(i64 %131)
  %133 = ptrtoint i8* %132 to i32
  %134 = load i32*, i32** %22, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %22, align 8
  store i32 %133, i32* %134, align 4
  %136 = load %struct.afs_vnode*, %struct.afs_vnode** %13, align 8
  %137 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = call i8* @htonl(i64 %139)
  %141 = ptrtoint i8* %140 to i32
  %142 = load i32*, i32** %22, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %22, align 8
  store i32 %141, i32* %142, align 4
  %144 = load %struct.afs_vnode*, %struct.afs_vnode** %13, align 8
  %145 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = call i8* @htonl(i64 %147)
  %149 = ptrtoint i8* %148 to i32
  %150 = load i32*, i32** %22, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %22, align 8
  store i32 %149, i32* %150, align 4
  %152 = load i64, i64* %20, align 8
  %153 = call i8* @htonl(i64 %152)
  %154 = ptrtoint i8* %153 to i32
  %155 = load i32*, i32** %22, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %22, align 8
  store i32 %154, i32* %155, align 4
  %157 = load i32*, i32** %22, align 8
  %158 = load i8*, i8** %14, align 8
  %159 = load i64, i64* %20, align 8
  %160 = call i32 @memcpy(i32* %157, i8* %158, i64 %159)
  %161 = load i32*, i32** %22, align 8
  %162 = bitcast i32* %161 to i8*
  %163 = load i64, i64* %20, align 8
  %164 = getelementptr i8, i8* %162, i64 %163
  %165 = bitcast i8* %164 to i32*
  store i32* %165, i32** %22, align 8
  %166 = load i64, i64* %21, align 8
  %167 = icmp ugt i64 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %127
  %169 = load i32*, i32** %22, align 8
  %170 = load i64, i64* %21, align 8
  %171 = call i32 @memset(i32* %169, i32 0, i64 %170)
  %172 = load i32*, i32** %22, align 8
  %173 = bitcast i32* %172 to i8*
  %174 = load i64, i64* %21, align 8
  %175 = getelementptr i8, i8* %173, i64 %174
  %176 = bitcast i8* %175 to i32*
  store i32* %176, i32** %22, align 8
  br label %177

177:                                              ; preds = %168, %127
  %178 = load %struct.afs_server*, %struct.afs_server** %9, align 8
  %179 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %178, i32 0, i32 0
  %180 = load %struct.afs_call*, %struct.afs_call** %16, align 8
  %181 = load i32, i32* @GFP_NOFS, align 4
  %182 = load %struct.afs_wait_mode*, %struct.afs_wait_mode** %15, align 8
  %183 = call i32 @afs_make_call(i32* %179, %struct.afs_call* %180, i32 %181, %struct.afs_wait_mode* %182)
  store i32 %183, i32* %8, align 4
  br label %184

184:                                              ; preds = %177, %50
  %185 = load i32, i32* %8, align 4
  ret i32 %185
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
