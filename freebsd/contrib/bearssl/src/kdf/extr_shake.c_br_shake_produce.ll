; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/kdf/extr_shake.c_br_shake_produce.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/kdf/extr_shake.c_br_shake_produce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i8*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_shake_produce(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %7, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %9, align 8
  br label %20

20:                                               ; preds = %201, %3
  %21 = load i64, i64* %6, align 8
  %22 = icmp ugt i64 %21, 0
  br i1 %22, label %23, label %219

23:                                               ; preds = %20
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %192

27:                                               ; preds = %23
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %12, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %11, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @process_block(i32* %34)
  %36 = load i8*, i8** %11, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i32*, i32** %12, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @br_enc64le(i8* %37, i32 %40)
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 8
  %44 = load i32*, i32** %12, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = xor i32 %46, -1
  %48 = call i32 @br_enc64le(i8* %43, i32 %47)
  %49 = load i8*, i8** %11, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 16
  %51 = load i32*, i32** %12, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %53, -1
  %55 = call i32 @br_enc64le(i8* %50, i32 %54)
  %56 = load i8*, i8** %11, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 24
  %58 = load i32*, i32** %12, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @br_enc64le(i8* %57, i32 %60)
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 32
  %64 = load i32*, i32** %12, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @br_enc64le(i8* %63, i32 %66)
  %68 = load i8*, i8** %11, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 40
  %70 = load i32*, i32** %12, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 5
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @br_enc64le(i8* %69, i32 %72)
  %74 = load i8*, i8** %11, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 48
  %76 = load i32*, i32** %12, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 6
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @br_enc64le(i8* %75, i32 %78)
  %80 = load i8*, i8** %11, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 56
  %82 = load i32*, i32** %12, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 7
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @br_enc64le(i8* %81, i32 %84)
  %86 = load i8*, i8** %11, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 64
  %88 = load i32*, i32** %12, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 8
  %90 = load i32, i32* %89, align 4
  %91 = xor i32 %90, -1
  %92 = call i32 @br_enc64le(i8* %87, i32 %91)
  %93 = load i8*, i8** %11, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 72
  %95 = load i32*, i32** %12, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 9
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @br_enc64le(i8* %94, i32 %97)
  %99 = load i8*, i8** %11, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 80
  %101 = load i32*, i32** %12, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 10
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @br_enc64le(i8* %100, i32 %103)
  %105 = load i8*, i8** %11, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 88
  %107 = load i32*, i32** %12, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 11
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @br_enc64le(i8* %106, i32 %109)
  %111 = load i8*, i8** %11, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 96
  %113 = load i32*, i32** %12, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 12
  %115 = load i32, i32* %114, align 4
  %116 = xor i32 %115, -1
  %117 = call i32 @br_enc64le(i8* %112, i32 %116)
  %118 = load i8*, i8** %11, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 104
  %120 = load i32*, i32** %12, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 13
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @br_enc64le(i8* %119, i32 %122)
  %124 = load i8*, i8** %11, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 112
  %126 = load i32*, i32** %12, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 14
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @br_enc64le(i8* %125, i32 %128)
  %130 = load i8*, i8** %11, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 120
  %132 = load i32*, i32** %12, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 15
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @br_enc64le(i8* %131, i32 %134)
  %136 = load i8*, i8** %11, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 128
  %138 = load i32*, i32** %12, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 16
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @br_enc64le(i8* %137, i32 %140)
  %142 = load i8*, i8** %11, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 136
  %144 = load i32*, i32** %12, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 17
  %146 = load i32, i32* %145, align 4
  %147 = xor i32 %146, -1
  %148 = call i32 @br_enc64le(i8* %143, i32 %147)
  %149 = load i8*, i8** %11, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 144
  %151 = load i32*, i32** %12, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 18
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @br_enc64le(i8* %150, i32 %153)
  %155 = load i8*, i8** %11, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 152
  %157 = load i32*, i32** %12, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 19
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @br_enc64le(i8* %156, i32 %159)
  %161 = load i8*, i8** %11, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 160
  %163 = load i32*, i32** %12, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 20
  %165 = load i32, i32* %164, align 4
  %166 = xor i32 %165, -1
  %167 = call i32 @br_enc64le(i8* %162, i32 %166)
  %168 = load i8*, i8** %11, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 168
  %170 = load i32*, i32** %12, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 21
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @br_enc64le(i8* %169, i32 %172)
  %174 = load i8*, i8** %11, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 176
  %176 = load i32*, i32** %12, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 22
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @br_enc64le(i8* %175, i32 %178)
  %180 = load i8*, i8** %11, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 184
  %182 = load i32*, i32** %12, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 23
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @br_enc64le(i8* %181, i32 %184)
  %186 = load i8*, i8** %11, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 192
  %188 = load i32*, i32** %12, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 24
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @br_enc64le(i8* %187, i32 %190)
  store i64 0, i64* %8, align 8
  br label %192

192:                                              ; preds = %27, %23
  %193 = load i64, i64* %9, align 8
  %194 = load i64, i64* %8, align 8
  %195 = sub i64 %193, %194
  store i64 %195, i64* %10, align 8
  %196 = load i64, i64* %10, align 8
  %197 = load i64, i64* %6, align 8
  %198 = icmp ugt i64 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %192
  %200 = load i64, i64* %6, align 8
  store i64 %200, i64* %10, align 8
  br label %201

201:                                              ; preds = %199, %192
  %202 = load i8*, i8** %7, align 8
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 2
  %205 = load i8*, i8** %204, align 8
  %206 = load i64, i64* %8, align 8
  %207 = getelementptr inbounds i8, i8* %205, i64 %206
  %208 = load i64, i64* %10, align 8
  %209 = call i32 @memcpy(i8* %202, i8* %207, i64 %208)
  %210 = load i64, i64* %10, align 8
  %211 = load i64, i64* %8, align 8
  %212 = add i64 %211, %210
  store i64 %212, i64* %8, align 8
  %213 = load i64, i64* %10, align 8
  %214 = load i8*, i8** %7, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 %213
  store i8* %215, i8** %7, align 8
  %216 = load i64, i64* %10, align 8
  %217 = load i64, i64* %6, align 8
  %218 = sub i64 %217, %216
  store i64 %218, i64* %6, align 8
  br label %20

219:                                              ; preds = %20
  %220 = load i64, i64* %8, align 8
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 0
  store i64 %220, i64* %222, align 8
  ret void
}

declare dso_local i32 @process_block(i32*) #1

declare dso_local i32 @br_enc64le(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
