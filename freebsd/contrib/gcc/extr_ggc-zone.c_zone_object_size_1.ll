; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_zone_object_size_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ggc-zone.c_zone_object_size_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BYTES_PER_ALLOC_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64, i64, i64)* @zone_object_size_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zone_object_size_1(i64* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64*, i64** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = add i64 %14, 1
  store i64 %15, i64* %7, align 8
  %16 = getelementptr inbounds i64, i64* %13, i64 %14
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %4
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %8, align 8
  %23 = lshr i64 %21, %22
  %24 = call i32 @alloc_ffs(i64 %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @BYTES_PER_ALLOC_BIT, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %5, align 8
  br label %84

32:                                               ; preds = %20
  %33 = load i64, i64* %8, align 8
  %34 = sub i64 64, %33
  %35 = add i64 %34, 1
  %36 = load i32, i32* @BYTES_PER_ALLOC_BIT, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %35, %37
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp uge i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i64, i64* %9, align 8
  store i64 %43, i64* %5, align 8
  br label %84

44:                                               ; preds = %32
  %45 = load i64*, i64** %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %7, align 8
  %48 = getelementptr inbounds i64, i64* %45, i64 %46
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %11, align 8
  br label %53

50:                                               ; preds = %4
  %51 = load i32, i32* @BYTES_PER_ALLOC_BIT, align 4
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %10, align 8
  br label %53

53:                                               ; preds = %50, %44
  br label %54

54:                                               ; preds = %68, %53
  %55 = load i64, i64* %11, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %54
  %58 = load i32, i32* @BYTES_PER_ALLOC_BIT, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 64, %59
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %10, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %9, align 8
  %65 = icmp uge i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %57
  %67 = load i64, i64* %9, align 8
  store i64 %67, i64* %5, align 8
  br label %84

68:                                               ; preds = %57
  %69 = load i64*, i64** %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %7, align 8
  %72 = getelementptr inbounds i64, i64* %69, i64 %70
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %11, align 8
  br label %54

74:                                               ; preds = %54
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @alloc_ffs(i64 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i64, i64* %10, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sub nsw i32 %78, 1
  %80 = load i32, i32* @BYTES_PER_ALLOC_BIT, align 4
  %81 = mul nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = add i64 %77, %82
  store i64 %83, i64* %5, align 8
  br label %84

84:                                               ; preds = %74, %66, %42, %27
  %85 = load i64, i64* %5, align 8
  ret i64 %85
}

declare dso_local i32 @alloc_ffs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
