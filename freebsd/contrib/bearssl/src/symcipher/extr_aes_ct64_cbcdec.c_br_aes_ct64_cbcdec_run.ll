; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct64_cbcdec.c_br_aes_ct64_cbcdec_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct64_cbcdec.c_br_aes_ct64_cbcdec_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_aes_ct64_cbcdec_run(%struct.TYPE_3__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [120 x i32], align 16
  %11 = alloca [4 x i32], align 16
  %12 = alloca [8 x i32], align 16
  %13 = alloca [16 x i32], align 16
  %14 = alloca [16 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = getelementptr inbounds [120 x i32], [120 x i32]* %10, i64 0, i64 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @br_aes_ct64_skey_expand(i32* %17, i32 %20, i32 %23)
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @br_range_dec32le(i32* %25, i64 4, i8* %26)
  %28 = load i8*, i8** %7, align 8
  store i8* %28, i8** %9, align 8
  br label %29

29:                                               ; preds = %179, %4
  %30 = load i64, i64* %8, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %184

32:                                               ; preds = %29
  %33 = load i64, i64* %8, align 8
  %34 = icmp uge i64 %33, 64
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @br_range_dec32le(i32* %36, i64 16, i8* %37)
  br label %45

39:                                               ; preds = %32
  %40 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %41 = load i64, i64* %8, align 8
  %42 = lshr i64 %41, 2
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @br_range_dec32le(i32* %40, i64 %42, i8* %43)
  br label %45

45:                                               ; preds = %39, %35
  store i32 0, i32* %15, align 4
  br label %46

46:                                               ; preds = %63, %45
  %47 = load i32, i32* %15, align 4
  %48 = icmp slt i32 %47, 4
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %51
  %53 = load i32, i32* %15, align 4
  %54 = add nsw i32 %53, 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %55
  %57 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %58 = load i32, i32* %15, align 4
  %59 = shl i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = call i32 @br_aes_ct64_interleave_in(i32* %52, i32* %56, i32* %61)
  br label %63

63:                                               ; preds = %49
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  br label %46

66:                                               ; preds = %46
  %67 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %68 = call i32 @br_aes_ct64_ortho(i32* %67)
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds [120 x i32], [120 x i32]* %10, i64 0, i64 0
  %73 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %74 = call i32 @br_aes_ct64_bitslice_decrypt(i32 %71, i32* %72, i32* %73)
  %75 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %76 = call i32 @br_aes_ct64_ortho(i32* %75)
  store i32 0, i32* %15, align 4
  br label %77

77:                                               ; preds = %96, %66
  %78 = load i32, i32* %15, align 4
  %79 = icmp slt i32 %78, 4
  br i1 %79, label %80, label %99

80:                                               ; preds = %77
  %81 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %82 = load i32, i32* %15, align 4
  %83 = shl i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @br_aes_ct64_interleave_out(i32* %85, i32 %89, i32 %94)
  br label %96

96:                                               ; preds = %80
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %15, align 4
  br label %77

99:                                               ; preds = %77
  store i32 0, i32* %15, align 4
  br label %100

100:                                              ; preds = %113, %99
  %101 = load i32, i32* %15, align 4
  %102 = icmp slt i32 %101, 4
  br i1 %102, label %103, label %116

103:                                              ; preds = %100
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = xor i32 %111, %107
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %103
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %15, align 4
  br label %100

116:                                              ; preds = %100
  %117 = load i64, i64* %8, align 8
  %118 = icmp uge i64 %117, 64
  br i1 %118, label %119, label %145

119:                                              ; preds = %116
  store i32 4, i32* %15, align 4
  br label %120

120:                                              ; preds = %134, %119
  %121 = load i32, i32* %15, align 4
  %122 = icmp slt i32 %121, 16
  br i1 %122, label %123, label %137

123:                                              ; preds = %120
  %124 = load i32, i32* %15, align 4
  %125 = sub nsw i32 %124, 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = xor i32 %132, %128
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %123
  %135 = load i32, i32* %15, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %15, align 4
  br label %120

137:                                              ; preds = %120
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %139 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %140 = getelementptr inbounds i32, i32* %139, i64 12
  %141 = call i32 @memcpy(i32* %138, i32* %140, i32 16)
  %142 = load i8*, i8** %9, align 8
  %143 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %144 = call i32 @br_range_enc32le(i8* %142, i32* %143, i32 16)
  br label %179

145:                                              ; preds = %116
  %146 = load i64, i64* %8, align 8
  %147 = lshr i64 %146, 2
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %16, align 4
  store i32 4, i32* %15, align 4
  br label %149

149:                                              ; preds = %164, %145
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* %16, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %167

153:                                              ; preds = %149
  %154 = load i32, i32* %15, align 4
  %155 = sub nsw i32 %154, 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %15, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = xor i32 %162, %158
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %153
  %165 = load i32, i32* %15, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %15, align 4
  br label %149

167:                                              ; preds = %149
  %168 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %169 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %170 = load i32, i32* %16, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = getelementptr inbounds i32, i32* %172, i64 -4
  %174 = call i32 @memcpy(i32* %168, i32* %173, i32 16)
  %175 = load i8*, i8** %9, align 8
  %176 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %177 = load i32, i32* %16, align 4
  %178 = call i32 @br_range_enc32le(i8* %175, i32* %176, i32 %177)
  br label %184

179:                                              ; preds = %137
  %180 = load i8*, i8** %9, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 64
  store i8* %181, i8** %9, align 8
  %182 = load i64, i64* %8, align 8
  %183 = sub i64 %182, 64
  store i64 %183, i64* %8, align 8
  br label %29

184:                                              ; preds = %167, %29
  %185 = load i8*, i8** %6, align 8
  %186 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %187 = call i32 @br_range_enc32le(i8* %185, i32* %186, i32 4)
  ret void
}

declare dso_local i32 @br_aes_ct64_skey_expand(i32*, i32, i32) #1

declare dso_local i32 @br_range_dec32le(i32*, i64, i8*) #1

declare dso_local i32 @br_aes_ct64_interleave_in(i32*, i32*, i32*) #1

declare dso_local i32 @br_aes_ct64_ortho(i32*) #1

declare dso_local i32 @br_aes_ct64_bitslice_decrypt(i32, i32*, i32*) #1

declare dso_local i32 @br_aes_ct64_interleave_out(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @br_range_enc32le(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
