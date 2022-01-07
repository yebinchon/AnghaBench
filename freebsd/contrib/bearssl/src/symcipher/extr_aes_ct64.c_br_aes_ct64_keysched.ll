; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct64.c_br_aes_ct64_keysched.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct64.c_br_aes_ct64_keysched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Rcon = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_aes_ct64_keysched(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [60 x i32], align 16
  %16 = alloca [8 x i32], align 16
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  switch i64 %17, label %21 [
    i64 16, label %18
    i64 24, label %19
    i64 32, label %20
  ]

18:                                               ; preds = %3
  store i32 10, i32* %8, align 4
  br label %22

19:                                               ; preds = %3
  store i32 12, i32* %8, align 4
  br label %22

20:                                               ; preds = %3
  store i32 14, i32* %8, align 4
  br label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %175

22:                                               ; preds = %20, %19, %18
  %23 = load i64, i64* %7, align 8
  %24 = lshr i64 %23, 2
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %8, align 4
  %27 = add i32 %26, 1
  %28 = shl i32 %27, 2
  store i32 %28, i32* %13, align 4
  %29 = getelementptr inbounds [60 x i32], [60 x i32]* %15, i64 0, i64 0
  %30 = load i64, i64* %7, align 8
  %31 = lshr i64 %30, 2
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @br_range_dec32le(i32* %29, i64 %31, i8* %32)
  %34 = load i64, i64* %7, align 8
  %35 = lshr i64 %34, 2
  %36 = sub i64 %35, 1
  %37 = getelementptr inbounds [60 x i32], [60 x i32]* %15, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %92, %22
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %95

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load i32, i32* %14, align 4
  %49 = shl i32 %48, 24
  %50 = load i32, i32* %14, align 4
  %51 = ashr i32 %50, 8
  %52 = or i32 %49, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @sub_word(i32 %53)
  %55 = load i32*, i32** @Rcon, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = xor i32 %54, %59
  store i32 %60, i32* %14, align 4
  br label %71

61:                                               ; preds = %44
  %62 = load i32, i32* %12, align 4
  %63 = icmp sgt i32 %62, 6
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 4
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @sub_word(i32 %68)
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %67, %64, %61
  br label %71

71:                                               ; preds = %70, %47
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %12, align 4
  %74 = sub nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [60 x i32], [60 x i32]* %15, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %14, align 4
  %79 = xor i32 %78, %77
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [60 x i32], [60 x i32]* %15, i64 0, i64 %82
  store i32 %80, i32* %83, align 4
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %71
  store i32 0, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %88, %71
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %40

95:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %96

96:                                               ; preds = %168, %95
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %173

100:                                              ; preds = %96
  %101 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %102 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 4
  %103 = getelementptr inbounds [60 x i32], [60 x i32]* %15, i64 0, i64 0
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = call i32 @br_aes_ct64_interleave_in(i32* %101, i32* %102, i32* %106)
  %108 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %109 = load i32, i32* %108, align 16
  %110 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  store i32 %109, i32* %110, align 4
  %111 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %112 = load i32, i32* %111, align 16
  %113 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 2
  store i32 %112, i32* %113, align 8
  %114 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %115 = load i32, i32* %114, align 16
  %116 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 3
  store i32 %115, i32* %116, align 4
  %117 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 4
  %118 = load i32, i32* %117, align 16
  %119 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 5
  store i32 %118, i32* %119, align 4
  %120 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 4
  %121 = load i32, i32* %120, align 16
  %122 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 6
  store i32 %121, i32* %122, align 8
  %123 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 4
  %124 = load i32, i32* %123, align 16
  %125 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 7
  store i32 %124, i32* %125, align 4
  %126 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %127 = call i32 @br_aes_ct64_ortho(i32* %126)
  %128 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %129 = load i32, i32* %128, align 16
  %130 = and i32 %129, 286331153
  %131 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 572662306
  %134 = or i32 %130, %133
  %135 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 2
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, 1145324612
  %138 = or i32 %134, %137
  %139 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 3
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, -2004318072
  %142 = or i32 %138, %141
  %143 = load i32*, i32** %5, align 8
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 0
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  store i32 %142, i32* %147, align 4
  %148 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 4
  %149 = load i32, i32* %148, align 16
  %150 = and i32 %149, 286331153
  %151 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 5
  %152 = load i32, i32* %151, align 4
  %153 = and i32 %152, 572662306
  %154 = or i32 %150, %153
  %155 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 6
  %156 = load i32, i32* %155, align 8
  %157 = and i32 %156, 1145324612
  %158 = or i32 %154, %157
  %159 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 7
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, -2004318072
  %162 = or i32 %158, %161
  %163 = load i32*, i32** %5, align 8
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  store i32 %162, i32* %167, align 4
  br label %168

168:                                              ; preds = %100
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 4
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, 2
  store i32 %172, i32* %10, align 4
  br label %96

173:                                              ; preds = %96
  %174 = load i32, i32* %8, align 4
  store i32 %174, i32* %4, align 4
  br label %175

175:                                              ; preds = %173, %21
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i32 @br_range_dec32le(i32*, i64, i8*) #1

declare dso_local i32 @sub_word(i32) #1

declare dso_local i32 @br_aes_ct64_interleave_in(i32*, i32*, i32*) #1

declare dso_local i32 @br_aes_ct64_ortho(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
