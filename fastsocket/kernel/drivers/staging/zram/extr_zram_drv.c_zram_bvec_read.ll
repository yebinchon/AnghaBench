; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_zram_drv.c_zram_bvec_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_zram_drv.c_zram_bvec_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zram = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.page* }
%struct.page = type { i32 }
%struct.bio_vec = type { i32, i32, %struct.page* }
%struct.bio = type { i32, i64 }
%struct.zobj_header = type { i32 }

@ZRAM_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Read before write: sector=%lu, size=%u\00", align 1
@ZRAM_UNCOMPRESSED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Error allocating temp memory!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@KM_USER1 = common dso_local global i32 0, align 4
@LZO_E_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Decompression failed! err=%d, page=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zram*, %struct.bio_vec*, i64, i32, %struct.bio*)* @zram_bvec_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zram_bvec_read(%struct.zram* %0, %struct.bio_vec* %1, i64 %2, i32 %3, %struct.bio* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.zram*, align 8
  %8 = alloca %struct.bio_vec*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bio*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.zobj_header*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.zram* %0, %struct.zram** %7, align 8
  store %struct.bio_vec* %1, %struct.bio_vec** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.bio* %4, %struct.bio** %11, align 8
  store i8* null, i8** %18, align 8
  %19 = load %struct.bio_vec*, %struct.bio_vec** %8, align 8
  %20 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %19, i32 0, i32 2
  %21 = load %struct.page*, %struct.page** %20, align 8
  store %struct.page* %21, %struct.page** %14, align 8
  %22 = load %struct.zram*, %struct.zram** %7, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* @ZRAM_ZERO, align 4
  %25 = call i32 @zram_test_flag(%struct.zram* %22, i64 %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = load %struct.bio_vec*, %struct.bio_vec** %8, align 8
  %29 = call i32 @handle_zero_page(%struct.bio_vec* %28)
  store i32 0, i32* %6, align 4
  br label %164

30:                                               ; preds = %5
  %31 = load %struct.zram*, %struct.zram** %7, align 8
  %32 = getelementptr inbounds %struct.zram, %struct.zram* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load %struct.page*, %struct.page** %36, align 8
  %38 = icmp ne %struct.page* %37, null
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %30
  %44 = load %struct.bio*, %struct.bio** %11, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load %struct.bio*, %struct.bio** %11, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50)
  %52 = load %struct.bio_vec*, %struct.bio_vec** %8, align 8
  %53 = call i32 @handle_zero_page(%struct.bio_vec* %52)
  store i32 0, i32* %6, align 4
  br label %164

54:                                               ; preds = %30
  %55 = load %struct.zram*, %struct.zram** %7, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i32, i32* @ZRAM_UNCOMPRESSED, align 4
  %58 = call i32 @zram_test_flag(%struct.zram* %55, i64 %56, i32 %57)
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.zram*, %struct.zram** %7, align 8
  %63 = load %struct.bio_vec*, %struct.bio_vec** %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @handle_uncompressed_page(%struct.zram* %62, %struct.bio_vec* %63, i64 %64, i32 %65)
  store i32 0, i32* %6, align 4
  br label %164

67:                                               ; preds = %54
  %68 = load %struct.bio_vec*, %struct.bio_vec** %8, align 8
  %69 = call i64 @is_partial_io(%struct.bio_vec* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = load i64, i64* @PAGE_SIZE, align 8
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i8* @kmalloc(i64 %72, i32 %73)
  store i8* %74, i8** %18, align 8
  %75 = load i8*, i8** %18, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %71
  %78 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %164

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81, %67
  %83 = load %struct.page*, %struct.page** %14, align 8
  %84 = load i32, i32* @KM_USER0, align 4
  %85 = call i8* @kmap_atomic(%struct.page* %83, i32 %84)
  store i8* %85, i8** %16, align 8
  %86 = load %struct.bio_vec*, %struct.bio_vec** %8, align 8
  %87 = call i64 @is_partial_io(%struct.bio_vec* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %82
  %90 = load i8*, i8** %16, align 8
  store i8* %90, i8** %18, align 8
  br label %91

91:                                               ; preds = %89, %82
  %92 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %92, i64* %13, align 8
  %93 = load %struct.zram*, %struct.zram** %7, align 8
  %94 = getelementptr inbounds %struct.zram, %struct.zram* %93, i32 0, i32 1
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = load i64, i64* %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load %struct.page*, %struct.page** %98, align 8
  %100 = load i32, i32* @KM_USER1, align 4
  %101 = call i8* @kmap_atomic(%struct.page* %99, i32 %100)
  %102 = load %struct.zram*, %struct.zram** %7, align 8
  %103 = getelementptr inbounds %struct.zram, %struct.zram* %102, i32 0, i32 1
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %101, i64 %109
  store i8* %110, i8** %17, align 8
  %111 = load i8*, i8** %17, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 4
  %113 = load i8*, i8** %17, align 8
  %114 = call i64 @xv_get_object_size(i8* %113)
  %115 = sub i64 %114, 4
  %116 = load i8*, i8** %18, align 8
  %117 = call i32 @lzo1x_decompress_safe(i8* %112, i64 %115, i8* %116, i64* %13)
  store i32 %117, i32* %12, align 4
  %118 = load %struct.bio_vec*, %struct.bio_vec** %8, align 8
  %119 = call i64 @is_partial_io(%struct.bio_vec* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %138

121:                                              ; preds = %91
  %122 = load i8*, i8** %16, align 8
  %123 = load %struct.bio_vec*, %struct.bio_vec** %8, align 8
  %124 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %122, i64 %126
  %128 = load i8*, i8** %18, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load %struct.bio_vec*, %struct.bio_vec** %8, align 8
  %133 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @memcpy(i8* %127, i8* %131, i32 %134)
  %136 = load i8*, i8** %18, align 8
  %137 = call i32 @kfree(i8* %136)
  br label %138

138:                                              ; preds = %121, %91
  %139 = load i8*, i8** %17, align 8
  %140 = load i32, i32* @KM_USER1, align 4
  %141 = call i32 @kunmap_atomic(i8* %139, i32 %140)
  %142 = load i8*, i8** %16, align 8
  %143 = load i32, i32* @KM_USER0, align 4
  %144 = call i32 @kunmap_atomic(i8* %142, i32 %143)
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* @LZO_E_OK, align 4
  %147 = icmp ne i32 %145, %146
  %148 = zext i1 %147 to i32
  %149 = call i64 @unlikely(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %161

151:                                              ; preds = %138
  %152 = load i32, i32* %12, align 4
  %153 = load i64, i64* %9, align 8
  %154 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %152, i64 %153)
  %155 = load %struct.zram*, %struct.zram** %7, align 8
  %156 = load %struct.zram*, %struct.zram** %7, align 8
  %157 = getelementptr inbounds %struct.zram, %struct.zram* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = call i32 @zram_stat64_inc(%struct.zram* %155, i32* %158)
  %160 = load i32, i32* %12, align 4
  store i32 %160, i32* %6, align 4
  br label %164

161:                                              ; preds = %138
  %162 = load %struct.page*, %struct.page** %14, align 8
  %163 = call i32 @flush_dcache_page(%struct.page* %162)
  store i32 0, i32* %6, align 4
  br label %164

164:                                              ; preds = %161, %151, %77, %61, %43, %27
  %165 = load i32, i32* %6, align 4
  ret i32 %165
}

declare dso_local i32 @zram_test_flag(%struct.zram*, i64, i32) #1

declare dso_local i32 @handle_zero_page(%struct.bio_vec*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @handle_uncompressed_page(%struct.zram*, %struct.bio_vec*, i64, i32) #1

declare dso_local i64 @is_partial_io(%struct.bio_vec*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @lzo1x_decompress_safe(i8*, i64, i8*, i64*) #1

declare dso_local i64 @xv_get_object_size(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i64) #1

declare dso_local i32 @zram_stat64_inc(%struct.zram*, i32*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
