; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c__copy_from_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xdr.c__copy_from_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i64 0, align 8
@PAGE_CACHE_MASK = common dso_local global i64 0, align 8
@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@KM_USER0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_copy_from_pages(i8* %0, %struct.page** %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.page**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.page**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store %struct.page** %1, %struct.page*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.page**, %struct.page*** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @PAGE_CACHE_SHIFT, align 8
  %15 = lshr i64 %13, %14
  %16 = getelementptr inbounds %struct.page*, %struct.page** %12, i64 %15
  store %struct.page** %16, %struct.page*** %9, align 8
  %17 = load i64, i64* @PAGE_CACHE_MASK, align 8
  %18 = xor i64 %17, -1
  %19 = load i64, i64* %7, align 8
  %20 = and i64 %19, %18
  store i64 %20, i64* %7, align 8
  br label %21

21:                                               ; preds = %57, %4
  %22 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %23 = load i64, i64* %7, align 8
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
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @memcpy(i8* %35, i8* %38, i64 %39)
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* @KM_USER0, align 4
  %43 = call i32 @kunmap_atomic(i8* %41, i32 %42)
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %30
  store i64 0, i64* %7, align 8
  %51 = load %struct.page**, %struct.page*** %9, align 8
  %52 = getelementptr inbounds %struct.page*, %struct.page** %51, i32 1
  store %struct.page** %52, %struct.page*** %9, align 8
  br label %53

53:                                               ; preds = %50, %30
  %54 = load i64, i64* %11, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 %54
  store i8* %56, i8** %5, align 8
  br label %57

57:                                               ; preds = %53
  %58 = load i64, i64* %11, align 8
  %59 = load i64, i64* %8, align 8
  %60 = sub i64 %59, %58
  store i64 %60, i64* %8, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %21, label %62

62:                                               ; preds = %57
  ret void
}

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
