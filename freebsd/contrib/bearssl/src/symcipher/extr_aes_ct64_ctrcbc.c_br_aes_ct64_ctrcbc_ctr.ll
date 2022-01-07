; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct64_ctrcbc.c_br_aes_ct64_ctrcbc_ctr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct64_ctrcbc.c_br_aes_ct64_ctrcbc_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_aes_ct64_ctrcbc_ctr(%struct.TYPE_3__* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [120 x i32], align 16
  %16 = alloca [8 x i32], align 16
  %17 = alloca [16 x i32], align 16
  %18 = alloca [64 x i8], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %22 = getelementptr inbounds [120 x i32], [120 x i32]* %15, i64 0, i64 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @br_aes_ct64_skey_expand(i32* %22, i32 %25, i32 %28)
  %30 = load i8*, i8** %6, align 8
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = call i32 @br_dec32be(i8* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 4
  %36 = call i32 @br_dec32be(i8* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 8
  %39 = call i32 @br_dec32be(i8* %38)
  store i32 %39, i32* %13, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 12
  %42 = call i32 @br_dec32be(i8* %41)
  store i32 %42, i32* %14, align 4
  %43 = load i8*, i8** %7, align 8
  store i8* %43, i8** %9, align 8
  br label %44

44:                                               ; preds = %200, %4
  %45 = load i64, i64* %8, align 8
  %46 = icmp ugt i64 %45, 0
  br i1 %46, label %47, label %208

47:                                               ; preds = %44
  %48 = load i64, i64* %8, align 8
  %49 = icmp uge i64 %48, 64
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %55

51:                                               ; preds = %47
  %52 = load i64, i64* %8, align 8
  %53 = lshr i64 %52, 2
  %54 = trunc i64 %53 to i32
  br label %55

55:                                               ; preds = %51, %50
  %56 = phi i32 [ 16, %50 ], [ %54, %51 ]
  store i32 %56, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %57

57:                                               ; preds = %121, %55
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* %20, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %124

61:                                               ; preds = %57
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @br_swap32(i32 %62)
  %64 = load i32, i32* %19, align 4
  %65 = add nsw i32 %64, 0
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 %66
  store i32 %63, i32* %67, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @br_swap32(i32 %68)
  %70 = load i32, i32* %19, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 %72
  store i32 %69, i32* %73, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @br_swap32(i32 %74)
  %76 = load i32, i32* %19, align 4
  %77 = add nsw i32 %76, 2
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 %78
  store i32 %75, i32* %79, align 4
  %80 = load i32, i32* %14, align 4
  %81 = call i32 @br_swap32(i32 %80)
  %82 = load i32, i32* %19, align 4
  %83 = add nsw i32 %82, 3
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 %84
  store i32 %81, i32* %85, align 4
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = sub nsw i32 0, %89
  %91 = or i32 %88, %90
  %92 = xor i32 %91, -1
  %93 = ashr i32 %92, 31
  store i32 %93, i32* %21, align 4
  %94 = load i32, i32* %21, align 4
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = sub nsw i32 0, %98
  %100 = or i32 %97, %99
  %101 = xor i32 %100, -1
  %102 = ashr i32 %101, 31
  %103 = sub nsw i32 0, %102
  %104 = load i32, i32* %21, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %21, align 4
  %106 = load i32, i32* %21, align 4
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = sub nsw i32 0, %110
  %112 = or i32 %109, %111
  %113 = xor i32 %112, -1
  %114 = ashr i32 %113, 31
  %115 = sub nsw i32 0, %114
  %116 = load i32, i32* %21, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %21, align 4
  %118 = load i32, i32* %21, align 4
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %61
  %122 = load i32, i32* %19, align 4
  %123 = add nsw i32 %122, 4
  store i32 %123, i32* %19, align 4
  br label %57

124:                                              ; preds = %57
  %125 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %126 = load i32, i32* %19, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %19, align 4
  %130 = sub nsw i32 16, %129
  %131 = sext i32 %130 to i64
  %132 = mul i64 %131, 4
  %133 = trunc i64 %132 to i32
  %134 = call i32 @memset(i32* %128, i32 0, i32 %133)
  store i32 0, i32* %19, align 4
  br label %135

135:                                              ; preds = %152, %124
  %136 = load i32, i32* %19, align 4
  %137 = icmp slt i32 %136, 4
  br i1 %137, label %138, label %155

138:                                              ; preds = %135
  %139 = load i32, i32* %19, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 %140
  %142 = load i32, i32* %19, align 4
  %143 = add nsw i32 %142, 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 %144
  %146 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %147 = load i32, i32* %19, align 4
  %148 = shl i32 %147, 2
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  %151 = call i32 @br_aes_ct64_interleave_in(i32* %141, i32* %145, i32* %150)
  br label %152

152:                                              ; preds = %138
  %153 = load i32, i32* %19, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %19, align 4
  br label %135

155:                                              ; preds = %135
  %156 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %157 = call i32 @br_aes_ct64_ortho(i32* %156)
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds [120 x i32], [120 x i32]* %15, i64 0, i64 0
  %162 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %163 = call i32 @br_aes_ct64_bitslice_encrypt(i32 %160, i32* %161, i32* %162)
  %164 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %165 = call i32 @br_aes_ct64_ortho(i32* %164)
  store i32 0, i32* %19, align 4
  br label %166

166:                                              ; preds = %185, %155
  %167 = load i32, i32* %19, align 4
  %168 = icmp slt i32 %167, 4
  br i1 %168, label %169, label %188

169:                                              ; preds = %166
  %170 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %171 = load i32, i32* %19, align 4
  %172 = shl i32 %171, 2
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  %175 = load i32, i32* %19, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %19, align 4
  %180 = add nsw i32 %179, 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @br_aes_ct64_interleave_out(i32* %174, i32 %178, i32 %183)
  br label %185

185:                                              ; preds = %169
  %186 = load i32, i32* %19, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %19, align 4
  br label %166

188:                                              ; preds = %166
  %189 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %190 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %191 = call i32 @br_range_enc32le(i8* %189, i32* %190, i32 16)
  %192 = load i64, i64* %8, align 8
  %193 = icmp ule i64 %192, 64
  br i1 %193, label %194, label %200

194:                                              ; preds = %188
  %195 = load i8*, i8** %9, align 8
  %196 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %197 = load i64, i64* %8, align 8
  %198 = trunc i64 %197 to i32
  %199 = call i32 @xorbuf(i8* %195, i8* %196, i32 %198)
  br label %208

200:                                              ; preds = %188
  %201 = load i8*, i8** %9, align 8
  %202 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %203 = call i32 @xorbuf(i8* %201, i8* %202, i32 64)
  %204 = load i8*, i8** %9, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 64
  store i8* %205, i8** %9, align 8
  %206 = load i64, i64* %8, align 8
  %207 = sub i64 %206, 64
  store i64 %207, i64* %8, align 8
  br label %44

208:                                              ; preds = %194, %44
  %209 = load i8*, i8** %10, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 0
  %211 = load i32, i32* %11, align 4
  %212 = call i32 @br_enc32be(i8* %210, i32 %211)
  %213 = load i8*, i8** %10, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 4
  %215 = load i32, i32* %12, align 4
  %216 = call i32 @br_enc32be(i8* %214, i32 %215)
  %217 = load i8*, i8** %10, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 8
  %219 = load i32, i32* %13, align 4
  %220 = call i32 @br_enc32be(i8* %218, i32 %219)
  %221 = load i8*, i8** %10, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 12
  %223 = load i32, i32* %14, align 4
  %224 = call i32 @br_enc32be(i8* %222, i32 %223)
  ret void
}

declare dso_local i32 @br_aes_ct64_skey_expand(i32*, i32, i32) #1

declare dso_local i32 @br_dec32be(i8*) #1

declare dso_local i32 @br_swap32(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @br_aes_ct64_interleave_in(i32*, i32*, i32*) #1

declare dso_local i32 @br_aes_ct64_ortho(i32*) #1

declare dso_local i32 @br_aes_ct64_bitslice_encrypt(i32, i32*, i32*) #1

declare dso_local i32 @br_aes_ct64_interleave_out(i32*, i32, i32) #1

declare dso_local i32 @br_range_enc32le(i8*, i32*, i32) #1

declare dso_local i32 @xorbuf(i8*, i8*, i32) #1

declare dso_local i32 @br_enc32be(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
