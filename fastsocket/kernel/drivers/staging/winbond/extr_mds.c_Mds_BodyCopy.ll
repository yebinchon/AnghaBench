; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_mds.c_Mds_BodyCopy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_mds.c_Mds_BodyCopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsoft_priv = type { %struct.wb35_mds }
%struct.wb35_mds = type { i32, i32**, i64, i32* }
%struct.wb35_descriptor = type { i32, i32, i32, i32**, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@DOT_11_SEQUENCE_OFFSET = common dso_local global i32 0, align 4
@MAX_DESCRIPTOR_BUFFER_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wbsoft_priv*, %struct.wb35_descriptor*, i32*)* @Mds_BodyCopy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Mds_BodyCopy(%struct.wbsoft_priv* %0, %struct.wb35_descriptor* %1, i32* %2) #0 {
  %4 = alloca %struct.wbsoft_priv*, align 8
  %5 = alloca %struct.wb35_descriptor*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca %struct.wb35_mds*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.wbsoft_priv* %0, %struct.wbsoft_priv** %4, align 8
  store %struct.wb35_descriptor* %1, %struct.wb35_descriptor** %5, align 8
  store i32* %2, i32** %6, align 8
  %20 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %4, align 8
  %21 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %20, i32 0, i32 0
  store %struct.wb35_mds* %21, %struct.wb35_mds** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %18, align 4
  %22 = load i32*, i32** %6, align 8
  store i32* %22, i32** %9, align 8
  %23 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %5, align 8
  %24 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %13, align 4
  %26 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %5, align 8
  %27 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %17, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = bitcast i32* %29 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %30, %struct.TYPE_2__** %7, align 8
  br label %31

31:                                               ; preds = %248, %3
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %251

34:                                               ; preds = %31
  %35 = load i32*, i32** %9, align 8
  %36 = bitcast i32* %35 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %36, %struct.TYPE_2__** %7, align 8
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %5, align 8
  %40 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %34
  %44 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %5, align 8
  %45 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 24, %47
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %56

51:                                               ; preds = %34
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 24, %52
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %43
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = sub nsw i32 %58, %57
  store i32 %59, i32* %13, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 8
  %62 = load i32, i32* @DOT_11_SEQUENCE_OFFSET, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32* %64, i32** %11, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 240
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %18, align 4
  %69 = load i32*, i32** %11, align 8
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %68
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %18, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %56
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  br label %77

77:                                               ; preds = %74, %56
  %78 = load i32*, i32** %9, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 32
  store i32* %79, i32** %9, align 8
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 32
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %82, 3
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = and i32 %84, -4
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %151, %77
  %90 = load i32, i32* %14, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %163

92:                                               ; preds = %89
  %93 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %5, align 8
  %94 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %93, i32 0, i32 3
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %17, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  store i32* %99, i32** %10, align 8
  %100 = load i32, i32* %14, align 4
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %5, align 8
  %103 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %17, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp sge i32 %101, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %92
  %111 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %5, align 8
  %112 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %111, i32 0, i32 4
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %17, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %17, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %17, align 4
  %120 = load i32, i32* @MAX_DESCRIPTOR_BUFFER_INDEX, align 4
  %121 = load i32, i32* %17, align 4
  %122 = srem i32 %121, %120
  store i32 %122, i32* %17, align 4
  br label %151

123:                                              ; preds = %92
  %124 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %5, align 8
  %125 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %124, i32 0, i32 3
  %126 = load i32**, i32*** %125, align 8
  %127 = load i32, i32* %17, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  store i32* %130, i32** %19, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load i32*, i32** %19, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32* %134, i32** %19, align 8
  %135 = load i32*, i32** %19, align 8
  %136 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %5, align 8
  %137 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %136, i32 0, i32 3
  %138 = load i32**, i32*** %137, align 8
  %139 = load i32, i32* %17, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  store i32* %135, i32** %141, align 8
  %142 = load i32, i32* %14, align 4
  %143 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %5, align 8
  %144 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %143, i32 0, i32 4
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %17, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 %149, %142
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %123, %110
  %152 = load i32*, i32** %9, align 8
  %153 = load i32*, i32** %10, align 8
  %154 = load i32, i32* %15, align 4
  %155 = call i32 @memcpy(i32* %152, i32* %153, i32 %154)
  %156 = load i32, i32* %15, align 4
  %157 = load i32*, i32** %9, align 8
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  store i32* %159, i32** %9, align 8
  %160 = load i32, i32* %15, align 4
  %161 = load i32, i32* %14, align 4
  %162 = sub nsw i32 %161, %160
  store i32 %162, i32* %14, align 4
  br label %89

163:                                              ; preds = %89
  %164 = load %struct.wb35_mds*, %struct.wb35_mds** %8, align 8
  %165 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %233

