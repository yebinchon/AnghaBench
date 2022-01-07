; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_vlclient.c_afs_vl_get_entry_by_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_vlclient.c_afs_vl_get_entry_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.key = type { i32 }
%struct.afs_cache_vlocation = type { i32 }
%struct.afs_wait_mode = type { i32 }
%struct.afs_call = type { i32*, i32, i32, %struct.afs_cache_vlocation*, %struct.key* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@afs_RXVLGetEntryByName = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VL_SERVICE = common dso_local global i32 0, align 4
@AFS_VL_PORT = common dso_local global i32 0, align 4
@VLGETENTRYBYNAME = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_vl_get_entry_by_name(%struct.in_addr* %0, %struct.key* %1, i8* %2, %struct.afs_cache_vlocation* %3, %struct.afs_wait_mode* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.in_addr*, align 8
  %8 = alloca %struct.key*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.afs_cache_vlocation*, align 8
  %11 = alloca %struct.afs_wait_mode*, align 8
  %12 = alloca %struct.afs_call*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store %struct.in_addr* %0, %struct.in_addr** %7, align 8
  store %struct.key* %1, %struct.key** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.afs_cache_vlocation* %3, %struct.afs_cache_vlocation** %10, align 8
  store %struct.afs_wait_mode* %4, %struct.afs_wait_mode** %11, align 8
  %17 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %18 = load i8*, i8** %9, align 8
  %19 = call i64 @strlen(i8* %18)
  store i64 %19, i64* %13, align 8
  %20 = load i64, i64* %13, align 8
  %21 = and i64 %20, 3
  %22 = sub i64 4, %21
  %23 = and i64 %22, 3
  store i64 %23, i64* %15, align 8
  %24 = load i64, i64* %13, align 8
  %25 = add i64 8, %24
  %26 = load i64, i64* %15, align 8
  %27 = add i64 %25, %26
  store i64 %27, i64* %14, align 8
  %28 = load i64, i64* %14, align 8
  %29 = call %struct.afs_call* @afs_alloc_flat_call(i32* @afs_RXVLGetEntryByName, i64 %28, i32 384)
  store %struct.afs_call* %29, %struct.afs_call** %12, align 8
  %30 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %31 = icmp ne %struct.afs_call* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %5
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %81

35:                                               ; preds = %5
  %36 = load %struct.key*, %struct.key** %8, align 8
  %37 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %38 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %37, i32 0, i32 4
  store %struct.key* %36, %struct.key** %38, align 8
  %39 = load %struct.afs_cache_vlocation*, %struct.afs_cache_vlocation** %10, align 8
  %40 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %41 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %40, i32 0, i32 3
  store %struct.afs_cache_vlocation* %39, %struct.afs_cache_vlocation** %41, align 8
  %42 = load i32, i32* @VL_SERVICE, align 4
  %43 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %44 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @AFS_VL_PORT, align 4
  %46 = call i32 @htons(i32 %45)
  %47 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %48 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %50 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %16, align 8
  %52 = load i64, i64* @VLGETENTRYBYNAME, align 8
  %53 = call i8* @htonl(i64 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = load i32*, i32** %16, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %16, align 8
  store i32 %54, i32* %55, align 4
  %57 = load i64, i64* %13, align 8
  %58 = call i8* @htonl(i64 %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = load i32*, i32** %16, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %16, align 8
  store i32 %59, i32* %60, align 4
  %62 = load i32*, i32** %16, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load i64, i64* %13, align 8
  %65 = call i32 @memcpy(i32* %62, i8* %63, i64 %64)
  %66 = load i64, i64* %15, align 8
  %67 = icmp ugt i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %35
  %69 = load i32*, i32** %16, align 8
  %70 = bitcast i32* %69 to i8*
  %71 = load i64, i64* %13, align 8
  %72 = getelementptr i8, i8* %70, i64 %71
  %73 = load i64, i64* %15, align 8
  %74 = call i32 @memset(i8* %72, i32 0, i64 %73)
  br label %75

75:                                               ; preds = %68, %35
  %76 = load %struct.in_addr*, %struct.in_addr** %7, align 8
  %77 = load %struct.afs_call*, %struct.afs_call** %12, align 8
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = load %struct.afs_wait_mode*, %struct.afs_wait_mode** %11, align 8
  %80 = call i32 @afs_make_call(%struct.in_addr* %76, %struct.afs_call* %77, i32 %78, %struct.afs_wait_mode* %79)
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %75, %32
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.afs_call* @afs_alloc_flat_call(i32*, i64, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @afs_make_call(%struct.in_addr*, %struct.afs_call*, i32, %struct.afs_wait_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
