; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c__shift_data_right_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c__shift_data_right_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@PAGE_CACHE_MASK = common dso_local global i64 0, align 8
@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@KM_USER0 = common dso_local global i32 0, align 4
@KM_USER1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page**, i64, i64, i64)* @_shift_data_right_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_shift_data_right_pages(%struct.page** %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.page**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.page**, align 8
  %10 = alloca %struct.page**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.page** %0, %struct.page*** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ule i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %6, align 8
  %21 = add i64 %20, %19
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %23, %22
  store i64 %24, i64* %7, align 8
  %25 = load %struct.page**, %struct.page*** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %28 = lshr i64 %26, %27
  %29 = getelementptr inbounds %struct.page*, %struct.page** %25, i64 %28
  store %struct.page** %29, %struct.page*** %10, align 8
  %30 = load %struct.page**, %struct.page*** %5, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %33 = lshr i64 %31, %32
  %34 = getelementptr inbounds %struct.page*, %struct.page** %30, i64 %33
  store %struct.page** %34, %struct.page*** %9, align 8
  %35 = load i64, i64* @PAGE_CACHE_MASK, align 8
  %36 = xor i64 %35, -1
  %37 = load i64, i64* %6, align 8
  %38 = and i64 %37, %36
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* @PAGE_CACHE_MASK, align 8
  %40 = xor i64 %39, -1
  %41 = load i64, i64* %7, align 8
  %42 = and i64 %41, %40
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %102, %4
  %44 = load i64, i64* %6, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  store i64 %47, i64* %6, align 8
  %48 = load %struct.page**, %struct.page*** %10, align 8
  %49 = getelementptr inbounds %struct.page*, %struct.page** %48, i32 -1
  store %struct.page** %49, %struct.page*** %10, align 8
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i64, i64* %7, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  store i64 %54, i64* %7, align 8
  %55 = load %struct.page**, %struct.page*** %9, align 8
  %56 = getelementptr inbounds %struct.page*, %struct.page** %55, i32 -1
  store %struct.page** %56, %struct.page*** %9, align 8
  br label %57

57:                                               ; preds = %53, %50
  %58 = load i64, i64* %8, align 8
  store i64 %58, i64* %13, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i64, i64* %6, align 8
  store i64 %63, i64* %13, align 8
  br label %64

64:                                               ; preds = %62, %57
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp ugt i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i64, i64* %7, align 8
  store i64 %69, i64* %13, align 8
  br label %70

70:                                               ; preds = %68, %64
  %71 = load i64, i64* %13, align 8
  %72 = load i64, i64* %6, align 8
  %73 = sub i64 %72, %71
  store i64 %73, i64* %6, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* %7, align 8
  %76 = sub i64 %75, %74
  store i64 %76, i64* %7, align 8
  %77 = load %struct.page**, %struct.page*** %10, align 8
  %78 = load %struct.page*, %struct.page** %77, align 8
  %79 = load i32, i32* @KM_USER0, align 4
  %80 = call i8* @kmap_atomic(%struct.page* %78, i32 %79)
  store i8* %80, i8** %12, align 8
  %81 = load %struct.page**, %struct.page*** %9, align 8
  %82 = load %struct.page*, %struct.page** %81, align 8
  %83 = load i32, i32* @KM_USER1, align 4
  %84 = call i8* @kmap_atomic(%struct.page* %82, i32 %83)
  store i8* %84, i8** %11, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = load i64, i64* %6, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  %88 = load i8*, i8** %11, align 8
  %89 = load i64, i64* %7, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  %91 = load i64, i64* %13, align 8
  %92 = call i32 @memmove(i8* %87, i8* %90, i64 %91)
  %93 = load %struct.page**, %struct.page*** %10, align 8
  %94 = load %struct.page*, %struct.page** %93, align 8
  %95 = call i32 @flush_dcache_page(%struct.page* %94)
  %96 = load i8*, i8** %11, align 8
  %97 = load i32, i32* @KM_USER1, align 4
  %98 = call i32 @kunmap_atomic(i8* %96, i32 %97)
  %99 = load i8*, i8** %12, align 8
  %100 = load i32, i32* @KM_USER0, align 4
  %101 = call i32 @kunmap_atomic(i8* %99, i32 %100)
  br label %102

102:                                              ; preds = %70
  %103 = load i64, i64* %13, align 8
  %104 = load i64, i64* %8, align 8
  %105 = sub i64 %104, %103
  store i64 %105, i64* %8, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %43, label %107

107:                                              ; preds = %102
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
