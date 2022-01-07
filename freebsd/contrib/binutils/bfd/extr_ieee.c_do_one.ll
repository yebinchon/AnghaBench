; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_do_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_do_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__** }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i32, %struct.TYPE_19__* }
%struct.TYPE_18__ = type { i32, i32, i32*, i32* }
%struct.TYPE_22__ = type { i32*, i32, %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SEC_RELOC = common dso_local global i32 0, align 4
@HAS_RELOC = common dso_local global i32 0, align 4
@ieee_comma = common dso_local global i64 0, align 8
@rel32_howto = common dso_local global i32 0, align 4
@abs32_howto = common dso_local global i32 0, align 4
@rel16_howto = common dso_local global i32 0, align 4
@abs16_howto = common dso_local global i32 0, align 4
@rel8_howto = common dso_local global i32 0, align 4
@abs8_howto = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_20__*, i8*, %struct.TYPE_22__*, i32)* @do_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_one(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1, i8* %2, %struct.TYPE_22__* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_22__*, align 8
  %18 = alloca %struct.TYPE_19__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = call i32 @this_byte(%struct.TYPE_23__* %22)
  switch i32 %23, label %328 [
    i32 130, label %24
    i32 129, label %54
  ]

24:                                               ; preds = %5
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = call i32 @next_byte(%struct.TYPE_23__* %26)
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = call i32 @must_parse_int(%struct.TYPE_23__* %29)
  store i32 %30, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %50, %24
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %31
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = call i32 @this_byte(%struct.TYPE_23__* %37)
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %9, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add i32 %43, 1
  store i32 %44, i32* %42, align 8
  %45 = zext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %40, i64 %45
  store i8 %39, i8* %46, align 1
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 0
  %49 = call i32 @next_byte(%struct.TYPE_23__* %48)
  br label %50

50:                                               ; preds = %35
  %51 = load i32, i32* %13, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %13, align 4
  br label %31

53:                                               ; preds = %31
  br label %328

54:                                               ; preds = %5
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %14, align 4
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = call i32 @next_byte(%struct.TYPE_23__* %57)
  br label %59

59:                                               ; preds = %326, %54
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %327

62:                                               ; preds = %59
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 0
  %65 = call i32 @this_byte(%struct.TYPE_23__* %64)
  switch i32 %65, label %289 [
    i32 128, label %66
    i32 133, label %66
    i32 131, label %66
    i32 135, label %66
  ]

66:                                               ; preds = %62, %62, %62, %62
  store i32 4, i32* %15, align 4
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* %16, align 4
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.TYPE_19__* @bfd_alloc(i32 %71, i32 40)
  store %struct.TYPE_19__* %72, %struct.TYPE_19__** %18, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %74 = icmp ne %struct.TYPE_19__* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %66
  %76 = load i32, i32* @FALSE, align 4
  store i32 %76, i32* %6, align 4
  br label %330

77:                                               ; preds = %66
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %80, align 8
  store %struct.TYPE_19__* %78, %struct.TYPE_19__** %81, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 1
  store %struct.TYPE_19__** %83, %struct.TYPE_19__*** %85, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 2
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %87, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = call i32 @next_byte(%struct.TYPE_23__* %89)
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 3
  store i32* null, i32** %93, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 1
  %100 = call i32 @parse_expression(%struct.TYPE_21__* %94, i32* %97, i32* %99, i32* %16, i32* %15, %struct.TYPE_22__** %17)
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* @SEC_RELOC, align 4
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load i32, i32* @HAS_RELOC, align 4
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %112
  store i32 %118, i32* %116, align 4
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %138

128:                                              ; preds = %77
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %130 = icmp ne %struct.TYPE_22__* %129, null
  br i1 %130, label %131, label %138

131:                                              ; preds = %128
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 3
  store i32* %134, i32** %137, align 8
  br label %138

138:                                              ; preds = %131, %128, %77
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  %141 = call i32 @this_byte(%struct.TYPE_23__* %140)
  %142 = load i64, i64* @ieee_comma, align 8
  %143 = trunc i64 %142 to i32
  %144 = icmp eq i32 %141, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %138
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 0
  %148 = call i32 @next_byte(%struct.TYPE_23__* %147)
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 0
  %151 = call i32 @must_parse_int(%struct.TYPE_23__* %150)
  store i32 %151, i32* %15, align 4
  br label %152

152:                                              ; preds = %145, %138
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 0
  %155 = call i32 @this_byte(%struct.TYPE_23__* %154)
  switch i32 %155, label %168 [
    i32 134, label %156
    i32 132, label %160
    i32 136, label %164
  ]

156:                                              ; preds = %152
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 0
  %159 = call i32 @next_byte(%struct.TYPE_23__* %158)
  br label %169

160:                                              ; preds = %152
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 0
  %163 = call i32 @next_byte(%struct.TYPE_23__* %162)
  br label %169

164:                                              ; preds = %152
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 0
  %167 = call i32 @next_byte(%struct.TYPE_23__* %166)
  br label %169

168:                                              ; preds = %152
  br label %169

169:                                              ; preds = %168, %164, %160, %156
  %170 = load i32, i32* %15, align 4
  switch i32 %170, label %285 [
    i32 0, label %171
    i32 4, label %171
    i32 2, label %209
    i32 1, label %247
  ]

171:                                              ; preds = %169, %169
  %172 = load i32, i32* %16, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %189

174:                                              ; preds = %171
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i8*, i8** %9, align 8
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %179, i64 %183
  %185 = call i32 @bfd_put_32(i32 %178, i32 0, i8* %184)
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 2
  store i32* @rel32_howto, i32** %188, align 8
  br label %204

189:                                              ; preds = %171
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i8*, i8** %9, align 8
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %194, i64 %198
  %200 = call i32 @bfd_put_32(i32 %193, i32 0, i8* %199)
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 2
  store i32* @abs32_howto, i32** %203, align 8
  br label %204

204:                                              ; preds = %189, %174
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = add i32 %207, 4
  store i32 %208, i32* %206, align 8
  br label %288

209:                                              ; preds = %169
  %210 = load i32, i32* %16, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %227

212:                                              ; preds = %209
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i8*, i8** %9, align 8
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %217, i64 %221
  %223 = call i32 @bfd_put_16(i32 %216, i32 0, i8* %222)
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 2
  store i32* @rel16_howto, i32** %226, align 8
  br label %242

227:                                              ; preds = %209
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i8*, i8** %9, align 8
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %232, i64 %236
  %238 = call i32 @bfd_put_16(i32 %231, i32 0, i8* %237)
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 2
  store i32* @abs16_howto, i32** %241, align 8
  br label %242

242:                                              ; preds = %227, %212
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = add i32 %245, 2
  store i32 %246, i32* %244, align 8
  br label %288

247:                                              ; preds = %169
  %248 = load i32, i32* %16, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %265

250:                                              ; preds = %247
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i8*, i8** %9, align 8
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %255, i64 %259
  %261 = call i32 @bfd_put_8(i32 %254, i32 0, i8* %260)
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 2
  store i32* @rel8_howto, i32** %264, align 8
  br label %280

265:                                              ; preds = %247
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i8*, i8** %9, align 8
  %271 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* %270, i64 %274
  %276 = call i32 @bfd_put_8(i32 %269, i32 0, i8* %275)
  %277 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %278, i32 0, i32 2
  store i32* @abs8_howto, i32** %279, align 8
  br label %280

280:                                              ; preds = %265, %250
  %281 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = add i32 %283, 1
  store i32 %284, i32* %282, align 8
  br label %288

285:                                              ; preds = %169
  %286 = call i32 (...) @BFD_FAIL()
  %287 = load i32, i32* @FALSE, align 4
  store i32 %287, i32* %6, align 4
  br label %330

288:                                              ; preds = %280, %242, %204
  br label %321

289:                                              ; preds = %62
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i32 0, i32 0
  %292 = call i32 @parse_int(%struct.TYPE_23__* %291, i32* %19)
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %318

294:                                              ; preds = %289
  store i32 0, i32* %20, align 4
  br label %295

295:                                              ; preds = %314, %294
  %296 = load i32, i32* %20, align 4
  %297 = load i32, i32* %19, align 4
  %298 = icmp ult i32 %296, %297
  br i1 %298, label %299, label %317

299:                                              ; preds = %295
  %300 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %300, i32 0, i32 0
  %302 = call i32 @this_byte(%struct.TYPE_23__* %301)
  %303 = trunc i32 %302 to i8
  %304 = load i8*, i8** %9, align 8
  %305 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %306 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = add i32 %307, 1
  store i32 %308, i32* %306, align 8
  %309 = zext i32 %307 to i64
  %310 = getelementptr inbounds i8, i8* %304, i64 %309
  store i8 %303, i8* %310, align 1
  %311 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %312 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %311, i32 0, i32 0
  %313 = call i32 @next_byte(%struct.TYPE_23__* %312)
  br label %314

314:                                              ; preds = %299
  %315 = load i32, i32* %20, align 4
  %316 = add i32 %315, 1
  store i32 %316, i32* %20, align 4
  br label %295

317:                                              ; preds = %295
  br label %320

318:                                              ; preds = %289
  %319 = load i32, i32* @FALSE, align 4
  store i32 %319, i32* %14, align 4
  br label %320

320:                                              ; preds = %318, %317
  br label %321

321:                                              ; preds = %320, %288
  %322 = load i32, i32* %11, align 4
  %323 = icmp ne i32 %322, 1
  br i1 %323, label %324, label %326

324:                                              ; preds = %321
  %325 = load i32, i32* @FALSE, align 4
  store i32 %325, i32* %14, align 4
  br label %326

326:                                              ; preds = %324, %321
  br label %59

327:                                              ; preds = %59
  br label %328

328:                                              ; preds = %327, %5, %53
  %329 = load i32, i32* @TRUE, align 4
  store i32 %329, i32* %6, align 4
  br label %330

330:                                              ; preds = %328, %285, %75
  %331 = load i32, i32* %6, align 4
  ret i32 %331
}

declare dso_local i32 @this_byte(%struct.TYPE_23__*) #1

declare dso_local i32 @next_byte(%struct.TYPE_23__*) #1

declare dso_local i32 @must_parse_int(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_19__* @bfd_alloc(i32, i32) #1

declare dso_local i32 @parse_expression(%struct.TYPE_21__*, i32*, i32*, i32*, i32*, %struct.TYPE_22__**) #1

declare dso_local i32 @bfd_put_32(i32, i32, i8*) #1

declare dso_local i32 @bfd_put_16(i32, i32, i8*) #1

declare dso_local i32 @bfd_put_8(i32, i32, i8*) #1

declare dso_local i32 @BFD_FAIL(...) #1

declare dso_local i32 @parse_int(%struct.TYPE_23__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