168:                                              ; preds = %163
  %169 = load i32, i32* %13, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %198, label %171

171:                                              ; preds = %168
  %172 = load i32*, i32** %9, align 8
  %173 = load %struct.wb35_mds*, %struct.wb35_mds** %8, align 8
  %174 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = sub i64 0, %176
  %178 = getelementptr inbounds i32, i32* %172, i64 %177
  %179 = load %struct.wb35_mds*, %struct.wb35_mds** %8, align 8
  %180 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %179, i32 0, i32 1
  %181 = load i32**, i32*** %180, align 8
  %182 = load %struct.wb35_mds*, %struct.wb35_mds** %8, align 8
  %183 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds i32*, i32** %181, i64 %184
  store i32* %178, i32** %185, align 8
  %186 = load %struct.wb35_mds*, %struct.wb35_mds** %8, align 8
  %187 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.wb35_mds*, %struct.wb35_mds** %8, align 8
  %190 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %189, i32 0, i32 3
  %191 = load i32*, i32** %190, align 8
  %192 = load %struct.wb35_mds*, %struct.wb35_mds** %8, align 8
  %193 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  store i32 %188, i32* %195, align 4
  %196 = load %struct.wb35_mds*, %struct.wb35_mds** %8, align 8
  %197 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %196, i32 0, i32 0
  store i32 0, i32* %197, align 8
  br label %232

198:                                              ; preds = %168
  %199 = load i32, i32* %13, align 4
  %200 = icmp slt i32 %199, 8
  br i1 %200, label %201, label %231

201:                                              ; preds = %198
  %202 = load i32, i32* %13, align 4
  %203 = load %struct.wb35_mds*, %struct.wb35_mds** %8, align 8
  %204 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  %205 = load i32*, i32** %9, align 8
  %206 = load i32, i32* %13, align 4
  %207 = sub nsw i32 8, %206
  %208 = sext i32 %207 to i64
  %209 = sub i64 0, %208
  %210 = getelementptr inbounds i32, i32* %205, i64 %209
  %211 = load %struct.wb35_mds*, %struct.wb35_mds** %8, align 8
  %212 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %211, i32 0, i32 1
  %213 = load i32**, i32*** %212, align 8
  %214 = load %struct.wb35_mds*, %struct.wb35_mds** %8, align 8
  %215 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds i32*, i32** %213, i64 %216
  store i32* %210, i32** %217, align 8
  %218 = load i32, i32* %13, align 4
  %219 = sub nsw i32 8, %218
  %220 = load %struct.wb35_mds*, %struct.wb35_mds** %8, align 8
  %221 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %220, i32 0, i32 3
  %222 = load i32*, i32** %221, align 8
  %223 = load %struct.wb35_mds*, %struct.wb35_mds** %8, align 8
  %224 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds i32, i32* %222, i64 %225
  store i32 %219, i32* %226, align 4
  %227 = load %struct.wb35_mds*, %struct.wb35_mds** %8, align 8
  %228 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = add i64 %229, 1
  store i64 %230, i64* %228, align 8
  br label %231

231:                                              ; preds = %201, %198
  br label %232

232:                                              ; preds = %231, %171
  br label %233

233:                                              ; preds = %232, %163
  %234 = load i32, i32* %13, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %248

236:                                              ; preds = %233
  %237 = load i32*, i32** %6, align 8
  %238 = load i32, i32* %12, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  store i32* %240, i32** %9, align 8
  %241 = load i32*, i32** %9, align 8
  %242 = load i32*, i32** %6, align 8
  %243 = call i32 @memcpy(i32* %241, i32* %242, i32 32)
  %244 = load i32*, i32** %9, align 8
  %245 = bitcast i32* %244 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %245, %struct.TYPE_2__** %7, align 8
  %246 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 1
  store i32 0, i32* %247, align 4
  br label %248

248:                                              ; preds = %236, %233
  %249 = load i32, i32* %18, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %18, align 4
  br label %31

251:                                              ; preds = %31
  %252 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 2
  store i32 1, i32* %253, align 4
  %254 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 3
  store i32 1, i32* %255, align 4
  %256 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %257 = bitcast %struct.TYPE_2__* %256 to i32*
  %258 = getelementptr inbounds i32, i32* %257, i64 8
  store i32* %258, i32** %9, align 8
  %259 = load i32*, i32** %9, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 1
  %261 = load i32, i32* %260, align 4
  %262 = and i32 %261, -5
  store i32 %262, i32* %260, align 4
  %263 = load i32, i32* %18, align 4
  %264 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %5, align 8
  %265 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %264, i32 0, i32 5
  store i32 %263, i32* %265, align 8
  %266 = load i32, i32* %12, align 4
  ret i32 %266
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
