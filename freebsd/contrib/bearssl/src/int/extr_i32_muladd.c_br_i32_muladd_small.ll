; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i32_muladd.c_br_i32_muladd_small.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i32_muladd.c_br_i32_muladd_small.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_i32_muladd_small(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %164

33:                                               ; preds = %3
  %34 = load i32, i32* %7, align 4
  %35 = icmp sle i32 %34, 32
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @br_rem(i32 %39, i32 %40, i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %44, i32* %46, align 4
  br label %164

47:                                               ; preds = %33
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 31
  %50 = ashr i32 %49, 5
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %9, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 %53, 32
  %55 = call i32 @br_i32_word(i32* %52, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %13, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32*, i32** %4, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i64, i64* %9, align 8
  %65 = sub i64 %64, 1
  %66 = mul i64 %65, 4
  %67 = call i32 @memmove(i32* %61, i32* %63, i64 %66)
  %68 = load i32, i32* %5, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 %68, i32* %70, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sub nsw i32 %72, 32
  %74 = call i32 @br_i32_word(i32* %71, i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sub nsw i32 %76, 32
  %78 = call i32 @br_i32_word(i32* %75, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @br_div(i32 %79, i32 %80, i32 %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @EQ(i32 %83, i32 %84)
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @EQ(i32 %86, i32 0)
  %88 = load i32, i32* %14, align 4
  %89 = sub nsw i32 %88, 1
  %90 = call i32 @MUX(i32 %87, i32 0, i32 %89)
  %91 = call i32 @MUX(i32 %85, i32 -1, i32 %90)
  store i32 %91, i32* %15, align 4
  store i32 0, i32* %21, align 4
  store i32 1, i32* %16, align 4
  store i64 1, i64* %8, align 8
  br label %92

92:                                               ; preds = %133, %47
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %9, align 8
  %95 = icmp ule i64 %93, %94
  br i1 %95, label %96, label %136

96:                                               ; preds = %92
  %97 = load i32*, i32** %6, align 8
  %98 = load i64, i64* %8, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %22, align 4
  %101 = load i32, i32* %22, align 4
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @MUL(i32 %101, i32 %102)
  %104 = load i32, i32* %21, align 4
  %105 = add nsw i32 %103, %104
  store i32 %105, i32* %26, align 4
  %106 = load i32, i32* %26, align 4
  %107 = ashr i32 %106, 32
  store i32 %107, i32* %21, align 4
  %108 = load i32, i32* %26, align 4
  store i32 %108, i32* %23, align 4
  %109 = load i32*, i32** %4, align 8
  %110 = load i64, i64* %8, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %24, align 4
  %113 = load i32, i32* %24, align 4
  %114 = load i32, i32* %23, align 4
  %115 = sub nsw i32 %113, %114
  store i32 %115, i32* %25, align 4
  %116 = load i32, i32* %25, align 4
  %117 = load i32, i32* %24, align 4
  %118 = call i32 @GT(i32 %116, i32 %117)
  %119 = load i32, i32* %21, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %21, align 4
  %121 = load i32, i32* %25, align 4
  %122 = load i32*, i32** %4, align 8
  %123 = load i64, i64* %8, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32 %121, i32* %124, align 4
  %125 = load i32, i32* %25, align 4
  %126 = load i32, i32* %22, align 4
  %127 = call i32 @EQ(i32 %125, i32 %126)
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %25, align 4
  %130 = load i32, i32* %22, align 4
  %131 = call i32 @GT(i32 %129, i32 %130)
  %132 = call i32 @MUX(i32 %127, i32 %128, i32 %131)
  store i32 %132, i32* %16, align 4
  br label %133

133:                                              ; preds = %96
  %134 = load i64, i64* %8, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %8, align 8
  br label %92

136:                                              ; preds = %92
  %137 = load i32, i32* %21, align 4
  %138 = ashr i32 %137, 32
  store i32 %138, i32* %17, align 4
  %139 = load i32, i32* %21, align 4
  store i32 %139, i32* %18, align 4
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* %18, align 4
  %142 = load i32, i32* %13, align 4
  %143 = call i32 @GT(i32 %141, i32 %142)
  %144 = or i32 %140, %143
  store i32 %144, i32* %20, align 4
  %145 = load i32, i32* %20, align 4
  %146 = xor i32 %145, -1
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* %17, align 4
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %18, align 4
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @LT(i32 %150, i32 %151)
  %153 = and i32 %149, %152
  %154 = or i32 %147, %153
  %155 = and i32 %146, %154
  store i32 %155, i32* %19, align 4
  %156 = load i32*, i32** %4, align 8
  %157 = load i32*, i32** %6, align 8
  %158 = load i32, i32* %20, align 4
  %159 = call i32 @br_i32_add(i32* %156, i32* %157, i32 %158)
  %160 = load i32*, i32** %4, align 8
  %161 = load i32*, i32** %6, align 8
  %162 = load i32, i32* %19, align 4
  %163 = call i32 @br_i32_sub(i32* %160, i32* %161, i32 %162)
  br label %164

164:                                              ; preds = %136, %36, %32
  ret void
}

declare dso_local i32 @br_rem(i32, i32, i32) #1

declare dso_local i32 @br_i32_word(i32*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

declare dso_local i32 @br_div(i32, i32, i32) #1

declare dso_local i32 @MUX(i32, i32, i32) #1

declare dso_local i32 @EQ(i32, i32) #1

declare dso_local i32 @MUL(i32, i32) #1

declare dso_local i32 @GT(i32, i32) #1

declare dso_local i32 @LT(i32, i32) #1

declare dso_local i32 @br_i32_add(i32*, i32*, i32) #1

declare dso_local i32 @br_i32_sub(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
