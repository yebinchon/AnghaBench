; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_fetch_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_fsclient.c_afs_fs_fetch_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_server = type { i32 }
%struct.key = type { i32 }
%struct.afs_vnode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.page = type { i32 }
%struct.afs_wait_mode = type { i32 }
%struct.afs_call = type { i64, i32*, i32, i32, %struct.page*, i32*, %struct.afs_vnode*, %struct.key* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@afs_RXFSFetchData = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FS_SERVICE = common dso_local global i32 0, align 4
@AFS_FS_PORT = common dso_local global i32 0, align 4
@FSFETCHDATA = common dso_local global i64 0, align 8
@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_fs_fetch_data(%struct.afs_server* %0, %struct.key* %1, %struct.afs_vnode* %2, i64 %3, i64 %4, %struct.page* %5, %struct.afs_wait_mode* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.afs_server*, align 8
  %10 = alloca %struct.key*, align 8
  %11 = alloca %struct.afs_vnode*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.afs_wait_mode*, align 8
  %16 = alloca %struct.afs_call*, align 8
  %17 = alloca i32*, align 8
  store %struct.afs_server* %0, %struct.afs_server** %9, align 8
  store %struct.key* %1, %struct.key** %10, align 8
  store %struct.afs_vnode* %2, %struct.afs_vnode** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.page* %5, %struct.page** %14, align 8
  store %struct.afs_wait_mode* %6, %struct.afs_wait_mode** %15, align 8
  %18 = load i64, i64* %12, align 8
  %19 = call i64 @upper_32_bits(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %7
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* %13, align 8
  %24 = add i64 %22, %23
  %25 = call i64 @upper_32_bits(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %21, %7
  %28 = load %struct.afs_server*, %struct.afs_server** %9, align 8
  %29 = load %struct.key*, %struct.key** %10, align 8
  %30 = load %struct.afs_vnode*, %struct.afs_vnode** %11, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* %13, align 8
  %33 = load %struct.page*, %struct.page** %14, align 8
  %34 = load %struct.afs_wait_mode*, %struct.afs_wait_mode** %15, align 8
  %35 = call i32 @afs_fs_fetch_data64(%struct.afs_server* %28, %struct.key* %29, %struct.afs_vnode* %30, i64 %31, i64 %32, %struct.page* %33, %struct.afs_wait_mode* %34)
  store i32 %35, i32* %8, align 4
  br label %108

36:                                               ; preds = %21
  %37 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %38 = call %struct.afs_call* @afs_alloc_flat_call(i32* @afs_RXFSFetchData, i32 24, i32 120)
  store %struct.afs_call* %38, %struct.afs_call** %16, align 8
  %39 = load %struct.afs_call*, %struct.afs_call** %16, align 8
  %40 = icmp ne %struct.afs_call* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %108

44:                                               ; preds = %36
  %45 = load %struct.key*, %struct.key** %10, align 8
  %46 = load %struct.afs_call*, %struct.afs_call** %16, align 8
  %47 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %46, i32 0, i32 7
  store %struct.key* %45, %struct.key** %47, align 8
  %48 = load %struct.afs_vnode*, %struct.afs_vnode** %11, align 8
  %49 = load %struct.afs_call*, %struct.afs_call** %16, align 8
  %50 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %49, i32 0, i32 6
  store %struct.afs_vnode* %48, %struct.afs_vnode** %50, align 8
  %51 = load %struct.afs_call*, %struct.afs_call** %16, align 8
  %52 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %51, i32 0, i32 5
  store i32* null, i32** %52, align 8
  %53 = load %struct.page*, %struct.page** %14, align 8
  %54 = load %struct.afs_call*, %struct.afs_call** %16, align 8
  %55 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %54, i32 0, i32 4
  store %struct.page* %53, %struct.page** %55, align 8
  %56 = load i32, i32* @FS_SERVICE, align 4
  %57 = load %struct.afs_call*, %struct.afs_call** %16, align 8
  %58 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @AFS_FS_PORT, align 4
  %60 = call i32 @htons(i32 %59)
  %61 = load %struct.afs_call*, %struct.afs_call** %16, align 8
  %62 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load i64, i64* @FSFETCHDATA, align 8
  %64 = load %struct.afs_call*, %struct.afs_call** %16, align 8
  %65 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.afs_call*, %struct.afs_call** %16, align 8
  %67 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %17, align 8
  %69 = load i64, i64* @FSFETCHDATA, align 8
  %70 = call i32 @htonl(i64 %69)
  %71 = load i32*, i32** %17, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.afs_vnode*, %struct.afs_vnode** %11, align 8
  %74 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @htonl(i64 %76)
  %78 = load i32*, i32** %17, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.afs_vnode*, %struct.afs_vnode** %11, align 8
  %81 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @htonl(i64 %83)
  %85 = load i32*, i32** %17, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  store i32 %84, i32* %86, align 4
  %87 = load %struct.afs_vnode*, %struct.afs_vnode** %11, align 8
  %88 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @htonl(i64 %90)
  %92 = load i32*, i32** %17, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  store i32 %91, i32* %93, align 4
  %94 = load i64, i64* %12, align 8
  %95 = call i32 @htonl(i64 %94)
  %96 = load i32*, i32** %17, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  store i32 %95, i32* %97, align 4
  %98 = load i64, i64* %13, align 8
  %99 = call i32 @htonl(i64 %98)
  %100 = load i32*, i32** %17, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 5
  store i32 %99, i32* %101, align 4
  %102 = load %struct.afs_server*, %struct.afs_server** %9, align 8
  %103 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %102, i32 0, i32 0
  %104 = load %struct.afs_call*, %struct.afs_call** %16, align 8
  %105 = load i32, i32* @GFP_NOFS, align 4
  %106 = load %struct.afs_wait_mode*, %struct.afs_wait_mode** %15, align 8
  %107 = call i32 @afs_make_call(i32* %103, %struct.afs_call* %104, i32 %105, %struct.afs_wait_mode* %106)
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %44, %41, %27
  %109 = load i32, i32* %8, align 4
  ret i32 %109
}

declare dso_local i64 @upper_32_bits(i64) #1

declare dso_local i32 @afs_fs_fetch_data64(%struct.afs_server*, %struct.key*, %struct.afs_vnode*, i64, i64, %struct.page*, %struct.afs_wait_mode*) #1

declare dso_local i32 @_enter(i8*) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(i32*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i32 @afs_make_call(i32*, %struct.afs_call*, i32, %struct.afs_wait_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
