; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct.c_br_aes_ct_keysched.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct.c_br_aes_ct_keysched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Rcon = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_aes_ct_keysched(i32* %0, i8* %1, i64 %2) #0 {
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
  %15 = alloca [120 x i32], align 16
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  switch i64 %16, label %20 [
    i64 16, label %17
    i64 24, label %18
    i64 32, label %19
  ]

17:                                               ; preds = %3
  store i32 10, i32* %8, align 4
  br label %21

18:                                               ; preds = %3
  store i32 12, i32* %8, align 4
  br label %21

19:                                               ; preds = %3
  store i32 14, i32* %8, align 4
  br label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %165

21:                                               ; preds = %19, %18, %17
  %22 = load i64, i64* %7, align 8
  %23 = lshr i64 %22, 2
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %8, align 4
  %26 = add i32 %25, 1
  %27 = shl i32 %26, 2
  store i32 %27, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %51, %21
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %54

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = shl i32 %34, 2
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = call i32 @br_dec32le(i8* %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %9, align 4
  %41 = shl i32 %40, 1
  %42 = add nsw i32 %41, 0
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [120 x i32], [120 x i32]* %15, i64 0, i64 %43
  store i32 %39, i32* %44, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %9, align 4
  %47 = shl i32 %46, 1
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [120 x i32], [120 x i32]* %15, i64 0, i64 %49
  store i32 %45, i32* %50, align 4
  br label %51

51:                                               ; preds = %32
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %28

54:                                               ; preds = %28
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %117, %54
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %120

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = load i32, i32* %14, align 4
  %65 = shl i32 %64, 24
  %66 = load i32, i32* %14, align 4
  %67 = ashr i32 %66, 8
  %68 = or i32 %65, %67
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @sub_word(i32 %69)
  %71 = load i32*, i32** @Rcon, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = xor i32 %70, %75
  store i32 %76, i32* %14, align 4
  br label %87

77:                                               ; preds = %60
  %78 = load i32, i32* %12, align 4
  %79 = icmp sgt i32 %78, 6
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 4
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @sub_word(i32 %84)
  store i32 %85, i32* %14, align 4
  br label %86

86:                                               ; preds = %83, %80, %77
  br label %87

87:                                               ; preds = %86, %63
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %12, align 4
  %90 = sub nsw i32 %88, %89
  %91 = shl i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [120 x i32], [120 x i32]* %15, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %14, align 4
  %96 = xor i32 %95, %94
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %9, align 4
  %99 = shl i32 %98, 1
  %100 = add nsw i32 %99, 0
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [120 x i32], [120 x i32]* %15, i64 0, i64 %101
  store i32 %97, i32* %102, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %9, align 4
  %105 = shl i32 %104, 1
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [120 x i32], [120 x i32]* %15, i64 0, i64 %107
  store i32 %103, i32* %108, align 4
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %87
  store i32 0, i32* %10, align 4
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %113, %87
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %56

120:                                              ; preds = %56
  store i32 0, i32* %9, align 4
  br label %121

121:                                              ; preds = %132, %120
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %13, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %121
  %126 = getelementptr inbounds [120 x i32], [120 x i32]* %15, i64 0, i64 0
  %127 = load i32, i32* %9, align 4
  %128 = shl i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = call i32 @br_aes_ct_ortho(i32* %130)
  br label %132

132:                                              ; preds = %125
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 4
  store i32 %134, i32* %9, align 4
  br label %121

135:                                              ; preds = %121
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %136

136:                                              ; preds = %158, %135
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %163

140:                                              ; preds = %136
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 0
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [120 x i32], [120 x i32]* %15, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, 1431655765
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [120 x i32], [120 x i32]* %15, i64 0, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, -1431655766
  %153 = or i32 %146, %152
  %154 = load i32*, i32** %5, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %153, i32* %157, align 4
  br label %158

158:                                              ; preds = %140
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 2
  store i32 %162, i32* %10, align 4
  br label %136

163:                                              ; preds = %136
  %164 = load i32, i32* %8, align 4
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %163, %20
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @br_dec32le(i8*) #1

declare dso_local i32 @sub_word(i32) #1

declare dso_local i32 @br_aes_ct_ortho(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
