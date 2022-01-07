; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_readdir_add_to_array.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_readdir_add_to_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_entry = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.page = type { i32 }
%struct.nfs_cache_array = type { i64, i64, i32, %struct.nfs_cache_array_entry* }
%struct.nfs_cache_array_entry = type { i32, i32, i32, i32 }

@ENOSPC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_entry*, %struct.page*)* @nfs_readdir_add_to_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_readdir_add_to_array(%struct.nfs_entry* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_entry*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.nfs_cache_array*, align 8
  %7 = alloca %struct.nfs_cache_array_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.nfs_entry* %0, %struct.nfs_entry** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %9 = load %struct.page*, %struct.page** %5, align 8
  %10 = call %struct.nfs_cache_array* @nfs_readdir_get_array(%struct.page* %9)
  store %struct.nfs_cache_array* %10, %struct.nfs_cache_array** %6, align 8
  %11 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %6, align 8
  %12 = call i64 @IS_ERR(%struct.nfs_cache_array* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %6, align 8
  %16 = call i32 @PTR_ERR(%struct.nfs_cache_array* %15)
  store i32 %16, i32* %3, align 4
  br label %93

17:                                               ; preds = %2
  %18 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %6, align 8
  %19 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %18, i32 0, i32 3
  %20 = load %struct.nfs_cache_array_entry*, %struct.nfs_cache_array_entry** %19, align 8
  %21 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %6, align 8
  %22 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.nfs_cache_array_entry, %struct.nfs_cache_array_entry* %20, i64 %23
  store %struct.nfs_cache_array_entry* %24, %struct.nfs_cache_array_entry** %7, align 8
  %25 = load i32, i32* @ENOSPC, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  %27 = load %struct.nfs_cache_array_entry*, %struct.nfs_cache_array_entry** %7, align 8
  %28 = getelementptr inbounds %struct.nfs_cache_array_entry, %struct.nfs_cache_array_entry* %27, i64 1
  %29 = bitcast %struct.nfs_cache_array_entry* %28 to i8*
  %30 = load %struct.page*, %struct.page** %5, align 8
  %31 = call i64 @page_address(%struct.page* %30)
  %32 = inttoptr i64 %31 to i8*
  %33 = ptrtoint i8* %29 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp sgt i64 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %17
  br label %89

40:                                               ; preds = %17
  %41 = load %struct.nfs_entry*, %struct.nfs_entry** %4, align 8
  %42 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.nfs_cache_array_entry*, %struct.nfs_cache_array_entry** %7, align 8
  %45 = getelementptr inbounds %struct.nfs_cache_array_entry, %struct.nfs_cache_array_entry* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.nfs_entry*, %struct.nfs_entry** %4, align 8
  %47 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.nfs_cache_array_entry*, %struct.nfs_cache_array_entry** %7, align 8
  %50 = getelementptr inbounds %struct.nfs_cache_array_entry, %struct.nfs_cache_array_entry* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.nfs_entry*, %struct.nfs_entry** %4, align 8
  %52 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nfs_cache_array_entry*, %struct.nfs_cache_array_entry** %7, align 8
  %55 = getelementptr inbounds %struct.nfs_cache_array_entry, %struct.nfs_cache_array_entry* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.nfs_cache_array_entry*, %struct.nfs_cache_array_entry** %7, align 8
  %57 = getelementptr inbounds %struct.nfs_cache_array_entry, %struct.nfs_cache_array_entry* %56, i32 0, i32 0
  %58 = load %struct.nfs_entry*, %struct.nfs_entry** %4, align 8
  %59 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.nfs_entry*, %struct.nfs_entry** %4, align 8
  %62 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @nfs_readdir_make_qstr(i32* %57, i32 %60, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %40
  br label %89

68:                                               ; preds = %40
  %69 = load %struct.nfs_entry*, %struct.nfs_entry** %4, align 8
  %70 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %6, align 8
  %73 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %6, align 8
  %75 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %75, align 8
  %78 = load %struct.nfs_entry*, %struct.nfs_entry** %4, align 8
  %79 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %68
  %83 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %6, align 8
  %84 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %6, align 8
  %87 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %82, %68
  br label %89

89:                                               ; preds = %88, %67, %39
  %90 = load %struct.page*, %struct.page** %5, align 8
  %91 = call i32 @nfs_readdir_release_array(%struct.page* %90)
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %89, %14
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.nfs_cache_array* @nfs_readdir_get_array(%struct.page*) #1

declare dso_local i64 @IS_ERR(%struct.nfs_cache_array*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs_cache_array*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @nfs_readdir_make_qstr(i32*, i32, i32) #1

declare dso_local i32 @nfs_readdir_release_array(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
