; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_server = type { i32 }
%struct.key = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.afs_wait_mode = type { i32 }
%struct.afs_call = type { i32*, i32, i32, %struct.afs_vnode*, %struct.afs_vnode*, %struct.key* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@afs_RXFSLink = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FS_SERVICE = common dso_local global i32 0, align 4
@AFS_FS_PORT = common dso_local global i32 0, align 4
@FSLINK = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_link(%struct.afs_server* %0, %struct.key* %1, %struct.afs_vnode* %2, %struct.afs_vnode* %3, i8* %4, %struct.afs_wait_mode* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.afs_server*, align 8
  %9 = alloca %struct.key*, align 8
  %10 = alloca %struct.afs_vnode*, align 8
  %11 = alloca %struct.afs_vnode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.afs_wait_mode*, align 8
  %14 = alloca %struct.afs_call*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  store %struct.afs_server* %0, %struct.afs_server** %8, align 8
  store %struct.key* %1, %struct.key** %9, align 8
  store %struct.afs_vnode* %2, %struct.afs_vnode** %10, align 8
  store %struct.afs_vnode* %3, %struct.afs_vnode** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.afs_wait_mode* %5, %struct.afs_wait_mode** %13, align 8
  %19 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %12, align 8
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
  %30 = add i64 %29, 12
  store i64 %30, i64* %16, align 8
  %31 = load i64, i64* %16, align 8
  %32 = call %struct.afs_call* @afs_alloc_flat_call(i32* @afs_RXFSLink, i64 %31, i32 192)
  store %struct.afs_call* %32, %struct.afs_call** %14, align 8
  %33 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %34 = icmp ne %struct.afs_call* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %6
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %143

38:                                               ; preds = %6
  %39 = load %struct.key*, %struct.key** %9, align 8
  %40 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %41 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %40, i32 0, i32 5
  store %struct.key* %39, %struct.key** %41, align 8
  %42 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %43 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %44 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %43, i32 0, i32 4
  store %struct.afs_vnode* %42, %struct.afs_vnode** %44, align 8
  %45 = load %struct.afs_vnode*, %struct.afs_vnode** %11, align 8
  %46 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %47 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %46, i32 0, i32 3
  store %struct.afs_vnode* %45, %struct.afs_vnode** %47, align 8
  %48 = load i32, i32* @FS_SERVICE, align 4
  %49 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %50 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @AFS_FS_PORT, align 4
  %52 = call i32 @htons(i32 %51)
  %53 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %54 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %56 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %18, align 8
  %58 = load i64, i64* @FSLINK, align 8
  %59 = call i8* @htonl(i64 %58)
  %60 = ptrtoint i8* %59 to i32
  %61 = load i32*, i32** %18, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %18, align 8
  store i32 %60, i32* %61, align 4
  %63 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %64 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i8* @htonl(i64 %66)
  %68 = ptrtoint i8* %67 to i32
  %69 = load i32*, i32** %18, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %18, align 8
  store i32 %68, i32* %69, align 4
  %71 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %72 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i8* @htonl(i64 %74)
  %76 = ptrtoint i8* %75 to i32
  %77 = load i32*, i32** %18, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %18, align 8
  store i32 %76, i32* %77, align 4
  %79 = load %struct.afs_vnode*, %struct.afs_vnode** %10, align 8
  %80 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = call i8* @htonl(i64 %82)
  %84 = ptrtoint i8* %83 to i32
  %85 = load i32*, i32** %18, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %18, align 8
  store i32 %84, i32* %85, align 4
  %87 = load i64, i64* %15, align 8
  %88 = call i8* @htonl(i64 %87)
  %89 = ptrtoint i8* %88 to i32
  %90 = load i32*, i32** %18, align 8
  %91 = getelementptr inbounds i32, i32* %90, i32 1
  store i32* %91, i32** %18, align 8
  store i32 %89, i32* %90, align 4
  %92 = load i32*, i32** %18, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = load i64, i64* %15, align 8
  %95 = call i32 @memcpy(i32* %92, i8* %93, i64 %94)
  %96 = load i32*, i32** %18, align 8
  %97 = bitcast i32* %96 to i8*
  %98 = load i64, i64* %15, align 8
  %99 = getelementptr i8, i8* %97, i64 %98
  %100 = bitcast i8* %99 to i32*
  store i32* %100, i32** %18, align 8
  %101 = load i64, i64* %17, align 8
  %102 = icmp ugt i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %38
  %104 = load i32*, i32** %18, align 8
  %105 = load i64, i64* %17, align 8
  %106 = call i32 @memset(i32* %104, i32 0, i64 %105)
  %107 = load i32*, i32** %18, align 8
  %108 = bitcast i32* %107 to i8*
  %109 = load i64, i64* %17, align 8
  %110 = getelementptr i8, i8* %108, i64 %109
  %111 = bitcast i8* %110 to i32*
  store i32* %111, i32** %18, align 8
  br label %112

112:                                              ; preds = %103, %38
  %113 = load %struct.afs_vnode*, %struct.afs_vnode** %11, align 8
  %114 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i8* @htonl(i64 %116)
  %118 = ptrtoint i8* %117 to i32
  %119 = load i32*, i32** %18, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %18, align 8
  store i32 %118, i32* %119, align 4
  %121 = load %struct.afs_vnode*, %struct.afs_vnode** %11, align 8
  %122 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i8* @htonl(i64 %124)
  %126 = ptrtoint i8* %125 to i32
  %127 = load i32*, i32** %18, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %18, align 8
  store i32 %126, i32* %127, align 4
  %129 = load %struct.afs_vnode*, %struct.afs_vnode** %11, align 8
  %130 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = call i8* @htonl(i64 %132)
  %134 = ptrtoint i8* %133 to i32
  %135 = load i32*, i32** %18, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %18, align 8
  store i32 %134, i32* %135, align 4
  %137 = load %struct.afs_server*, %struct.afs_server** %8, align 8
  %138 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %137, i32 0, i32 0
  %139 = load %struct.afs_call*, %struct.afs_call** %14, align 8
  %140 = load i32, i32* @GFP_NOFS, align 4
  %141 = load %struct.afs_wait_mode*, %struct.afs_wait_mode** %13, align 8
  %142 = call i32 @afs_make_call(i32* %138, %struct.afs_call* %139, i32 %140, %struct.afs_wait_mode* %141)
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %112, %35
  %144 = load i32, i32* %7, align 4
  ret i32 %144
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
