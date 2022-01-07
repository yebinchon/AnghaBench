; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_ieee_slurp_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_ieee_slurp_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_12__**, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i8*, i64, i64, i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }

@TRUE = common dso_local global i64 0, align 8
@SEC_ALLOC = common dso_local global i8* null, align 8
@SEC_CODE = common dso_local global i32 0, align 4
@SEC_DATA = common dso_local global i32 0, align 4
@SEC_ROM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @ieee_slurp_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee_slurp_sections(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = call %struct.TYPE_11__* @IEEE_DATA(i32* %17)
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %3, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %300

26:                                               ; preds = %1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @ieee_seek(%struct.TYPE_11__* %27, i64 %28)
  br label %30

30:                                               ; preds = %298, %26
  %31 = load i64, i64* @TRUE, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %299

33:                                               ; preds = %30
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = call i32 @this_byte(i32* %35)
  switch i32 %36, label %297 [
    i32 128, label %37
    i32 132, label %172
    i32 137, label %203
  ]

37:                                               ; preds = %33
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = call i32 @next_byte(i32* %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = call i64 @must_parse_int(i32* %42)
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = load i32*, i32** %2, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call %struct.TYPE_12__* @get_section_entry(i32* %45, %struct.TYPE_11__* %46, i32 %47)
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %7, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = call i32 @this_byte_and_next(i32* %50)
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %150 [
    i32 193, label %55
    i32 195, label %108
  ]

55:                                               ; preds = %37
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = call i32 @this_byte(i32* %57)
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %58, i32* %59, align 4
  %60 = load i8*, i8** @SEC_ALLOC, align 8
  %61 = ptrtoint i8* %60 to i32
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %107 [
    i32 211, label %66
  ]

66:                                               ; preds = %55
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = call i32 @next_byte(i32* %68)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = call i32 @this_byte(i32* %71)
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  store i32 %72, i32* %73, align 4
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  %75 = load i32, i32* %74, align 4
  switch i32 %75, label %105 [
    i32 208, label %76
    i32 196, label %85
    i32 210, label %94
  ]

76:                                               ; preds = %66
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = call i32 @next_byte(i32* %78)
  %80 = load i32, i32* @SEC_CODE, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %106

85:                                               ; preds = %66
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = call i32 @next_byte(i32* %87)
  %89 = load i32, i32* @SEC_DATA, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %106

94:                                               ; preds = %66
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = call i32 @next_byte(i32* %96)
  %98 = load i32, i32* @SEC_ROM, align 4
  %99 = load i32, i32* @SEC_DATA, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  br label %106

105:                                              ; preds = %66
  br label %106

106:                                              ; preds = %105, %94, %85, %76
  br label %107

107:                                              ; preds = %106, %55
  br label %150

108:                                              ; preds = %37
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = call i32 @this_byte(i32* %110)
  %112 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  store i32 %111, i32* %112, align 4
  %113 = load i8*, i8** @SEC_ALLOC, align 8
  %114 = ptrtoint i8* %113 to i32
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  %118 = load i32, i32* %117, align 4
  switch i32 %118, label %148 [
    i32 208, label %119
    i32 196, label %128
    i32 210, label %137
  ]

119:                                              ; preds = %108
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = call i32 @next_byte(i32* %121)
  %123 = load i32, i32* @SEC_CODE, align 4
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %149

128:                                              ; preds = %108
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 1
  %131 = call i32 @next_byte(i32* %130)
  %132 = load i32, i32* @SEC_DATA, align 4
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  br label %149

137:                                              ; preds = %108
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = call i32 @next_byte(i32* %139)
  %141 = load i32, i32* @SEC_ROM, align 4
  %142 = load i32, i32* @SEC_DATA, align 4
  %143 = or i32 %141, %142
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  br label %149

148:                                              ; preds = %108
  br label %149

149:                                              ; preds = %148, %137, %128, %119
  br label %150

150:                                              ; preds = %149, %37, %107
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  %153 = call i8* @read_id(i32* %152)
  store i8* %153, i8** %5, align 8
  %154 = load i8*, i8** %5, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 0
  %156 = load i8, i8* %155, align 1
  %157 = icmp ne i8 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %150
  %159 = load i8*, i8** %5, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  br label %162

162:                                              ; preds = %158, %150
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = call i32 @parse_int(i32* %164, i32* %9)
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 1
  %168 = call i32 @parse_int(i32* %167, i32* %10)
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = call i32 @parse_int(i32* %170, i32* %11)
  br label %298

172:                                              ; preds = %33
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 1
  %175 = call i32 @next_byte(i32* %174)
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 1
  %178 = call i64 @must_parse_int(i32* %177)
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %12, align 4
  %180 = load i32*, i32** %2, align 8
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %182 = load i32, i32* %12, align 4
  %183 = call %struct.TYPE_12__* @get_section_entry(i32* %180, %struct.TYPE_11__* %181, i32 %182)
  store %struct.TYPE_12__* %183, %struct.TYPE_12__** %14, align 8
  %184 = load i32, i32* %12, align 4
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp ugt i32 %184, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %172
  %190 = load i32, i32* %12, align 4
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  br label %193

193:                                              ; preds = %189, %172
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 1
  %196 = call i64 @must_parse_int(i32* %195)
  %197 = call i32 @bfd_log2(i64 %196)
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 5
  store i32 %197, i32* %199, align 8
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  %202 = call i32 @parse_int(i32* %201, i32* %13)
  br label %298

203:                                              ; preds = %33
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 1
  %206 = call i32 @read_2bytes(i32* %205)
  store i32 %206, i32* %16, align 4
  %207 = load i32, i32* %16, align 4
  switch i32 %207, label %295 [
    i32 129, label %208
    i32 134, label %222
    i32 133, label %236
    i32 135, label %255
    i32 136, label %262
    i32 131, label %269
    i32 130, label %288
  ]

208:                                              ; preds = %203
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 2
  %211 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %210, align 8
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 1
  %214 = call i64 @must_parse_int(i32* %213)
  %215 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %211, i64 %214
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %215, align 8
  store %struct.TYPE_12__* %216, %struct.TYPE_12__** %15, align 8
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 1
  %219 = call i64 @must_parse_int(i32* %218)
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 2
  store i64 %219, i64* %221, align 8
  br label %296

222:                                              ; preds = %203
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 2
  %225 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %224, align 8
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 1
  %228 = call i64 @must_parse_int(i32* %227)
  %229 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %225, i64 %228
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %229, align 8
  store %struct.TYPE_12__* %230, %struct.TYPE_12__** %15, align 8
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 1
  %233 = call i64 @must_parse_int(i32* %232)
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 2
  store i64 %233, i64* %235, align 8
  br label %296

236:                                              ; preds = %203
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 2
  %239 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %238, align 8
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 1
  %242 = call i64 @must_parse_int(i32* %241)
  %243 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %239, i64 %242
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %243, align 8
  store %struct.TYPE_12__* %244, %struct.TYPE_12__** %15, align 8
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 1
  %247 = call i64 @must_parse_int(i32* %246)
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 3
  store i64 %247, i64* %249, align 8
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 3
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 4
  store i64 %252, i64* %254, align 8
  br label %296

255:                                              ; preds = %203
  %256 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 1
  %258 = call i64 @must_parse_int(i32* %257)
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 1
  %261 = call i64 @must_parse_int(i32* %260)
  br label %296

262:                                              ; preds = %203
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 1
  %265 = call i64 @must_parse_int(i32* %264)
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 1
  %268 = call i64 @must_parse_int(i32* %267)
  br label %296

269:                                              ; preds = %203
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 2
  %272 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %271, align 8
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 1
  %275 = call i64 @must_parse_int(i32* %274)
  %276 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %272, i64 %275
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %276, align 8
  store %struct.TYPE_12__* %277, %struct.TYPE_12__** %15, align 8
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 1
  %280 = call i64 @must_parse_int(i32* %279)
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 3
  store i64 %280, i64* %282, align 8
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 3
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 4
  store i64 %285, i64* %287, align 8
  br label %296

288:                                              ; preds = %203
  %289 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 1
  %291 = call i64 @must_parse_int(i32* %290)
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 1
  %294 = call i64 @must_parse_int(i32* %293)
  br label %296

295:                                              ; preds = %203
  br label %300

296:                                              ; preds = %288, %269, %262, %255, %236, %222, %208
  br label %298

297:                                              ; preds = %33
  br label %300

298:                                              ; preds = %296, %193, %162
  br label %30

299:                                              ; preds = %30
  br label %300

300:                                              ; preds = %295, %297, %299, %1
  ret void
}

declare dso_local %struct.TYPE_11__* @IEEE_DATA(i32*) #1

declare dso_local i32 @ieee_seek(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @this_byte(i32*) #1

declare dso_local i32 @next_byte(i32*) #1

declare dso_local i64 @must_parse_int(i32*) #1

declare dso_local %struct.TYPE_12__* @get_section_entry(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @this_byte_and_next(i32*) #1

declare dso_local i8* @read_id(i32*) #1

declare dso_local i32 @parse_int(i32*, i32*) #1

declare dso_local i32 @bfd_log2(i64) #1

declare dso_local i32 @read_2bytes(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
