; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct_cbcdec.c_br_aes_ct_cbcdec_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct_cbcdec.c_br_aes_ct_cbcdec_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_aes_ct_cbcdec_run(%struct.TYPE_3__* %0, i8* %1, i8* %2, i64 %3) #0 {
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
  %17 = alloca [8 x i32], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %18 = getelementptr inbounds [120 x i32], [120 x i32]* %15, i64 0, i64 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @br_aes_ct_skey_expand(i32* %18, i32 %21, i32 %24)
  %26 = load i8*, i8** %6, align 8
  store i8* %26, i8** %10, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @br_dec32le(i8* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 4
  %31 = call i32 @br_dec32le(i8* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i8*, i8** %10, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 8
  %34 = call i32 @br_dec32le(i8* %33)
  store i32 %34, i32* %13, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 12
  %37 = call i32 @br_dec32le(i8* %36)
  store i32 %37, i32* %14, align 4
  %38 = load i8*, i8** %7, align 8
  store i8* %38, i8** %9, align 8
  br label %39

39:                                               ; preds = %134, %4
  %40 = load i64, i64* %8, align 8
  %41 = icmp ugt i64 %40, 0
  br i1 %41, label %42, label %179

42:                                               ; preds = %39
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @br_dec32le(i8* %43)
  %45 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  store i32 %44, i32* %45, align 16
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 4
  %48 = call i32 @br_dec32le(i8* %47)
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 2
  store i32 %48, i32* %49, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 8
  %52 = call i32 @br_dec32le(i8* %51)
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 4
  store i32 %52, i32* %53, align 16
  %54 = load i8*, i8** %9, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 12
  %56 = call i32 @br_dec32le(i8* %55)
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 6
  store i32 %56, i32* %57, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp uge i64 %58, 32
  br i1 %59, label %60, label %77

60:                                               ; preds = %42
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 16
  %63 = call i32 @br_dec32le(i8* %62)
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  store i32 %63, i32* %64, align 4
  %65 = load i8*, i8** %9, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 20
  %67 = call i32 @br_dec32le(i8* %66)
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 3
  store i32 %67, i32* %68, align 4
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 24
  %71 = call i32 @br_dec32le(i8* %70)
  %72 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 5
  store i32 %71, i32* %72, align 4
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 28
  %75 = call i32 @br_dec32le(i8* %74)
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 7
  store i32 %75, i32* %76, align 4
  br label %82

77:                                               ; preds = %42
  %78 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  store i32 0, i32* %78, align 4
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 3
  store i32 0, i32* %79, align 4
  %80 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 5
  store i32 0, i32* %80, align 4
  %81 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 7
  store i32 0, i32* %81, align 4
  br label %82

82:                                               ; preds = %77, %60
  %83 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 0
  %84 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %85 = call i32 @memcpy(i32* %83, i32* %84, i32 32)
  %86 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %87 = call i32 @br_aes_ct_ortho(i32* %86)
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds [120 x i32], [120 x i32]* %15, i64 0, i64 0
  %92 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %93 = call i32 @br_aes_ct_bitslice_decrypt(i32 %90, i32* %91, i32* %92)
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %95 = call i32 @br_aes_ct_ortho(i32* %94)
  %96 = load i8*, i8** %9, align 8
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %98 = load i32, i32* %97, align 16
  %99 = load i32, i32* %11, align 4
  %100 = xor i32 %98, %99
  %101 = call i32 @br_enc32le(i8* %96, i32 %100)
  %102 = load i8*, i8** %9, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 4
  %104 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = xor i32 %105, %106
  %108 = call i32 @br_enc32le(i8* %103, i32 %107)
  %109 = load i8*, i8** %9, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 8
  %111 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 4
  %112 = load i32, i32* %111, align 16
  %113 = load i32, i32* %13, align 4
  %114 = xor i32 %112, %113
  %115 = call i32 @br_enc32le(i8* %110, i32 %114)
  %116 = load i8*, i8** %9, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 12
  %118 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 6
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = xor i32 %119, %120
  %122 = call i32 @br_enc32le(i8* %117, i32 %121)
  %123 = load i64, i64* %8, align 8
  %124 = icmp ult i64 %123, 32
  br i1 %124, label %125, label %134

125:                                              ; preds = %82
  %126 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 0
  %127 = load i32, i32* %126, align 16
  store i32 %127, i32* %11, align 4
  %128 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 2
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %12, align 4
  %130 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 4
  %131 = load i32, i32* %130, align 16
  store i32 %131, i32* %13, align 4
  %132 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 6
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %14, align 4
  br label %179

134:                                              ; preds = %82
  %135 = load i8*, i8** %9, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 16
  %137 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 0
  %140 = load i32, i32* %139, align 16
  %141 = xor i32 %138, %140
  %142 = call i32 @br_enc32le(i8* %136, i32 %141)
  %143 = load i8*, i8** %9, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 20
  %145 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 3
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 2
  %148 = load i32, i32* %147, align 8
  %149 = xor i32 %146, %148
  %150 = call i32 @br_enc32le(i8* %144, i32 %149)
  %151 = load i8*, i8** %9, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 24
  %153 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 5
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 4
  %156 = load i32, i32* %155, align 16
  %157 = xor i32 %154, %156
  %158 = call i32 @br_enc32le(i8* %152, i32 %157)
  %159 = load i8*, i8** %9, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 28
  %161 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 7
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 6
  %164 = load i32, i32* %163, align 8
  %165 = xor i32 %162, %164
  %166 = call i32 @br_enc32le(i8* %160, i32 %165)
  %167 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 1
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %11, align 4
  %169 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 3
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %12, align 4
  %171 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 5
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %13, align 4
  %173 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 7
  %174 = load i32, i32* %173, align 4
  store i32 %174, i32* %14, align 4
  %175 = load i8*, i8** %9, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 32
  store i8* %176, i8** %9, align 8
  %177 = load i64, i64* %8, align 8
  %178 = sub i64 %177, 32
  store i64 %178, i64* %8, align 8
  br label %39

179:                                              ; preds = %125, %39
  %180 = load i8*, i8** %10, align 8
  %181 = load i32, i32* %11, align 4
  %182 = call i32 @br_enc32le(i8* %180, i32 %181)
  %183 = load i8*, i8** %10, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 4
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @br_enc32le(i8* %184, i32 %185)
  %187 = load i8*, i8** %10, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 8
  %189 = load i32, i32* %13, align 4
  %190 = call i32 @br_enc32le(i8* %188, i32 %189)
  %191 = load i8*, i8** %10, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 12
  %193 = load i32, i32* %14, align 4
  %194 = call i32 @br_enc32le(i8* %192, i32 %193)
  ret void
}

declare dso_local i32 @br_aes_ct_skey_expand(i32*, i32, i32) #1

declare dso_local i32 @br_dec32le(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @br_aes_ct_ortho(i32*) #1

declare dso_local i32 @br_aes_ct_bitslice_decrypt(i32, i32*, i32*) #1

declare dso_local i32 @br_enc32le(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
