; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c__copy_to_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c__copy_to_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@PAGE_CACHE_MASK = common dso_local global i64 0, align 8
@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@KM_USER0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page**, i64, i8*, i64)* @_copy_to_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_copy_to_pages(%struct.page** %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.page**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.page**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.page** %0, %struct.page*** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.page**, %struct.page*** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %15 = lshr i64 %13, %14
  %16 = getelementptr inbounds %struct.page*, %struct.page** %12, i64 %15
  store %struct.page** %16, %struct.page*** %9, align 8
  %17 = load i64, i64* @PAGE_CACHE_MASK, align 8
  %18 = xor i64 %17, -1
  %19 = load i64, i64* %6, align 8
  %20 = and i64 %19, %18
  store i64 %20, i64* %6, align 8
  br label %21

21:                                               ; preds = %63, %4
  %22 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %23 = load i64, i64* %6, align 8
  %24 = sub i64 %22, %23
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i64, i64* %8, align 8
  store i64 %29, i64* %11, align 8
  br label %30

30:                                               ; preds = %28, %21
  %31 = load %struct.page**, %struct.page*** %9, align 8
  %32 = load %struct.page*, %struct.page** %31, align 8
  %33 = load i32, i32* @KM_USER0, align 4
  %34 = call i8* @kmap_atomic(%struct.page* %32, i32 %33)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8*, i8** %7, align 8
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @memcpy(i8* %37, i8* %38, i64 %39)
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* @KM_USER0, align 4
  %43 = call i32 @kunmap_atomic(i8* %41, i32 %42)
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %8, align 8
  %46 = sub i64 %45, %44
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %30
  br label %67

50:                                               ; preds = %30
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %6, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load %struct.page**, %struct.page*** %9, align 8
  %59 = load %struct.page*, %struct.page** %58, align 8
  %60 = call i32 @flush_dcache_page(%struct.page* %59)
  store i64 0, i64* %6, align 8
  %61 = load %struct.page**, %struct.page*** %9, align 8
  %62 = getelementptr inbounds %struct.page*, %struct.page** %61, i32 1
  store %struct.page** %62, %struct.page*** %9, align 8
  br label %63

63:                                               ; preds = %57, %50
  %64 = load i64, i64* %11, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 %64
  store i8* %66, i8** %7, align 8
  br label %21

67:                                               ; preds = %49
  %68 = load %struct.page**, %struct.page*** %9, align 8
  %69 = load %struct.page*, %struct.page** %68, align 8
  %70 = call i32 @flush_dcache_page(%struct.page* %69)
  ret void
}

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
