; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct_ctrcbc.c_br_aes_ct_ctrcbc_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct_ctrcbc.c_br_aes_ct_ctrcbc_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_aes_ct_ctrcbc_decrypt(%struct.TYPE_3__* %0, i8* %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [120 x i32], align 16
  %22 = alloca [8 x i32], align 16
  %23 = alloca i32, align 4
  %24 = alloca [16 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %25 = getelementptr inbounds [120 x i32], [120 x i32]* %21, i64 0, i64 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @br_aes_ct_skey_expand(i32* %25, i32 %28, i32 %31)
  %33 = load i8*, i8** %7, align 8
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = call i32 @br_dec32be(i8* %35)
  store i32 %36, i32* %13, align 4
  %37 = load i8*, i8** %12, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 4
  %39 = call i32 @br_dec32be(i8* %38)
  store i32 %39, i32* %14, align 4
  %40 = load i8*, i8** %12, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 8
  %42 = call i32 @br_dec32be(i8* %41)
  store i32 %42, i32* %15, align 4
  %43 = load i8*, i8** %12, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 12
  %45 = call i32 @br_dec32be(i8* %44)
  store i32 %45, i32* %16, align 4
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = call i32 @br_dec32le(i8* %47)
  store i32 %48, i32* %17, align 4
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 4
  %51 = call i32 @br_dec32le(i8* %50)
  store i32 %51, i32* %18, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 8
  %54 = call i32 @br_dec32le(i8* %53)
  store i32 %54, i32* %19, align 4
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 12
  %57 = call i32 @br_dec32le(i8* %56)
  store i32 %57, i32* %20, align 4
  %58 = load i8*, i8** %9, align 8
  store i8* %58, i8** %11, align 8
  br label %59

59:                                               ; preds = %62, %5
  %60 = load i64, i64* %10, align 8
  %61 = icmp ugt i64 %60, 0
  br i1 %61, label %62, label %179

62:                                               ; preds = %59
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @br_swap32(i32 %63)
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  store i32 %64, i32* %65, align 16
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @br_swap32(i32 %66)
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 2
  store i32 %67, i32* %68, align 8
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @br_swap32(i32 %69)
  %71 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 4
  store i32 %70, i32* %71, align 16
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @br_swap32(i32 %72)
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 6
  store i32 %73, i32* %74, align 8
  %75 = load i32, i32* %16, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %16, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  %79 = sub nsw i32 0, %78
  %80 = or i32 %77, %79
  %81 = xor i32 %80, -1
  %82 = ashr i32 %81, 31
  store i32 %82, i32* %23, align 4
  %83 = load i32, i32* %23, align 4
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %15, align 4
  %88 = sub nsw i32 0, %87
  %89 = or i32 %86, %88
  %90 = xor i32 %89, -1
  %91 = ashr i32 %90, 31
  %92 = sub nsw i32 0, %91
  %93 = load i32, i32* %23, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %23, align 4
  %95 = load i32, i32* %23, align 4
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = sub nsw i32 0, %99
  %101 = or i32 %98, %100
  %102 = xor i32 %101, -1
  %103 = ashr i32 %102, 31
  %104 = sub nsw i32 0, %103
  %105 = load i32, i32* %23, align 4
  %106 = and i32 %105, %104
  store i32 %106, i32* %23, align 4
  %107 = load i32, i32* %23, align 4
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %17, align 4
  %111 = load i8*, i8** %11, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  %113 = call i32 @br_dec32le(i8* %112)
  %114 = xor i32 %110, %113
  %115 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 1
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* %18, align 4
  %117 = load i8*, i8** %11, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 4
  %119 = call i32 @br_dec32le(i8* %118)
  %120 = xor i32 %116, %119
  %121 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 3
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* %19, align 4
  %123 = load i8*, i8** %11, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 8
  %125 = call i32 @br_dec32le(i8* %124)
  %126 = xor i32 %122, %125
  %127 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 5
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* %20, align 4
  %129 = load i8*, i8** %11, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 12
  %131 = call i32 @br_dec32le(i8* %130)
  %132 = xor i32 %128, %131
  %133 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 7
  store i32 %132, i32* %133, align 4
  %134 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  %135 = call i32 @br_aes_ct_ortho(i32* %134)
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds [120 x i32], [120 x i32]* %21, i64 0, i64 0
  %140 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  %141 = call i32 @br_aes_ct_bitslice_encrypt(i32 %138, i32* %139, i32* %140)
  %142 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  %143 = call i32 @br_aes_ct_ortho(i32* %142)
  %144 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 0, i64 0
  %145 = getelementptr inbounds i8, i8* %144, i64 0
  %146 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  %147 = load i32, i32* %146, align 16
  %148 = call i32 @br_enc32le(i8* %145, i32 %147)
  %149 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 0, i64 0
  %150 = getelementptr inbounds i8, i8* %149, i64 4
  %151 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 2
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @br_enc32le(i8* %150, i32 %152)
  %154 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 0, i64 0
  %155 = getelementptr inbounds i8, i8* %154, i64 8
  %156 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 4
  %157 = load i32, i32* %156, align 16
  %158 = call i32 @br_enc32le(i8* %155, i32 %157)
  %159 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 0, i64 0
  %160 = getelementptr inbounds i8, i8* %159, i64 12
  %161 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 6
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @br_enc32le(i8* %160, i32 %162)
  %164 = load i8*, i8** %11, align 8
  %165 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 0, i64 0
  %166 = call i32 @xorbuf(i8* %164, i8* %165, i32 16)
  %167 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 1
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %17, align 4
  %169 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 3
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %18, align 4
  %171 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 5
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %19, align 4
  %173 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 7
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %20, align 4
  %175 = load i8*, i8** %11, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 16
  store i8* %176, i8** %11, align 8
  %177 = load i64, i64* %10, align 8
  %178 = sub i64 %177, 16
  store i64 %178, i64* %10, align 8
  br label %59

179:                                              ; preds = %59
  %180 = load i8*, i8** %12, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 0
  %182 = load i32, i32* %13, align 4
  %183 = call i32 @br_enc32be(i8* %181, i32 %182)
  %184 = load i8*, i8** %12, align 8
  %185 = getelementptr inbounds i8, i8* %184, i64 4
  %186 = load i32, i32* %14, align 4
  %187 = call i32 @br_enc32be(i8* %185, i32 %186)
  %188 = load i8*, i8** %12, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 8
  %190 = load i32, i32* %15, align 4
  %191 = call i32 @br_enc32be(i8* %189, i32 %190)
  %192 = load i8*, i8** %12, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 12
  %194 = load i32, i32* %16, align 4
  %195 = call i32 @br_enc32be(i8* %193, i32 %194)
  %196 = load i8*, i8** %8, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 0
  %198 = load i32, i32* %17, align 4
  %199 = call i32 @br_enc32le(i8* %197, i32 %198)
  %200 = load i8*, i8** %8, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 4
  %202 = load i32, i32* %18, align 4
  %203 = call i32 @br_enc32le(i8* %201, i32 %202)
  %204 = load i8*, i8** %8, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 8
  %206 = load i32, i32* %19, align 4
  %207 = call i32 @br_enc32le(i8* %205, i32 %206)
  %208 = load i8*, i8** %8, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 12
  %210 = load i32, i32* %20, align 4
  %211 = call i32 @br_enc32le(i8* %209, i32 %210)
  ret void
}

declare dso_local i32 @br_aes_ct_skey_expand(i32*, i32, i32) #1

declare dso_local i32 @br_dec32be(i8*) #1

declare dso_local i32 @br_dec32le(i8*) #1

declare dso_local i32 @br_swap32(i32) #1

declare dso_local i32 @br_aes_ct_ortho(i32*) #1

declare dso_local i32 @br_aes_ct_bitslice_encrypt(i32, i32*, i32*) #1

declare dso_local i32 @br_enc32le(i8*, i32) #1

declare dso_local i32 @xorbuf(i8*, i8*, i32) #1

declare dso_local i32 @br_enc32be(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
