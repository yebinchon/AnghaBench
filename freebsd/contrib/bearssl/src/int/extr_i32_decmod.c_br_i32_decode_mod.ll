; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i32_decmod.c_br_i32_decode_mod.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i32_decmod.c_br_i32_decode_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_i32_decode_mod(i32* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %9, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 7
  %22 = ashr i32 %21, 3
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %13, align 8
  store i32 0, i32* %10, align 4
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i64, i64* %13, align 8
  br label %31

29:                                               ; preds = %4
  %30 = load i64, i64* %7, align 8
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i64 [ %28, %27 ], [ %30, %29 ]
  store i64 %32, i64* %11, align 8
  br label %33

33:                                               ; preds = %78, %31
  %34 = load i64, i64* %11, align 8
  %35 = icmp ugt i64 %34, 0
  br i1 %35, label %36, label %81

36:                                               ; preds = %33
  %37 = load i64, i64* %11, align 8
  %38 = sub i64 %37, 1
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* %13, align 8
  %41 = icmp uge i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %14, align 4
  br label %56

43:                                               ; preds = %36
  %44 = load i32*, i32** %8, align 8
  %45 = load i64, i64* %12, align 8
  %46 = lshr i64 %45, 2
  %47 = add i64 1, %46
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %12, align 8
  %51 = and i64 %50, 3
  %52 = shl i64 %51, 3
  %53 = trunc i64 %52 to i32
  %54 = ashr i32 %49, %53
  %55 = and i32 %54, 255
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %43, %42
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %7, align 8
  %59 = icmp uge i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 0, i32* %15, align 4
  br label %69

61:                                               ; preds = %56
  %62 = load i8*, i8** %9, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* %11, align 8
  %65 = sub i64 %63, %64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  store i32 %68, i32* %15, align 4
  br label %69

69:                                               ; preds = %61, %60
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @EQ(i32 %70, i32 0)
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i64 @CMP(i32 %72, i32 %73)
  %75 = trunc i64 %74 to i32
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @MUX(i32 %71, i32 %75, i32 %76)
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %69
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %79, -1
  store i64 %80, i64* %11, align 8
  br label %33

81:                                               ; preds = %33
  %82 = load i32, i32* %10, align 4
  %83 = ashr i32 %82, 24
  store i32 %83, i32* %10, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @br_i32_zero(i32* %84, i32 %87)
  %89 = load i64, i64* %13, align 8
  %90 = load i64, i64* %7, align 8
  %91 = icmp ugt i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %81
  %93 = load i64, i64* %7, align 8
  br label %96

94:                                               ; preds = %81
  %95 = load i64, i64* %13, align 8
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i64 [ %93, %92 ], [ %95, %94 ]
  store i64 %97, i64* %11, align 8
  br label %98

98:                                               ; preds = %101, %96
  %99 = load i64, i64* %11, align 8
  %100 = icmp ugt i64 %99, 0
  br i1 %100, label %101, label %126

101:                                              ; preds = %98
  %102 = load i8*, i8** %9, align 8
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* %11, align 8
  %105 = sub i64 %103, %104
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = load i32, i32* %10, align 4
  %110 = and i32 %108, %109
  store i32 %110, i32* %16, align 4
  %111 = load i64, i64* %11, align 8
  %112 = add i64 %111, -1
  store i64 %112, i64* %11, align 8
  %113 = load i32, i32* %16, align 4
  %114 = load i64, i64* %11, align 8
  %115 = and i64 %114, 3
  %116 = shl i64 %115, 3
  %117 = trunc i64 %116 to i32
  %118 = shl i32 %113, %117
  %119 = load i32*, i32** %5, align 8
  %120 = load i64, i64* %11, align 8
  %121 = lshr i64 %120, 2
  %122 = add i64 1, %121
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %118
  store i32 %125, i32* %123, align 4
  br label %98

126:                                              ; preds = %98
  %127 = load i32, i32* %10, align 4
  %128 = ashr i32 %127, 7
  ret i32 %128
}

declare dso_local i32 @MUX(i32, i32, i32) #1

declare dso_local i32 @EQ(i32, i32) #1

declare dso_local i64 @CMP(i32, i32) #1

declare dso_local i32 @br_i32_zero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
