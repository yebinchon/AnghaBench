; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i15_decmod.c_br_i15_decode_mod.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i15_decmod.c_br_i15_decode_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_i15_decode_mod(i32* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %21 = load i8*, i8** %6, align 8
  store i8* %21, i8** %9, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 15
  %26 = ashr i32 %25, 4
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = shl i64 %28, 1
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i64, i64* %7, align 8
  store i64 %34, i64* %11, align 8
  br label %35

35:                                               ; preds = %33, %4
  %36 = load i64, i64* %11, align 8
  %37 = add i64 %36, 4
  store i64 %37, i64* %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %129, %35
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %132

41:                                               ; preds = %38
  store i64 1, i64* %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i64 0, i64* %14, align 8
  br label %42

42:                                               ; preds = %119, %41
  %43 = load i64, i64* %14, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %122

46:                                               ; preds = %42
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load i8*, i8** %9, align 8
  %52 = load i64, i64* %7, align 8
  %53 = sub i64 %52, 1
  %54 = load i64, i64* %14, align 8
  %55 = sub i64 %53, %54
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  store i32 %58, i32* %18, align 4
  br label %60

59:                                               ; preds = %46
  store i32 0, i32* %18, align 4
  br label %60

60:                                               ; preds = %59, %50
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* %17, align 4
  %63 = shl i32 %61, %62
  %64 = load i32, i32* %16, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %17, align 4
  %67 = add nsw i32 %66, 8
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %17, align 4
  %69 = icmp sge i32 %68, 15
  br i1 %69, label %70, label %118

70:                                               ; preds = %60
  %71 = load i32, i32* %16, align 4
  %72 = and i32 %71, 32767
  store i32 %72, i32* %19, align 4
  %73 = load i32, i32* %17, align 4
  %74 = sub nsw i32 %73, 15
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* %17, align 4
  %77 = sub nsw i32 8, %76
  %78 = ashr i32 %75, %77
  store i32 %78, i32* %16, align 4
  %79 = load i64, i64* %15, align 8
  %80 = load i64, i64* %10, align 8
  %81 = icmp ule i64 %79, %80
  br i1 %81, label %82, label %106

82:                                               ; preds = %70
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %19, align 4
  %88 = and i32 %86, %87
  %89 = load i32*, i32** %5, align 8
  %90 = load i64, i64* %15, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 %88, i32* %91, align 4
  br label %105

92:                                               ; preds = %82
  %93 = load i32, i32* %19, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = load i64, i64* %15, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @CMP(i32 %93, i32 %97)
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %20, align 4
  %100 = load i32, i32* %20, align 4
  %101 = call i32 @EQ(i32 %100, i32 0)
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %20, align 4
  %104 = call i32 @MUX(i32 %101, i32 %102, i32 %103)
  store i32 %104, i32* %13, align 4
  br label %105

105:                                              ; preds = %92, %85
  br label %115

106:                                              ; preds = %70
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %19, align 4
  %111 = call i32 @EQ(i32 %110, i32 0)
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @MUX(i32 %111, i32 %112, i32 1)
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %109, %106
  br label %115

115:                                              ; preds = %114, %105
  %116 = load i64, i64* %15, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %15, align 8
  br label %118

118:                                              ; preds = %115, %60
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %14, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %14, align 8
  br label %42

122:                                              ; preds = %42
  %123 = load i32, i32* %13, align 4
  %124 = ashr i32 %123, 1
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = shl i32 %125, 1
  %127 = load i32, i32* %13, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %13, align 4
  br label %129

129:                                              ; preds = %122
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %12, align 4
  br label %38

132:                                              ; preds = %38
  %133 = load i32*, i32** %8, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %5, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* %13, align 4
  %139 = and i32 %138, 1
  ret i32 %139
}

declare dso_local i64 @CMP(i32, i32) #1

declare dso_local i32 @MUX(i32, i32, i32) #1

declare dso_local i32 @EQ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
