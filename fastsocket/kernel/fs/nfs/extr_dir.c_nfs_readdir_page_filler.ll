; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_readdir_page_filler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_dir.c_nfs_readdir_page_filler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.nfs_entry = type { i64 }
%struct.page = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.xdr_buf = type { i32, i32, i32, %struct.page** }
%struct.nfs_cache_array = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EBADCOOKIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.nfs_entry*, %struct.page**, %struct.page*, i32)* @nfs_readdir_page_filler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_readdir_page_filler(%struct.TYPE_8__* %0, %struct.nfs_entry* %1, %struct.page** %2, %struct.page* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.nfs_entry*, align 8
  %9 = alloca %struct.page**, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xdr_stream, align 4
  %13 = alloca %struct.xdr_buf, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.nfs_cache_array*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store %struct.nfs_entry* %1, %struct.nfs_entry** %8, align 8
  store %struct.page** %2, %struct.page*** %9, align 8
  store %struct.page* %3, %struct.page** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %13, i32 0, i32 0
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %13, i32 0, i32 1
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %13, i32 0, i32 2
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %22, align 8
  %24 = getelementptr inbounds %struct.xdr_buf, %struct.xdr_buf* %13, i32 0, i32 3
  %25 = load %struct.page**, %struct.page*** %9, align 8
  store %struct.page** %25, %struct.page*** %24, align 8
  store i32 0, i32* %16, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.page* @alloc_page(i32 %26)
  store %struct.page* %27, %struct.page** %14, align 8
  %28 = load %struct.page*, %struct.page** %14, align 8
  %29 = icmp eq %struct.page* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %117

33:                                               ; preds = %5
  %34 = call i32 @xdr_init_decode(%struct.xdr_stream* %12, %struct.xdr_buf* %13, i32* null)
  %35 = load %struct.page*, %struct.page** %14, align 8
  %36 = call i32 @page_address(%struct.page* %35)
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = call i32 @xdr_set_scratch_buffer(%struct.xdr_stream* %12, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %76, %33
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = load %struct.nfs_entry*, %struct.nfs_entry** %8, align 8
  %42 = call i32 @xdr_decode(%struct.TYPE_8__* %40, %struct.nfs_entry* %41, %struct.xdr_stream* %12)
  store i32 %42, i32* %17, align 4
  %43 = load i32, i32* %17, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* @EAGAIN, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %17, align 4
  br label %51

51:                                               ; preds = %50, %45
  br label %82

52:                                               ; preds = %39
  %53 = load i32, i32* %16, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %16, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %52
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.nfs_entry*, %struct.nfs_entry** %8, align 8
  %67 = call i32 @nfs_prime_dcache(i32 %65, %struct.nfs_entry* %66)
  br label %68

68:                                               ; preds = %59, %52
  %69 = load %struct.nfs_entry*, %struct.nfs_entry** %8, align 8
  %70 = load %struct.page*, %struct.page** %10, align 8
  %71 = call i32 @nfs_readdir_add_to_array(%struct.nfs_entry* %69, %struct.page* %70)
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  br label %82

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.nfs_entry*, %struct.nfs_entry** %8, align 8
  %78 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  %81 = xor i1 %80, true
  br i1 %81, label %39, label %82

82:                                               ; preds = %76, %74, %51
  %83 = load i32, i32* %16, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* @EBADCOOKIE, align 4
  %88 = sub nsw i32 0, %87
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %113

90:                                               ; preds = %85
  %91 = load %struct.nfs_entry*, %struct.nfs_entry** %8, align 8
  %92 = getelementptr inbounds %struct.nfs_entry, %struct.nfs_entry* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %113

95:                                               ; preds = %90, %82
  %96 = load %struct.page*, %struct.page** %10, align 8
  %97 = call %struct.nfs_cache_array* @nfs_readdir_get_array(%struct.page* %96)
  store %struct.nfs_cache_array* %97, %struct.nfs_cache_array** %15, align 8
  %98 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %15, align 8
  %99 = call i32 @IS_ERR(%struct.nfs_cache_array* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %95
  %102 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %15, align 8
  %103 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %15, align 8
  %106 = getelementptr inbounds %struct.nfs_cache_array, %struct.nfs_cache_array* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  store i32 0, i32* %17, align 4
  %107 = load %struct.page*, %struct.page** %10, align 8
  %108 = call i32 @nfs_readdir_release_array(%struct.page* %107)
  br label %112

109:                                              ; preds = %95
  %110 = load %struct.nfs_cache_array*, %struct.nfs_cache_array** %15, align 8
  %111 = call i32 @PTR_ERR(%struct.nfs_cache_array* %110)
  store i32 %111, i32* %17, align 4
  br label %112

112:                                              ; preds = %109, %101
  br label %113

113:                                              ; preds = %112, %90, %85
  %114 = load %struct.page*, %struct.page** %14, align 8
  %115 = call i32 @put_page(%struct.page* %114)
  %116 = load i32, i32* %17, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %113, %30
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @xdr_init_decode(%struct.xdr_stream*, %struct.xdr_buf*, i32*) #1

declare dso_local i32 @xdr_set_scratch_buffer(%struct.xdr_stream*, i32, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @xdr_decode(%struct.TYPE_8__*, %struct.nfs_entry*, %struct.xdr_stream*) #1

declare dso_local i32 @nfs_prime_dcache(i32, %struct.nfs_entry*) #1

declare dso_local i32 @nfs_readdir_add_to_array(%struct.nfs_entry*, %struct.page*) #1

declare dso_local %struct.nfs_cache_array* @nfs_readdir_get_array(%struct.page*) #1

declare dso_local i32 @IS_ERR(%struct.nfs_cache_array*) #1

declare dso_local i32 @nfs_readdir_release_array(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs_cache_array*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
