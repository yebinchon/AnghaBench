; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct64_ctr.c_br_aes_ct64_ctr_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct64_ctr.c_br_aes_ct64_ctr_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_aes_ct64_ctr_run(%struct.TYPE_3__* %0, i8* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [16 x i32], align 16
  %13 = alloca [120 x i32], align 16
  %14 = alloca [8 x i32], align 16
  %15 = alloca [16 x i32], align 16
  %16 = alloca [64 x i8], align 16
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %18 = getelementptr inbounds [120 x i32], [120 x i32]* %13, i64 0, i64 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @br_aes_ct64_skey_expand(i32* %18, i32 %21, i32 %24)
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @br_range_dec32le(i32* %26, i32 3, i8* %27)
  %29 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %32 = call i32 @memcpy(i32* %30, i32* %31, i32 12)
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %34 = getelementptr inbounds i32, i32* %33, i64 8
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %36 = call i32 @memcpy(i32* %34, i32* %35, i32 12)
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %38 = getelementptr inbounds i32, i32* %37, i64 12
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %40 = call i32 @memcpy(i32* %38, i32* %39, i32 12)
  %41 = load i8*, i8** %9, align 8
  store i8* %41, i8** %11, align 8
  br label %42

42:                                               ; preds = %134, %5
  %43 = load i64, i64* %10, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %144

45:                                               ; preds = %42
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  %48 = call i32 @memcpy(i32* %46, i32* %47, i32 64)
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @br_swap32(i32 %49)
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 3
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i32 @br_swap32(i32 %53)
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 7
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 2
  %58 = call i32 @br_swap32(i32 %57)
  %59 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 11
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 3
  %62 = call i32 @br_swap32(i32 %61)
  %63 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 15
  store i32 %62, i32* %63, align 4
  store i32 0, i32* %17, align 4
  br label %64

64:                                               ; preds = %81, %45
  %65 = load i32, i32* %17, align 4
  %66 = icmp slt i32 %65, 4
  br i1 %66, label %67, label %84

67:                                               ; preds = %64
  %68 = load i32, i32* %17, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 %69
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 %73
  %75 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %76 = load i32, i32* %17, align 4
  %77 = shl i32 %76, 2
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = call i32 @br_aes_ct64_interleave_in(i32* %70, i32* %74, i32* %79)
  br label %81

81:                                               ; preds = %67
  %82 = load i32, i32* %17, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %17, align 4
  br label %64

84:                                               ; preds = %64
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %86 = call i32 @br_aes_ct64_ortho(i32* %85)
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds [120 x i32], [120 x i32]* %13, i64 0, i64 0
  %91 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %92 = call i32 @br_aes_ct64_bitslice_encrypt(i32 %89, i32* %90, i32* %91)
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %94 = call i32 @br_aes_ct64_ortho(i32* %93)
  store i32 0, i32* %17, align 4
  br label %95

95:                                               ; preds = %114, %84
  %96 = load i32, i32* %17, align 4
  %97 = icmp slt i32 %96, 4
  br i1 %97, label %98, label %117

98:                                               ; preds = %95
  %99 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %100 = load i32, i32* %17, align 4
  %101 = shl i32 %100, 2
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %17, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %17, align 4
  %109 = add nsw i32 %108, 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @br_aes_ct64_interleave_out(i32* %103, i32 %107, i32 %112)
  br label %114

114:                                              ; preds = %98
  %115 = load i32, i32* %17, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %17, align 4
  br label %95

117:                                              ; preds = %95
  %118 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %119 = getelementptr inbounds [16 x i32], [16 x i32]* %15, i64 0, i64 0
  %120 = call i32 @br_range_enc32le(i8* %118, i32* %119, i32 16)
  %121 = load i64, i64* %10, align 8
  %122 = icmp ule i64 %121, 64
  br i1 %122, label %123, label %134

123:                                              ; preds = %117
  %124 = load i8*, i8** %11, align 8
  %125 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %126 = load i64, i64* %10, align 8
  %127 = trunc i64 %126 to i32
  %128 = call i32 @xorbuf(i8* %124, i8* %125, i32 %127)
  %129 = load i64, i64* %10, align 8
  %130 = trunc i64 %129 to i32
  %131 = ashr i32 %130, 4
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %8, align 4
  br label %144

134:                                              ; preds = %117
  %135 = load i8*, i8** %11, align 8
  %136 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %137 = call i32 @xorbuf(i8* %135, i8* %136, i32 64)
  %138 = load i8*, i8** %11, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 64
  store i8* %139, i8** %11, align 8
  %140 = load i64, i64* %10, align 8
  %141 = sub i64 %140, 64
  store i64 %141, i64* %10, align 8
  %142 = load i32, i32* %8, align 4
  %143 = add nsw i32 %142, 4
  store i32 %143, i32* %8, align 4
  br label %42

144:                                              ; preds = %123, %42
  %145 = load i32, i32* %8, align 4
  ret i32 %145
}

declare dso_local i32 @br_aes_ct64_skey_expand(i32*, i32, i32) #1

declare dso_local i32 @br_range_dec32le(i32*, i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @br_swap32(i32) #1

declare dso_local i32 @br_aes_ct64_interleave_in(i32*, i32*, i32*) #1

declare dso_local i32 @br_aes_ct64_ortho(i32*) #1

declare dso_local i32 @br_aes_ct64_bitslice_encrypt(i32, i32*, i32*) #1

declare dso_local i32 @br_aes_ct64_interleave_out(i32*, i32, i32) #1

declare dso_local i32 @br_range_enc32le(i8*, i32*, i32) #1

declare dso_local i32 @xorbuf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
