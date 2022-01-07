; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct_ctrcbc.c_br_aes_ct_ctrcbc_ctr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct_ctrcbc.c_br_aes_ct_ctrcbc_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_aes_ct_ctrcbc_ctr(%struct.TYPE_3__* %0, i8* %1, i8* %2, i64 %3) #0 {
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
  %17 = alloca i32, align 4
  %18 = alloca [32 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %19 = getelementptr inbounds [120 x i32], [120 x i32]* %15, i64 0, i64 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @br_aes_ct_skey_expand(i32* %19, i32 %22, i32 %25)
  %27 = load i8*, i8** %6, align 8
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = call i32 @br_dec32be(i8* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 4
  %33 = call i32 @br_dec32be(i8* %32)
  store i32 %33, i32* %12, align 4
  %34 = load i8*, i8** %10, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 8
  %36 = call i32 @br_dec32be(i8* %35)
  store i32 %36, i32* %13, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 12
  %39 = call i32 @br_dec32be(i8* %38)
  store i32 %39, i32* %14, align 4
  %40 = load i8*, i8** %7, align 8
  store i8* %40, i8** %9, align 8
  br label %41

41:                                               ; preds = %200, %4
  %42 = load i64, i64* %8, align 8
  %43 = icmp ugt i64 %42, 0
  br i1 %43, label %44, label %208

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @br_swap32(i32 %45)
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  store i32 %46, i32* %47, align 16
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @br_swap32(i32 %48)
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 2
  store i32 %49, i32* %50, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @br_swap32(i32 %51)
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 4
  store i32 %52, i32* %53, align 16
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @br_swap32(i32 %54)
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 6
  store i32 %55, i32* %56, align 8
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = sub nsw i32 0, %60
  %62 = or i32 %59, %61
  %63 = xor i32 %62, -1
  %64 = ashr i32 %63, 31
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = sub nsw i32 0, %69
  %71 = or i32 %68, %70
  %72 = xor i32 %71, -1
  %73 = ashr i32 %72, 31
  %74 = sub nsw i32 0, %73
  %75 = load i32, i32* %17, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = sub nsw i32 0, %81
  %83 = or i32 %80, %82
  %84 = xor i32 %83, -1
  %85 = ashr i32 %84, 31
  %86 = sub nsw i32 0, %85
  %87 = load i32, i32* %17, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @br_swap32(i32 %92)
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @br_swap32(i32 %95)
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 3
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @br_swap32(i32 %98)
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 5
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @br_swap32(i32 %101)
  %103 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 7
  store i32 %102, i32* %103, align 4
  %104 = load i64, i64* %8, align 8
  %105 = icmp ugt i64 %104, 16
  br i1 %105, label %106, label %142

106:                                              ; preds = %44
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %14, align 4
  %111 = sub nsw i32 0, %110
  %112 = or i32 %109, %111
  %113 = xor i32 %112, -1
  %114 = ashr i32 %113, 31
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* %13, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = sub nsw i32 0, %119
  %121 = or i32 %118, %120
  %122 = xor i32 %121, -1
  %123 = ashr i32 %122, 31
  %124 = sub nsw i32 0, %123
  %125 = load i32, i32* %17, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %12, align 4
  %132 = sub nsw i32 0, %131
  %133 = or i32 %130, %132
  %134 = xor i32 %133, -1
  %135 = ashr i32 %134, 31
  %136 = sub nsw i32 0, %135
  %137 = load i32, i32* %17, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %17, align 4
  %139 = load i32, i32* %17, align 4
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %11, align 4
  br label %142

142:                                              ; preds = %106, %44
  %143 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %144 = call i32 @br_aes_ct_ortho(i32* %143)
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds [120 x i32], [120 x i32]* %15, i64 0, i64 0
  %149 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %150 = call i32 @br_aes_ct_bitslice_encrypt(i32 %147, i32* %148, i32* %149)
  %151 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %152 = call i32 @br_aes_ct_ortho(i32* %151)
  %153 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %154 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %155 = load i32, i32* %154, align 16
  %156 = call i32 @br_enc32le(i8* %153, i32 %155)
  %157 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %158 = getelementptr inbounds i8, i8* %157, i64 4
  %159 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @br_enc32le(i8* %158, i32 %160)
  %162 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %163 = getelementptr inbounds i8, i8* %162, i64 8
  %164 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 4
  %165 = load i32, i32* %164, align 16
  %166 = call i32 @br_enc32le(i8* %163, i32 %165)
  %167 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %168 = getelementptr inbounds i8, i8* %167, i64 12
  %169 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 6
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @br_enc32le(i8* %168, i32 %170)
  %172 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %173 = getelementptr inbounds i8, i8* %172, i64 16
  %174 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @br_enc32le(i8* %173, i32 %175)
  %177 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %178 = getelementptr inbounds i8, i8* %177, i64 20
  %179 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 3
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @br_enc32le(i8* %178, i32 %180)
  %182 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %183 = getelementptr inbounds i8, i8* %182, i64 24
  %184 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 5
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @br_enc32le(i8* %183, i32 %185)
  %187 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %188 = getelementptr inbounds i8, i8* %187, i64 28
  %189 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 7
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @br_enc32le(i8* %188, i32 %190)
  %192 = load i64, i64* %8, align 8
  %193 = icmp ule i64 %192, 32
  br i1 %193, label %194, label %200

194:                                              ; preds = %142
  %195 = load i8*, i8** %9, align 8
  %196 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %197 = load i64, i64* %8, align 8
  %198 = trunc i64 %197 to i32
  %199 = call i32 @xorbuf(i8* %195, i8* %196, i32 %198)
  br label %208

200:                                              ; preds = %142
  %201 = load i8*, i8** %9, align 8
  %202 = getelementptr inbounds [32 x i8], [32 x i8]* %18, i64 0, i64 0
  %203 = call i32 @xorbuf(i8* %201, i8* %202, i32 32)
  %204 = load i8*, i8** %9, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 32
  store i8* %205, i8** %9, align 8
  %206 = load i64, i64* %8, align 8
  %207 = sub i64 %206, 32
  store i64 %207, i64* %8, align 8
  br label %41

208:                                              ; preds = %194, %41
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

declare dso_local i32 @br_aes_ct_skey_expand(i32*, i32, i32) #1

declare dso_local i32 @br_dec32be(i8*) #1

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
