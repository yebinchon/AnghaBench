; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c_aligned_vread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmalloc.c_aligned_vread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@KM_USER0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @aligned_vread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aligned_vread(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %51, %3
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %66

15:                                               ; preds = %12
  %16 = load i8*, i8** %5, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = load i64, i64* @PAGE_MASK, align 8
  %19 = xor i64 %18, -1
  %20 = and i64 %17, %19
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* @PAGE_SIZE, align 8
  %22 = load i64, i64* %9, align 8
  %23 = sub i64 %21, %22
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = load i64, i64* %6, align 8
  store i64 %28, i64* %10, align 8
  br label %29

29:                                               ; preds = %27, %15
  %30 = load i8*, i8** %5, align 8
  %31 = call %struct.page* @vmalloc_to_page(i8* %30)
  store %struct.page* %31, %struct.page** %7, align 8
  %32 = load %struct.page*, %struct.page** %7, align 8
  %33 = icmp ne %struct.page* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load %struct.page*, %struct.page** %7, align 8
  %36 = load i32, i32* @KM_USER0, align 4
  %37 = call i8* @kmap_atomic(%struct.page* %35, i32 %36)
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr i8, i8* %39, i64 %40
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @memcpy(i8* %38, i8* %41, i64 %42)
  %44 = load i8*, i8** %11, align 8
  %45 = load i32, i32* @KM_USER0, align 4
  %46 = call i32 @kunmap_atomic(i8* %44, i32 %45)
  br label %51

47:                                               ; preds = %29
  %48 = load i8*, i8** %4, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @memset(i8* %48, i32 0, i64 %49)
  br label %51

51:                                               ; preds = %47, %34
  %52 = load i64, i64* %10, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 %52
  store i8* %54, i8** %5, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 %55
  store i8* %57, i8** %4, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %8, align 4
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %6, align 8
  %65 = sub i64 %64, %63
  store i64 %65, i64* %6, align 8
  br label %12

66:                                               ; preds = %12
  %67 = load i32, i32* %8, align 4
  ret i32 %67
}

declare dso_local %struct.page* @vmalloc_to_page(i8*) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
