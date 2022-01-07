; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_zram_drv.c_zram_read_before_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_zram_drv.c_zram_read_before_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zram = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.zobj_header = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@ZRAM_ZERO = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@ZRAM_UNCOMPRESSED = common dso_local global i32 0, align 4
@LZO_E_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Decompression failed! err=%d, page=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zram*, i8*, i64)* @zram_read_before_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zram_read_before_write(%struct.zram* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.zram*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.zobj_header*, align 8
  %11 = alloca i8*, align 8
  store %struct.zram* %0, %struct.zram** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %12, i64* %9, align 8
  %13 = load %struct.zram*, %struct.zram** %5, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i32, i32* @ZRAM_ZERO, align 4
  %16 = call i32 @zram_test_flag(%struct.zram* %13, i64 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %3
  %19 = load %struct.zram*, %struct.zram** %5, align 8
  %20 = getelementptr inbounds %struct.zram, %struct.zram* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %18, %3
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* @PAGE_SIZE, align 8
  %30 = call i32 @memset(i8* %28, i32 0, i64 %29)
  store i32 0, i32* %4, align 4
  br label %92

31:                                               ; preds = %18
  %32 = load %struct.zram*, %struct.zram** %5, align 8
  %33 = getelementptr inbounds %struct.zram, %struct.zram* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @KM_USER0, align 4
  %40 = call i8* @kmap_atomic(i32 %38, i32 %39)
  %41 = load %struct.zram*, %struct.zram** %5, align 8
  %42 = getelementptr inbounds %struct.zram, %struct.zram* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %40, i64 %48
  store i8* %49, i8** %11, align 8
  %50 = load %struct.zram*, %struct.zram** %5, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i32, i32* @ZRAM_UNCOMPRESSED, align 4
  %53 = call i32 @zram_test_flag(%struct.zram* %50, i64 %51, i32 %52)
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %31
  %57 = load i8*, i8** %6, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load i64, i64* @PAGE_SIZE, align 8
  %60 = call i32 @memcpy(i8* %57, i8* %58, i64 %59)
  %61 = load i8*, i8** %11, align 8
  %62 = load i32, i32* @KM_USER0, align 4
  %63 = call i32 @kunmap_atomic(i8* %61, i32 %62)
  store i32 0, i32* %4, align 4
  br label %92

64:                                               ; preds = %31
  %65 = load i8*, i8** %11, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 4
  %67 = load i8*, i8** %11, align 8
  %68 = call i64 @xv_get_object_size(i8* %67)
  %69 = sub i64 %68, 4
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @lzo1x_decompress_safe(i8* %66, i64 %69, i8* %70, i64* %9)
  store i32 %71, i32* %8, align 4
  %72 = load i8*, i8** %11, align 8
  %73 = load i32, i32* @KM_USER0, align 4
  %74 = call i32 @kunmap_atomic(i8* %72, i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @LZO_E_OK, align 4
  %77 = icmp ne i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %64
  %82 = load i32, i32* %8, align 4
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %82, i64 %83)
  %85 = load %struct.zram*, %struct.zram** %5, align 8
  %86 = load %struct.zram*, %struct.zram** %5, align 8
  %87 = getelementptr inbounds %struct.zram, %struct.zram* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = call i32 @zram_stat64_inc(%struct.zram* %85, i32* %88)
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %4, align 4
  br label %92

91:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %81, %56, %27
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @zram_test_flag(%struct.zram*, i64, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i8* @kmap_atomic(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @lzo1x_decompress_safe(i8*, i64, i8*, i64*) #1

declare dso_local i64 @xv_get_object_size(i8*) #1

declare dso_local i32 @pr_err(i8*, i32, i64) #1

declare dso_local i32 @zram_stat64_inc(%struct.zram*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
