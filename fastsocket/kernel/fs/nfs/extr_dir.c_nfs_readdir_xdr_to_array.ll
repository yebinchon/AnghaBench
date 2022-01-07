; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_readdir_xdr_to_array.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_readdir_xdr_to_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.file* }
%struct.file = type { i32 }
%struct.page = type { i32 }
%struct.inode = type { i32 }
%struct.nfs_entry = type { i32*, i32*, i64, i32, i64 }
%struct.nfs_cache_array = type { i32 }

@NFS_MAX_READDIR_PAGES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.page*, %struct.inode*)* @nfs_readdir_xdr_to_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_readdir_xdr_to_array(%struct.TYPE_5__* %0, %struct.page* %1, %struct.inode* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.nfs_entry, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca %struct.nfs_cache_array*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  store %struct.inode* %2, %struct.inode** %6, align 8
  %16 = load i32, i32* @NFS_MAX_READDIR_PAGES, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca %struct.page*, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  store i8* null, i8** %9, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load %struct.file*, %struct.file** %21, align 8
  store %struct.file* %22, %struct.file** %11, align 8
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %13, align 4
  %25 = call i32 @ARRAY_SIZE(%struct.page** %19)
  store i32 %25, i32* %14, align 4
  %26 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %10, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %10, i32 0, i32 3
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %10, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = call i32* (...) @nfs_alloc_fhandle()
  %33 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %10, i32 0, i32 0
  store i32* %32, i32** %33, align 8
  %34 = call i32* (...) @nfs_alloc_fattr()
  %35 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %10, i32 0, i32 1
  store i32* %34, i32** %35, align 8
  %36 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %10, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %10, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %3
  br label %100

44:                                               ; preds = %39
  %45 = load %struct.page*, %struct.page** %5, align 8
  %46 = call %struct.nfs_cache_array* @nfs_readdir_get_array(%struct.page* %45)
  store %struct.nfs_cache_array* %46, %struct.nfs_cache_array** %12, align 8
  %47 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %12, align 8
  %48 = call i64 @IS_ERR(%struct.nfs_cache_array* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %12, align 8
  %52 = call i32 @PTR_ERR(%struct.nfs_cache_array* %51)
  store i32 %52, i32* %13, align 4
  br label %100

53:                                               ; preds = %44
  %54 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %12, align 8
  %55 = call i32 @memset(%struct.nfs_cache_array* %54, i32 0, i32 4)
  %56 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %12, align 8
  %57 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %56, i32 0, i32 0
  store i32 -1, i32* %57, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @nfs_readdir_large_page(%struct.page** %19, i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %97

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %88, %63
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %66 = load %struct.file*, %struct.file** %11, align 8
  %67 = load %struct.inode*, %struct.inode** %6, align 8
  %68 = call i32 @nfs_readdir_xdr_filler(%struct.page** %19, %struct.TYPE_5__* %65, %struct.nfs_entry* %10, %struct.file* %66, %struct.inode* %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %93

72:                                               ; preds = %64
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %15, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = load %struct.page*, %struct.page** %5, align 8
  %76 = load i32, i32* %15, align 4
  %77 = call i32 @nfs_readdir_page_filler(%struct.TYPE_5__* %74, %struct.nfs_entry* %10, %struct.page** %19, %struct.page* %75, i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %72
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @ENOSPC, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 0, i32* %13, align 4
  br label %86

86:                                               ; preds = %85, %80
  br label %93

87:                                               ; preds = %72
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %12, align 8
  %90 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %64, label %93

93:                                               ; preds = %88, %86, %71
  %94 = load i8*, i8** %9, align 8
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @nfs_readdir_free_large_page(i8* %94, %struct.page** %19, i32 %95)
  br label %97

97:                                               ; preds = %93, %62
  %98 = load %struct.page*, %struct.page** %5, align 8
  %99 = call i32 @nfs_readdir_release_array(%struct.page* %98)
  br label %100

100:                                              ; preds = %97, %50, %43
  %101 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %10, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @nfs_free_fattr(i32* %102)
  %104 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %10, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @nfs_free_fhandle(i32* %105)
  %107 = load i32, i32* %13, align 4
  %108 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %108)
  ret i32 %107
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ARRAY_SIZE(%struct.page**) #2

declare dso_local i32* @nfs_alloc_fhandle(...) #2

declare dso_local i32* @nfs_alloc_fattr(...) #2

declare dso_local %struct.nfs_cache_array* @nfs_readdir_get_array(%struct.page*) #2

declare dso_local i64 @IS_ERR(%struct.nfs_cache_array*) #2

declare dso_local i32 @PTR_ERR(%struct.nfs_cache_array*) #2

declare dso_local i32 @memset(%struct.nfs_cache_array*, i32, i32) #2

declare dso_local i32 @nfs_readdir_large_page(%struct.page**, i32) #2

declare dso_local i32 @nfs_readdir_xdr_filler(%struct.page**, %struct.TYPE_5__*, %struct.nfs_entry*, %struct.file*, %struct.inode*) #2

declare dso_local i32 @nfs_readdir_page_filler(%struct.TYPE_5__*, %struct.nfs_entry*, %struct.page**, %struct.page*, i32) #2

declare dso_local i32 @nfs_readdir_free_large_page(i8*, %struct.page**, i32) #2

declare dso_local i32 @nfs_readdir_release_array(%struct.page*) #2

declare dso_local i32 @nfs_free_fattr(i32*) #2

declare dso_local i32 @nfs_free_fhandle(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
