; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_zram_drv.c_zram_free_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/zram/extr_zram_drv.c_zram_free_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zram = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, %struct.page* }
%struct.page = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@ZRAM_ZERO = common dso_local global i32 0, align 4
@ZRAM_UNCOMPRESSED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zram*, i64)* @zram_free_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zram_free_page(%struct.zram* %0, i64 %1) #0 {
  %3 = alloca %struct.zram*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  store %struct.zram* %0, %struct.zram** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.zram*, %struct.zram** %3, align 8
  %10 = getelementptr inbounds %struct.zram, %struct.zram* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.page*, %struct.page** %14, align 8
  store %struct.page* %15, %struct.page** %7, align 8
  %16 = load %struct.zram*, %struct.zram** %3, align 8
  %17 = getelementptr inbounds %struct.zram, %struct.zram* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load %struct.page*, %struct.page** %7, align 8
  %24 = icmp ne %struct.page* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %2
  %30 = load %struct.zram*, %struct.zram** %3, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i32, i32* @ZRAM_ZERO, align 4
  %33 = call i32 @zram_test_flag(%struct.zram* %30, i64 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.zram*, %struct.zram** %3, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load i32, i32* @ZRAM_ZERO, align 4
  %39 = call i32 @zram_clear_flag(%struct.zram* %36, i64 %37, i32 %38)
  %40 = load %struct.zram*, %struct.zram** %3, align 8
  %41 = getelementptr inbounds %struct.zram, %struct.zram* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 4
  %43 = call i32 @zram_stat_dec(i32* %42)
  br label %44

44:                                               ; preds = %35, %29
  br label %118

45:                                               ; preds = %2
  %46 = load %struct.zram*, %struct.zram** %3, align 8
  %47 = load i64, i64* %4, align 8
  %48 = load i32, i32* @ZRAM_UNCOMPRESSED, align 4
  %49 = call i32 @zram_test_flag(%struct.zram* %46, i64 %47, i32 %48)
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %45
  %53 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %53, i32* %5, align 4
  %54 = load %struct.page*, %struct.page** %7, align 8
  %55 = call i32 @__free_page(%struct.page* %54)
  %56 = load %struct.zram*, %struct.zram** %3, align 8
  %57 = load i64, i64* %4, align 8
  %58 = load i32, i32* @ZRAM_UNCOMPRESSED, align 4
  %59 = call i32 @zram_clear_flag(%struct.zram* %56, i64 %57, i32 %58)
  %60 = load %struct.zram*, %struct.zram** %3, align 8
  %61 = getelementptr inbounds %struct.zram, %struct.zram* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  %63 = call i32 @zram_stat_dec(i32* %62)
  br label %95

64:                                               ; preds = %45
  %65 = load %struct.page*, %struct.page** %7, align 8
  %66 = load i32, i32* @KM_USER0, align 4
  %67 = call i8* @kmap_atomic(%struct.page* %65, i32 %66)
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr i8, i8* %67, i64 %69
  store i8* %70, i8** %6, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @xv_get_object_size(i8* %71)
  %73 = sext i32 %72 to i64
  %74 = sub i64 %73, 4
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %5, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = load i32, i32* @KM_USER0, align 4
  %78 = call i32 @kunmap_atomic(i8* %76, i32 %77)
  %79 = load %struct.zram*, %struct.zram** %3, align 8
  %80 = getelementptr inbounds %struct.zram, %struct.zram* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.page*, %struct.page** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @xv_free(i32 %81, %struct.page* %82, i32 %83)
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @PAGE_SIZE, align 4
  %87 = sdiv i32 %86, 2
  %88 = icmp sle i32 %85, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %64
  %90 = load %struct.zram*, %struct.zram** %3, align 8
  %91 = getelementptr inbounds %struct.zram, %struct.zram* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 2
  %93 = call i32 @zram_stat_dec(i32* %92)
  br label %94

94:                                               ; preds = %89, %64
  br label %95

95:                                               ; preds = %94, %52
  %96 = load %struct.zram*, %struct.zram** %3, align 8
  %97 = load %struct.zram*, %struct.zram** %3, align 8
  %98 = getelementptr inbounds %struct.zram, %struct.zram* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @zram_stat64_sub(%struct.zram* %96, i32* %99, i32 %100)
  %102 = load %struct.zram*, %struct.zram** %3, align 8
  %103 = getelementptr inbounds %struct.zram, %struct.zram* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = call i32 @zram_stat_dec(i32* %104)
  %106 = load %struct.zram*, %struct.zram** %3, align 8
  %107 = getelementptr inbounds %struct.zram, %struct.zram* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i64, i64* %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  store %struct.page* null, %struct.page** %111, align 8
  %112 = load %struct.zram*, %struct.zram** %3, align 8
  %113 = getelementptr inbounds %struct.zram, %struct.zram* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = load i64, i64* %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i32 0, i32* %117, align 8
  br label %118

118:                                              ; preds = %95, %44
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @zram_test_flag(%struct.zram*, i64, i32) #1

declare dso_local i32 @zram_clear_flag(%struct.zram*, i64, i32) #1

declare dso_local i32 @zram_stat_dec(i32*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @xv_get_object_size(i8*) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @xv_free(i32, %struct.page*, i32) #1

declare dso_local i32 @zram_stat64_sub(%struct.zram*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
