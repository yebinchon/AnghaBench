; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ecdsa_i15_sign_raw.c_br_ecdsa_i15_sign_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ecdsa_i15_sign_raw.c_br_ecdsa_i15_sign_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i8* }
%struct.TYPE_14__ = type { i32, i64 (i8*, i8*, i64, i32)* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32, i32 }

@I15_LEN = common dso_local global i32 0, align 4
@ORDER_LEN = common dso_local global i32 0, align 4
@POINT_LEN = common dso_local global i32 0, align 4
@br_secp256r1 = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@br_secp384r1 = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@br_secp521r1 = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@BR_HASHDESC_OUT_OFF = common dso_local global i64 0, align 8
@BR_HASHDESC_OUT_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @br_ecdsa_i15_sign_raw(%struct.TYPE_14__* %0, %struct.TYPE_12__* %1, i8* %2, %struct.TYPE_13__* %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %10, align 8
  store i8* %4, i8** %11, align 8
  %31 = load i32, i32* @I15_LEN, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %13, align 8
  %34 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %14, align 8
  %35 = load i32, i32* @I15_LEN, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %15, align 8
  %38 = load i32, i32* @I15_LEN, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca i32, i64 %39, align 16
  store i64 %39, i64* %16, align 8
  %41 = load i32, i32* @I15_LEN, align 4
  %42 = zext i32 %41 to i64
  %43 = alloca i32, i64 %42, align 16
  store i64 %42, i64* %17, align 8
  %44 = load i32, i32* @I15_LEN, align 4
  %45 = zext i32 %44 to i64
  %46 = alloca i32, i64 %45, align 16
  store i64 %45, i64* %18, align 8
  %47 = load i32, i32* @I15_LEN, align 4
  %48 = zext i32 %47 to i64
  %49 = alloca i32, i64 %48, align 16
  store i64 %48, i64* %19, align 8
  %50 = load i32, i32* @I15_LEN, align 4
  %51 = zext i32 %50 to i64
  %52 = alloca i32, i64 %51, align 16
  store i64 %51, i64* %20, align 8
  %53 = load i32, i32* @I15_LEN, align 4
  %54 = zext i32 %53 to i64
  %55 = alloca i32, i64 %54, align 16
  store i64 %54, i64* %21, align 8
  %56 = load i32, i32* @ORDER_LEN, align 4
  %57 = shl i32 %56, 1
  %58 = zext i32 %57 to i64
  %59 = alloca i8, i64 %58, align 16
  store i64 %58, i64* %22, align 8
  %60 = load i32, i32* @POINT_LEN, align 4
  %61 = zext i32 %60 to i64
  %62 = alloca i8, i64 %61, align 16
  store i64 %61, i64* %23, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %65, %68
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  store i32 1, i32* %30, align 4
  br label %213

73:                                               ; preds = %5
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  switch i32 %76, label %80 [
    i32 130, label %77
    i32 129, label %78
    i32 128, label %79
  ]

77:                                               ; preds = %73
  store %struct.TYPE_15__* @br_secp256r1, %struct.TYPE_15__** %12, align 8
  br label %81

78:                                               ; preds = %73
  store %struct.TYPE_15__* @br_secp384r1, %struct.TYPE_15__** %12, align 8
  br label %81

79:                                               ; preds = %73
  store %struct.TYPE_15__* @br_secp521r1, %struct.TYPE_15__** %12, align 8
  br label %81

80:                                               ; preds = %73
  store i64 0, i64* %6, align 8
  store i32 1, i32* %30, align 4
  br label %213

81:                                               ; preds = %79, %78, %77
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %25, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load i64, i64* %25, align 8
  %89 = call i32 @br_i15_decode(i32* %34, i8* %87, i64 %88)
  %90 = getelementptr inbounds i32, i32* %34, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @br_i15_ninv15(i32 %91)
  store i32 %92, i32* %27, align 4
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @br_i15_decode_mod(i32* %43, i32 %95, i32 %98, i32* %34)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %81
  store i64 0, i64* %6, align 8
  store i32 1, i32* %30, align 4
  br label %213

102:                                              ; preds = %81
  %103 = call i64 @br_i15_iszero(i32* %43)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i64 0, i64* %6, align 8
  store i32 1, i32* %30, align 4
  br label %213

106:                                              ; preds = %102
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @BR_HASHDESC_OUT_OFF, align 8
  %111 = lshr i64 %109, %110
  %112 = load i64, i64* @BR_HASHDESC_OUT_MASK, align 8
  %113 = and i64 %111, %112
  store i64 %113, i64* %24, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = load i64, i64* %24, align 8
  %116 = getelementptr inbounds i32, i32* %34, i64 0
  %117 = load i32, i32* %116, align 16
  %118 = call i32 @br_ecdsa_i15_bits2int(i32* %46, i8* %114, i64 %115, i32 %117)
  %119 = call i32 @br_i15_sub(i32* %46, i32* %34, i32 0)
  %120 = xor i32 %119, 1
  %121 = call i32 @br_i15_sub(i32* %46, i32* %34, i32 %120)
  %122 = load i64, i64* %25, align 8
  %123 = call i32 @br_i15_encode(i8* %59, i64 %122, i32* %43)
  %124 = load i64, i64* %25, align 8
  %125 = getelementptr inbounds i8, i8* %59, i64 %124
  %126 = load i64, i64* %25, align 8
  %127 = call i32 @br_i15_encode(i8* %125, i64 %126, i32* %46)
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %129 = load i64, i64* %25, align 8
  %130 = shl i64 %129, 1
  %131 = call i32 @br_hmac_drbg_init(i32* %29, %struct.TYPE_12__* %128, i8* %59, i64 %130)
  br label %132

132:                                              ; preds = %146, %141, %106
  %133 = load i64, i64* %25, align 8
  %134 = call i32 @br_hmac_drbg_generate(i32* %29, i8* %59, i64 %133)
  %135 = load i64, i64* %25, align 8
  %136 = getelementptr inbounds i32, i32* %34, i64 0
  %137 = load i32, i32* %136, align 16
  %138 = call i32 @br_ecdsa_i15_bits2int(i32* %49, i8* %59, i64 %135, i32 %137)
  %139 = call i64 @br_i15_iszero(i32* %49)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  br label %132

142:                                              ; preds = %132
  %143 = call i32 @br_i15_sub(i32* %49, i32* %34, i32 0)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  br label %147

146:                                              ; preds = %142
  br label %132

147:                                              ; preds = %145
  %148 = load i64, i64* %25, align 8
  %149 = call i32 @br_i15_encode(i8* %59, i64 %148, i32* %49)
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  %152 = load i64 (i8*, i8*, i64, i32)*, i64 (i8*, i8*, i64, i32)** %151, align 8
  %153 = load i64, i64* %25, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i64 %152(i8* %62, i8* %59, i64 %153, i32 %156)
  store i64 %157, i64* %26, align 8
  %158 = getelementptr inbounds i32, i32* %34, i64 0
  %159 = load i32, i32* %158, align 16
  %160 = call i32 @br_i15_zero(i32* %37, i32 %159)
  %161 = getelementptr inbounds i8, i8* %62, i64 1
  %162 = load i64, i64* %26, align 8
  %163 = lshr i64 %162, 1
  %164 = call i32 @br_i15_decode(i32* %37, i8* %161, i64 %163)
  %165 = getelementptr inbounds i32, i32* %34, i64 0
  %166 = load i32, i32* %165, align 16
  %167 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %166, i32* %167, align 16
  %168 = call i32 @br_i15_sub(i32* %37, i32* %34, i32 0)
  %169 = xor i32 %168, 1
  %170 = call i32 @br_i15_sub(i32* %37, i32* %34, i32 %169)
  %171 = load i32, i32* %27, align 4
  %172 = call i32 @br_i15_from_monty(i32* %49, i32* %34, i32 %171)
  %173 = load i32, i32* %27, align 4
  %174 = call i32 @br_i15_from_monty(i32* %49, i32* %34, i32 %173)
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = load i64, i64* %25, align 8
  %179 = call i32 @memcpy(i8* %59, i8* %177, i64 %178)
  %180 = load i64, i64* %25, align 8
  %181 = sub i64 %180, 1
  %182 = getelementptr inbounds i8, i8* %59, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = sub nsw i32 %184, 2
  %186 = trunc i32 %185 to i8
  store i8 %186, i8* %182, align 1
  %187 = load i64, i64* %25, align 8
  %188 = load i32, i32* %27, align 4
  %189 = call i32 @br_i15_modpow(i32* %49, i8* %59, i64 %187, i32* %34, i32 %188, i32* %52, i32* %55)
  %190 = load i32, i32* %27, align 4
  %191 = call i32 @br_i15_from_monty(i32* %46, i32* %34, i32 %190)
  %192 = load i32, i32* %27, align 4
  %193 = call i32 @br_i15_montymul(i32* %52, i32* %43, i32* %37, i32* %34, i32 %192)
  %194 = call i32 @br_i15_add(i32* %52, i32* %46, i32 1)
  store i32 %194, i32* %28, align 4
  %195 = call i32 @br_i15_sub(i32* %52, i32* %34, i32 0)
  %196 = xor i32 %195, 1
  %197 = load i32, i32* %28, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %28, align 4
  %199 = load i32, i32* %28, align 4
  %200 = call i32 @br_i15_sub(i32* %52, i32* %34, i32 %199)
  %201 = load i32, i32* %27, align 4
  %202 = call i32 @br_i15_montymul(i32* %40, i32* %52, i32* %49, i32* %34, i32 %201)
  %203 = load i8*, i8** %11, align 8
  %204 = load i64, i64* %25, align 8
  %205 = call i32 @br_i15_encode(i8* %203, i64 %204, i32* %37)
  %206 = load i8*, i8** %11, align 8
  %207 = load i64, i64* %25, align 8
  %208 = getelementptr inbounds i8, i8* %206, i64 %207
  %209 = load i64, i64* %25, align 8
  %210 = call i32 @br_i15_encode(i8* %208, i64 %209, i32* %40)
  %211 = load i64, i64* %25, align 8
  %212 = shl i64 %211, 1
  store i64 %212, i64* %6, align 8
  store i32 1, i32* %30, align 4
  br label %213

213:                                              ; preds = %147, %105, %101, %80, %72
  %214 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %214)
  %215 = load i64, i64* %6, align 8
  ret i64 %215
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @br_i15_decode(i32*, i8*, i64) #2

declare dso_local i32 @br_i15_ninv15(i32) #2

declare dso_local i32 @br_i15_decode_mod(i32*, i32, i32, i32*) #2

declare dso_local i64 @br_i15_iszero(i32*) #2

declare dso_local i32 @br_ecdsa_i15_bits2int(i32*, i8*, i64, i32) #2

declare dso_local i32 @br_i15_sub(i32*, i32*, i32) #2

declare dso_local i32 @br_i15_encode(i8*, i64, i32*) #2

declare dso_local i32 @br_hmac_drbg_init(i32*, %struct.TYPE_12__*, i8*, i64) #2

declare dso_local i32 @br_hmac_drbg_generate(i32*, i8*, i64) #2

declare dso_local i32 @br_i15_zero(i32*, i32) #2

declare dso_local i32 @br_i15_from_monty(i32*, i32*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @br_i15_modpow(i32*, i8*, i64, i32*, i32, i32*, i32*) #2

declare dso_local i32 @br_i15_montymul(i32*, i32*, i32*, i32*, i32) #2

declare dso_local i32 @br_i15_add(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
