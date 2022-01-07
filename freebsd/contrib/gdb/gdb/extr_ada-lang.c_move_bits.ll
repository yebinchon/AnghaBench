; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_move_bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_move_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HOST_CHAR_BIT = common dso_local global i32 0, align 4
@BITS_BIG_ENDIAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32, i32)* @move_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_bits(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @HOST_CHAR_BIT, align 4
  %18 = sdiv i32 %16, %17
  %19 = load i8*, i8** %6, align 8
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  store i8* %21, i8** %6, align 8
  %22 = load i32, i32* @HOST_CHAR_BIT, align 4
  %23 = load i32, i32* %7, align 4
  %24 = srem i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @HOST_CHAR_BIT, align 4
  %27 = sdiv i32 %25, %26
  %28 = load i8*, i8** %8, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %8, align 8
  %31 = load i32, i32* @HOST_CHAR_BIT, align 4
  %32 = load i32, i32* %9, align 4
  %33 = srem i32 %32, %31
  store i32 %33, i32* %9, align 4
  %34 = load i64, i64* @BITS_BIG_ENDIAN, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %107

36:                                               ; preds = %5
  %37 = load i8*, i8** %8, align 8
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  store i32 %39, i32* %11, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  store i8* %41, i8** %8, align 8
  %42 = load i32, i32* @HOST_CHAR_BIT, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %69, %36
  %46 = load i32, i32* %10, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %106

48:                                               ; preds = %45
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @HOST_CHAR_BIT, align 4
  %51 = shl i32 %49, %50
  %52 = load i8*, i8** %8, align 8
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = add i32 %51, %54
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* @HOST_CHAR_BIT, align 4
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %13, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  store i8* %60, i8** %8, align 8
  %61 = load i32, i32* @HOST_CHAR_BIT, align 4
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 %61, %62
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %48
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %14, align 4
  br label %69

69:                                               ; preds = %67, %48
  %70 = load i32, i32* @HOST_CHAR_BIT, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %71, %72
  %74 = sub nsw i32 %70, %73
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %14, align 4
  %76 = shl i32 1, %75
  %77 = sub nsw i32 %76, 1
  %78 = load i32, i32* %15, align 4
  %79 = shl i32 %77, %78
  store i32 %79, i32* %12, align 4
  %80 = load i8*, i8** %6, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = load i32, i32* %12, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %82, %84
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %14, align 4
  %89 = sub nsw i32 %87, %88
  %90 = load i32, i32* %15, align 4
  %91 = sub nsw i32 %89, %90
  %92 = lshr i32 %86, %91
  %93 = load i32, i32* %12, align 4
  %94 = and i32 %92, %93
  %95 = or i32 %85, %94
  %96 = trunc i32 %95 to i8
  %97 = load i8*, i8** %6, align 8
  store i8 %96, i8* %97, align 1
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %10, align 4
  %100 = sub nsw i32 %99, %98
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %13, align 4
  %103 = sub nsw i32 %102, %101
  store i32 %103, i32* %13, align 4
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  store i8* %105, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %45

106:                                              ; preds = %45
  br label %174

107:                                              ; preds = %5
  %108 = load i8*, i8** %8, align 8
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = load i32, i32* %9, align 4
  %112 = ashr i32 %110, %111
  store i32 %112, i32* %11, align 4
  %113 = load i8*, i8** %8, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  store i8* %114, i8** %8, align 8
  %115 = load i32, i32* @HOST_CHAR_BIT, align 4
  %116 = load i32, i32* %9, align 4
  %117 = sub nsw i32 %115, %116
  store i32 %117, i32* %13, align 4
  br label %118

118:                                              ; preds = %142, %107
  %119 = load i32, i32* %10, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %173

121:                                              ; preds = %118
  %122 = load i32, i32* %11, align 4
  %123 = load i8*, i8** %8, align 8
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = load i32, i32* %13, align 4
  %127 = shl i32 %125, %126
  %128 = add i32 %122, %127
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* @HOST_CHAR_BIT, align 4
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %13, align 4
  %132 = load i8*, i8** %8, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 1
  store i8* %133, i8** %8, align 8
  %134 = load i32, i32* @HOST_CHAR_BIT, align 4
  %135 = load i32, i32* %7, align 4
  %136 = sub nsw i32 %134, %135
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %14, align 4
  %138 = load i32, i32* %10, align 4
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %121
  %141 = load i32, i32* %10, align 4
  store i32 %141, i32* %14, align 4
  br label %142

142:                                              ; preds = %140, %121
  %143 = load i32, i32* %14, align 4
  %144 = shl i32 1, %143
  %145 = sub nsw i32 %144, 1
  %146 = load i32, i32* %7, align 4
  %147 = shl i32 %145, %146
  store i32 %147, i32* %12, align 4
  %148 = load i8*, i8** %6, align 8
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = load i32, i32* %12, align 4
  %152 = xor i32 %151, -1
  %153 = and i32 %150, %152
  %154 = load i32, i32* %11, align 4
  %155 = load i32, i32* %7, align 4
  %156 = shl i32 %154, %155
  %157 = load i32, i32* %12, align 4
  %158 = and i32 %156, %157
  %159 = or i32 %153, %158
  %160 = trunc i32 %159 to i8
  %161 = load i8*, i8** %6, align 8
  store i8 %160, i8* %161, align 1
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* %10, align 4
  %164 = sub nsw i32 %163, %162
  store i32 %164, i32* %10, align 4
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* %13, align 4
  %167 = sub nsw i32 %166, %165
  store i32 %167, i32* %13, align 4
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %11, align 4
  %170 = lshr i32 %169, %168
  store i32 %170, i32* %11, align 4
  %171 = load i8*, i8** %6, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 1
  store i8* %172, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %118

173:                                              ; preds = %118
  br label %174

174:                                              ; preds = %173, %106
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
