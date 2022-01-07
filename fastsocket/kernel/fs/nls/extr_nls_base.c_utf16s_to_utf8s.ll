; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nls/extr_nls_base.c_utf16s_to_utf8s.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nls/extr_nls_base.c_utf16s_to_utf8s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SURROGATE_MASK = common dso_local global i64 0, align 8
@SURROGATE_PAIR = common dso_local global i64 0, align 8
@SURROGATE_LOW = common dso_local global i64 0, align 8
@PLANE_SIZE = common dso_local global i64 0, align 8
@SURROGATE_BITS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf16s_to_utf8s(i32* %0, i32 %1, i32 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i64*, i64** %9, align 8
  store i64* %15, i64** %11, align 8
  br label %16

16:                                               ; preds = %109, %70, %50, %5
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %10, align 4
  %21 = icmp sgt i32 %20, 0
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i1 [ false, %16 ], [ %21, %19 ]
  br i1 %23, label %24, label %110

24:                                               ; preds = %22
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @get_utf16(i32 %26, i32 %27)
  store i64 %28, i64* %13, align 8
  %29 = load i64, i64* %13, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %110

32:                                               ; preds = %24
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %7, align 4
  %37 = load i64, i64* %13, align 8
  %38 = icmp ugt i64 %37, 127
  br i1 %38, label %39, label %103

39:                                               ; preds = %32
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* @SURROGATE_MASK, align 8
  %42 = and i64 %40, %41
  %43 = load i64, i64* @SURROGATE_PAIR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %86

45:                                               ; preds = %39
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* @SURROGATE_LOW, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %16

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = icmp sle i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %110

55:                                               ; preds = %51
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i64 @get_utf16(i32 %57, i32 %58)
  store i64 %59, i64* %14, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load i64, i64* @SURROGATE_MASK, align 8
  %62 = and i64 %60, %61
  %63 = load i64, i64* @SURROGATE_PAIR, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %70, label %65

65:                                               ; preds = %55
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* @SURROGATE_LOW, align 8
  %68 = and i64 %66, %67
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65, %55
  br label %16

71:                                               ; preds = %65
  %72 = load i64, i64* @PLANE_SIZE, align 8
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* @SURROGATE_BITS, align 8
  %75 = and i64 %73, %74
  %76 = shl i64 %75, 10
  %77 = add i64 %72, %76
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* @SURROGATE_BITS, align 8
  %80 = and i64 %78, %79
  %81 = add i64 %77, %80
  store i64 %81, i64* %13, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %71, %39
  %87 = load i64, i64* %13, align 8
  %88 = load i64*, i64** %11, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @utf32_to_utf8(i64 %87, i64* %88, i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %102

94:                                               ; preds = %86
  %95 = load i32, i32* %12, align 4
  %96 = load i64*, i64** %11, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  store i64* %98, i64** %11, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %10, align 4
  %101 = sub nsw i32 %100, %99
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %94, %93
  br label %109

103:                                              ; preds = %32
  %104 = load i64, i64* %13, align 8
  %105 = load i64*, i64** %11, align 8
  %106 = getelementptr inbounds i64, i64* %105, i32 1
  store i64* %106, i64** %11, align 8
  store i64 %104, i64* %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %10, align 4
  br label %109

109:                                              ; preds = %103, %102
  br label %16

110:                                              ; preds = %54, %31, %22
  %111 = load i64*, i64** %11, align 8
  %112 = load i64*, i64** %9, align 8
  %113 = ptrtoint i64* %111 to i64
  %114 = ptrtoint i64* %112 to i64
  %115 = sub i64 %113, %114
  %116 = sdiv exact i64 %115, 8
  %117 = trunc i64 %116 to i32
  ret i32 %117
}

declare dso_local i64 @get_utf16(i32, i32) #1

declare dso_local i32 @utf32_to_utf8(i64, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
