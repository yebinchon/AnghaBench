; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct64_ctrcbc.c_br_aes_ct64_ctrcbc_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct64_ctrcbc.c_br_aes_ct64_ctrcbc_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_aes_ct64_ctrcbc_decrypt(%struct.TYPE_3__* %0, i8* %1, i8* %2, i8* %3, i64 %4) #0 {
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
  %23 = alloca [8 x i32], align 16
  %24 = alloca i32, align 4
  %25 = alloca [16 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %26 = getelementptr inbounds [120 x i32], [120 x i32]* %21, i64 0, i64 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @br_aes_ct64_skey_expand(i32* %26, i32 %29, i32 %32)
  %34 = load i8*, i8** %7, align 8
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = call i32 @br_dec32be(i8* %36)
  store i32 %37, i32* %13, align 4
  %38 = load i8*, i8** %12, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 4
  %40 = call i32 @br_dec32be(i8* %39)
  store i32 %40, i32* %14, align 4
  %41 = load i8*, i8** %12, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 8
  %43 = call i32 @br_dec32be(i8* %42)
  store i32 %43, i32* %15, align 4
  %44 = load i8*, i8** %12, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 12
  %46 = call i32 @br_dec32be(i8* %45)
  store i32 %46, i32* %16, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = call i32 @br_dec32le(i8* %48)
  store i32 %49, i32* %17, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 4
  %52 = call i32 @br_dec32le(i8* %51)
  store i32 %52, i32* %18, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 8
  %55 = call i32 @br_dec32le(i8* %54)
  store i32 %55, i32* %19, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 12
  %58 = call i32 @br_dec32le(i8* %57)
  store i32 %58, i32* %20, align 4
  %59 = load i8*, i8** %9, align 8
  store i8* %59, i8** %11, align 8
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  %61 = call i32 @memset(i32* %60, i32 0, i32 32)
  br label %62

62:                                               ; preds = %65, %5
  %63 = load i64, i64* %10, align 8
  %64 = icmp ugt i64 %63, 0
  br i1 %64, label %65, label %204

65:                                               ; preds = %62
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @br_swap32(i32 %66)
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  store i32 %67, i32* %68, align 16
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @br_swap32(i32 %69)
  %71 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 1
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %15, align 4
  %73 = call i32 @br_swap32(i32 %72)
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 2
  store i32 %73, i32* %74, align 8
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @br_swap32(i32 %75)
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 3
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %16, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %16, align 4
  %82 = sub nsw i32 0, %81
  %83 = or i32 %80, %82
  %84 = xor i32 %83, -1
  %85 = ashr i32 %84, 31
  store i32 %85, i32* %24, align 4
  %86 = load i32, i32* %24, align 4
  %87 = load i32, i32* %15, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = sub nsw i32 0, %90
  %92 = or i32 %89, %91
  %93 = xor i32 %92, -1
  %94 = ashr i32 %93, 31
  %95 = sub nsw i32 0, %94
  %96 = load i32, i32* %24, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %24, align 4
  %98 = load i32, i32* %24, align 4
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = sub nsw i32 0, %102
  %104 = or i32 %101, %103
  %105 = xor i32 %104, -1
  %106 = ashr i32 %105, 31
  %107 = sub nsw i32 0, %106
  %108 = load i32, i32* %24, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %24, align 4
  %110 = load i32, i32* %24, align 4
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %17, align 4
  %114 = load i8*, i8** %11, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = call i32 @br_dec32le(i8* %115)
  %117 = xor i32 %113, %116
  %118 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 4
  store i32 %117, i32* %118, align 16
  %119 = load i32, i32* %18, align 4
  %120 = load i8*, i8** %11, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 4
  %122 = call i32 @br_dec32le(i8* %121)
  %123 = xor i32 %119, %122
  %124 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 5
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* %19, align 4
  %126 = load i8*, i8** %11, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 8
  %128 = call i32 @br_dec32le(i8* %127)
  %129 = xor i32 %125, %128
  %130 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 6
  store i32 %129, i32* %130, align 8
  %131 = load i32, i32* %20, align 4
  %132 = load i8*, i8** %11, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 12
  %134 = call i32 @br_dec32le(i8* %133)
  %135 = xor i32 %131, %134
  %136 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 7
  store i32 %135, i32* %136, align 4
  %137 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  %138 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 4
  %139 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %140 = call i32 @br_aes_ct64_interleave_in(i32* %137, i32* %138, i32* %139)
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 1
  %142 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 5
  %143 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %144 = getelementptr inbounds i32, i32* %143, i64 4
  %145 = call i32 @br_aes_ct64_interleave_in(i32* %141, i32* %142, i32* %144)
  %146 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  %147 = call i32 @br_aes_ct64_ortho(i32* %146)
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds [120 x i32], [120 x i32]* %21, i64 0, i64 0
  %152 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  %153 = call i32 @br_aes_ct64_bitslice_encrypt(i32 %150, i32* %151, i32* %152)
  %154 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  %155 = call i32 @br_aes_ct64_ortho(i32* %154)
  %156 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %157 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 0
  %158 = load i32, i32* %157, align 16
  %159 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 4
  %160 = load i32, i32* %159, align 16
  %161 = call i32 @br_aes_ct64_interleave_out(i32* %156, i32 %158, i32 %160)
  %162 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %163 = getelementptr inbounds i32, i32* %162, i64 4
  %164 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds [8 x i32], [8 x i32]* %22, i64 0, i64 5
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @br_aes_ct64_interleave_out(i32* %163, i32 %165, i32 %167)
  %169 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 0
  %170 = getelementptr inbounds i8, i8* %169, i64 0
  %171 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 0
  %172 = load i32, i32* %171, align 16
  %173 = call i32 @br_enc32le(i8* %170, i32 %172)
  %174 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 0
  %175 = getelementptr inbounds i8, i8* %174, i64 4
  %176 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 1
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @br_enc32le(i8* %175, i32 %177)
  %179 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 0
  %180 = getelementptr inbounds i8, i8* %179, i64 8
  %181 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 2
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @br_enc32le(i8* %180, i32 %182)
  %184 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 0
  %185 = getelementptr inbounds i8, i8* %184, i64 12
  %186 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 3
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @br_enc32le(i8* %185, i32 %187)
  %189 = load i8*, i8** %11, align 8
  %190 = getelementptr inbounds [16 x i8], [16 x i8]* %25, i64 0, i64 0
  %191 = call i32 @xorbuf(i8* %189, i8* %190, i32 16)
  %192 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 4
  %193 = load i32, i32* %192, align 16
  store i32 %193, i32* %17, align 4
  %194 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 5
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %18, align 4
  %196 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 6
  %197 = load i32, i32* %196, align 8
  store i32 %197, i32* %19, align 4
  %198 = getelementptr inbounds [8 x i32], [8 x i32]* %23, i64 0, i64 7
  %199 = load i32, i32* %198, align 4
  store i32 %199, i32* %20, align 4
  %200 = load i8*, i8** %11, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 16
  store i8* %201, i8** %11, align 8
  %202 = load i64, i64* %10, align 8
  %203 = sub i64 %202, 16
  store i64 %203, i64* %10, align 8
  br label %62

204:                                              ; preds = %62
  %205 = load i8*, i8** %12, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 0
  %207 = load i32, i32* %13, align 4
  %208 = call i32 @br_enc32be(i8* %206, i32 %207)
  %209 = load i8*, i8** %12, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 4
  %211 = load i32, i32* %14, align 4
  %212 = call i32 @br_enc32be(i8* %210, i32 %211)
  %213 = load i8*, i8** %12, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 8
  %215 = load i32, i32* %15, align 4
  %216 = call i32 @br_enc32be(i8* %214, i32 %215)
  %217 = load i8*, i8** %12, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 12
  %219 = load i32, i32* %16, align 4
  %220 = call i32 @br_enc32be(i8* %218, i32 %219)
  %221 = load i8*, i8** %8, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 0
  %223 = load i32, i32* %17, align 4
  %224 = call i32 @br_enc32le(i8* %222, i32 %223)
  %225 = load i8*, i8** %8, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 4
  %227 = load i32, i32* %18, align 4
  %228 = call i32 @br_enc32le(i8* %226, i32 %227)
  %229 = load i8*, i8** %8, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 8
  %231 = load i32, i32* %19, align 4
  %232 = call i32 @br_enc32le(i8* %230, i32 %231)
  %233 = load i8*, i8** %8, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 12
  %235 = load i32, i32* %20, align 4
  %236 = call i32 @br_enc32le(i8* %234, i32 %235)
  ret void
}

declare dso_local i32 @br_aes_ct64_skey_expand(i32*, i32, i32) #1

declare dso_local i32 @br_dec32be(i8*) #1

declare dso_local i32 @br_dec32le(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @br_swap32(i32) #1

declare dso_local i32 @br_aes_ct64_interleave_in(i32*, i32*, i32*) #1

declare dso_local i32 @br_aes_ct64_ortho(i32*) #1

declare dso_local i32 @br_aes_ct64_bitslice_encrypt(i32, i32*, i32*) #1

declare dso_local i32 @br_aes_ct64_interleave_out(i32*, i32, i32) #1

declare dso_local i32 @br_enc32le(i8*, i32) #1

declare dso_local i32 @xorbuf(i8*, i8*, i32) #1

declare dso_local i32 @br_enc32be(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
