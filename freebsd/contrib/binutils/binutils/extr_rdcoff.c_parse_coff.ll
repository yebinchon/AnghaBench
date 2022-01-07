; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rdcoff.c_parse_coff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rdcoff.c_parse_coff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_symbols = type { i64, i64, i64, i32** }
%struct.coff_types = type { i32*, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.internal_syment = type { i64, i32, i64, i32 }
%union.internal_auxent = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32 }

@T_MAX = common dso_local global i32 0, align 4
@DEBUG_TYPE_NULL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"bfd_coff_get_syment failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"bfd_coff_get_auxent failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"*globals*\00", align 1
@T_NULL = common dso_local global i32 0, align 4
@_get_lineno = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c".bf\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"%ld: .bf without preceding function\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c".ef\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"%ld: unexpected .ef\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c".bb\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c".eb\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_coff(i32* %0, i32** %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.coff_symbols, align 8
  %11 = alloca %struct.coff_types, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.internal_syment, align 8
  %24 = alloca %union.internal_auxent, align 8
  %25 = alloca %union.internal_auxent*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %29 = load i32**, i32*** %7, align 8
  %30 = getelementptr inbounds %struct.coff_symbols, %struct.coff_symbols* %10, i32 0, i32 3
  store i32** %29, i32*** %30, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.coff_symbols, %struct.coff_symbols* %10, i32 0, i32 0
  store i64 %31, i64* %32, align 8
  %33 = getelementptr inbounds %struct.coff_symbols, %struct.coff_symbols* %10, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds %struct.coff_symbols, %struct.coff_symbols* %10, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = getelementptr inbounds %struct.coff_types, %struct.coff_types* %11, i32 0, i32 1
  store i32* null, i32** %35, align 8
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %47, %4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @T_MAX, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %42 = getelementptr inbounds %struct.coff_types, %struct.coff_types* %11, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %41, i32* %46, align 4
  br label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %12, align 4
  br label %36

50:                                               ; preds = %36
  store i64 -1, i64* %13, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i64 0, i64* %17, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %18, align 8
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %19, align 4
  br label %52

52:                                               ; preds = %367, %50
  %53 = getelementptr inbounds %struct.coff_symbols, %struct.coff_symbols* %10, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %368

57:                                               ; preds = %52
  %58 = load i32**, i32*** %7, align 8
  %59 = getelementptr inbounds %struct.coff_symbols, %struct.coff_symbols* %10, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %21, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %21, align 8
  %65 = call i32 @bfd_coff_get_syment(i32* %63, i32* %64, %struct.internal_syment* %23)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %57
  %68 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %69 = call i32 (...) @bfd_get_error()
  %70 = call i64 @bfd_errmsg(i32 %69)
  %71 = call i32 @non_fatal(i32 %68, i64 %70)
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %5, align 4
  br label %370

73:                                               ; preds = %57
  %74 = load i32*, i32** %21, align 8
  %75 = call i8* @bfd_asymbol_name(i32* %74)
  store i8* %75, i8** %22, align 8
  %76 = getelementptr inbounds %struct.coff_symbols, %struct.coff_symbols* %10, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %20, align 8
  %78 = getelementptr inbounds %struct.coff_symbols, %struct.coff_symbols* %10, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %78, align 8
  %81 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %23, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 1, %82
  %84 = getelementptr inbounds %struct.coff_symbols, %struct.coff_symbols* %10, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, %83
  store i64 %86, i64* %84, align 8
  %87 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %23, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %73
  store %union.internal_auxent* null, %union.internal_auxent** %25, align 8
  br label %103

91:                                               ; preds = %73
  %92 = load i32*, i32** %6, align 8
  %93 = load i32*, i32** %21, align 8
  %94 = call i32 @bfd_coff_get_auxent(i32* %92, i32* %93, i32 0, %union.internal_auxent* %24)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %91
  %97 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %98 = call i32 (...) @bfd_get_error()
  %99 = call i64 @bfd_errmsg(i32 %98)
  %100 = call i32 @non_fatal(i32 %97, i64 %99)
  %101 = load i32, i32* @FALSE, align 4
  store i32 %101, i32* %5, align 4
  br label %370

102:                                              ; preds = %91
  store %union.internal_auxent* %24, %union.internal_auxent** %25, align 8
  br label %103

103:                                              ; preds = %102, %90
  %104 = load i64, i64* %20, align 8
  %105 = load i64, i64* %13, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %23, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 134
  br i1 %110, label %111, label %118

111:                                              ; preds = %107
  %112 = load i8*, i8** %9, align 8
  %113 = call i32 @debug_set_filename(i8* %112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* @FALSE, align 4
  store i32 %116, i32* %5, align 4
  br label %370

117:                                              ; preds = %111
  br label %118

118:                                              ; preds = %117, %107, %103
  %119 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %23, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  switch i32 %120, label %341 [
    i32 138, label %121
    i32 136, label %121
    i32 130, label %121
    i32 129, label %121
    i32 132, label %121
    i32 140, label %121
    i32 133, label %121
    i32 134, label %122
    i32 131, label %132
    i32 128, label %139
    i32 137, label %139
    i32 135, label %194
    i32 139, label %313
  ]

121:                                              ; preds = %118, %118, %118, %118, %118, %118, %118
  br label %367

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %23, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %13, align 8
  %125 = load i8*, i8** %9, align 8
  %126 = load i8*, i8** %22, align 8
  %127 = call i32 @debug_set_filename(i8* %125, i8* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %122
  %130 = load i32, i32* @FALSE, align 4
  store i32 %130, i32* %5, align 4
  br label %370

131:                                              ; preds = %122
  br label %367

132:                                              ; preds = %118
  %133 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %23, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @T_NULL, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %367

138:                                              ; preds = %132
  br label %139

139:                                              ; preds = %118, %118, %138
  %140 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %23, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @ISFCN(i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %168

144:                                              ; preds = %139
  %145 = load i8*, i8** %22, align 8
  store i8* %145, i8** %14, align 8
  %146 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %23, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  store i32 %147, i32* %15, align 4
  %148 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %23, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  store i32 %149, i32* %16, align 4
  %150 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %23, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %144
  %154 = load i32*, i32** %21, align 8
  %155 = call i64 @bfd_asymbol_value(i32* %154)
  %156 = bitcast %union.internal_auxent* %24 to %struct.TYPE_9__*
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %155, %159
  store i64 %160, i64* %17, align 8
  br label %162

161:                                              ; preds = %144
  store i64 0, i64* %17, align 8
  br label %162

162:                                              ; preds = %161, %153
  %163 = load i32*, i32** %6, align 8
  %164 = load i32, i32* @_get_lineno, align 4
  %165 = load i32*, i32** %6, align 8
  %166 = load i32*, i32** %21, align 8
  %167 = call %struct.TYPE_11__* @BFD_SEND(i32* %163, i32 %164, i32* %166)
  store %struct.TYPE_11__* %167, %struct.TYPE_11__** %18, align 8
  br label %367

168:                                              ; preds = %139
  %169 = load i32*, i32** %6, align 8
  %170 = load i64, i64* %20, align 8
  %171 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %23, i32 0, i32 3
  %172 = load i32, i32* %171, align 8
  %173 = load %union.internal_auxent*, %union.internal_auxent** %25, align 8
  %174 = load i32, i32* @TRUE, align 4
  %175 = load i8*, i8** %9, align 8
  %176 = call i32 @parse_coff_type(i32* %169, %struct.coff_symbols* %10, %struct.coff_types* %11, i64 %170, i32 %172, %union.internal_auxent* %173, i32 %174, i8* %175)
  store i32 %176, i32* %26, align 4
  %177 = load i32, i32* %26, align 4
  %178 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %168
  %181 = load i32, i32* @FALSE, align 4
  store i32 %181, i32* %5, align 4
  br label %370

182:                                              ; preds = %168
  %183 = load i32*, i32** %6, align 8
  %184 = load i32*, i32** %21, align 8
  %185 = load i64, i64* %20, align 8
  %186 = load i8*, i8** %9, align 8
  %187 = load i32, i32* %26, align 4
  %188 = load i32, i32* %19, align 4
  %189 = call i32 @parse_coff_symbol(i32* %183, %struct.coff_types* %11, i32* %184, i64 %185, %struct.internal_syment* %23, i8* %186, i32 %187, i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %182
  %192 = load i32, i32* @FALSE, align 4
  store i32 %192, i32* %5, align 4
  br label %370

193:                                              ; preds = %182
  br label %367

194:                                              ; preds = %118
  %195 = load i8*, i8** %22, align 8
  %196 = call i32 @strcmp(i8* %195, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %282

198:                                              ; preds = %194
  %199 = load i8*, i8** %14, align 8
  %200 = icmp eq i8* %199, null
  br i1 %200, label %201, label %206

201:                                              ; preds = %198
  %202 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %203 = load i64, i64* %20, align 8
  %204 = call i32 @non_fatal(i32 %202, i64 %203)
  %205 = load i32, i32* @FALSE, align 4
  store i32 %205, i32* %5, align 4
  br label %370

206:                                              ; preds = %198
  %207 = load i32*, i32** %6, align 8
  %208 = load i64, i64* %20, align 8
  %209 = load i32, i32* %16, align 4
  %210 = call i32 @DECREF(i32 %209)
  %211 = load %union.internal_auxent*, %union.internal_auxent** %25, align 8
  %212 = load i32, i32* @FALSE, align 4
  %213 = load i8*, i8** %9, align 8
  %214 = call i32 @parse_coff_type(i32* %207, %struct.coff_symbols* %10, %struct.coff_types* %11, i64 %208, i32 %210, %union.internal_auxent* %211, i32 %212, i8* %213)
  store i32 %214, i32* %26, align 4
  %215 = load i32, i32* %26, align 4
  %216 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %206
  %219 = load i32, i32* @FALSE, align 4
  store i32 %219, i32* %5, align 4
  br label %370

220:                                              ; preds = %206
  %221 = load i8*, i8** %9, align 8
  %222 = load i8*, i8** %14, align 8
  %223 = load i32, i32* %26, align 4
  %224 = load i32, i32* %15, align 4
  %225 = call i32 @external_coff_symbol_p(i32 %224)
  %226 = load i32*, i32** %21, align 8
  %227 = call i64 @bfd_asymbol_value(i32* %226)
  %228 = call i32 @debug_record_function(i8* %221, i8* %222, i32 %223, i32 %225, i64 %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %232, label %230

230:                                              ; preds = %220
  %231 = load i32, i32* @FALSE, align 4
  store i32 %231, i32* %5, align 4
  br label %370

232:                                              ; preds = %220
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %234 = icmp ne %struct.TYPE_11__* %233, null
  br i1 %234, label %235, label %280

235:                                              ; preds = %232
  %236 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %23, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %235
  store i32 0, i32* %27, align 4
  br label %247

240:                                              ; preds = %235
  %241 = bitcast %union.internal_auxent* %24 to %struct.TYPE_9__*
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = sub nsw i32 %245, 1
  store i32 %246, i32* %27, align 4
  br label %247

247:                                              ; preds = %240, %239
  %248 = load i32*, i32** %6, align 8
  %249 = load i32*, i32** %21, align 8
  %250 = call i32 @bfd_get_section(i32* %249)
  %251 = call i64 @bfd_get_section_vma(i32* %248, i32 %250)
  store i64 %251, i64* %28, align 8
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 1
  store %struct.TYPE_11__* %253, %struct.TYPE_11__** %18, align 8
  br label %254

254:                                              ; preds = %276, %247
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %279

259:                                              ; preds = %254
  %260 = load i8*, i8** %9, align 8
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* %27, align 4
  %265 = add nsw i32 %263, %264
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* %28, align 8
  %271 = add nsw i64 %269, %270
  %272 = call i32 @debug_record_line(i8* %260, i32 %265, i64 %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %276, label %274

274:                                              ; preds = %259
  %275 = load i32, i32* @FALSE, align 4
  store i32 %275, i32* %5, align 4
  br label %370

276:                                              ; preds = %259
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 1
  store %struct.TYPE_11__* %278, %struct.TYPE_11__** %18, align 8
  br label %254

279:                                              ; preds = %254
  br label %280

280:                                              ; preds = %279, %232
  store i8* null, i8** %14, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %18, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %281 = load i32, i32* @TRUE, align 4
  store i32 %281, i32* %19, align 4
  br label %312

282:                                              ; preds = %194
  %283 = load i8*, i8** %22, align 8
  %284 = call i32 @strcmp(i8* %283, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %311

286:                                              ; preds = %282
  %287 = load i32, i32* %19, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %294, label %289

289:                                              ; preds = %286
  %290 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %291 = load i64, i64* %20, align 8
  %292 = call i32 @non_fatal(i32 %290, i64 %291)
  %293 = load i32, i32* @FALSE, align 4
  store i32 %293, i32* %5, align 4
  br label %370

294:                                              ; preds = %286
  %295 = load i32*, i32** %21, align 8
  %296 = call i64 @bfd_asymbol_value(i32* %295)
  %297 = load i64, i64* %17, align 8
  %298 = icmp sgt i64 %296, %297
  br i1 %298, label %299, label %302

299:                                              ; preds = %294
  %300 = load i32*, i32** %21, align 8
  %301 = call i64 @bfd_asymbol_value(i32* %300)
  store i64 %301, i64* %17, align 8
  br label %302

302:                                              ; preds = %299, %294
  %303 = load i8*, i8** %9, align 8
  %304 = load i64, i64* %17, align 8
  %305 = call i32 @debug_end_function(i8* %303, i64 %304)
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %309, label %307

307:                                              ; preds = %302
  %308 = load i32, i32* @FALSE, align 4
  store i32 %308, i32* %5, align 4
  br label %370

309:                                              ; preds = %302
  store i64 0, i64* %17, align 8
  %310 = load i32, i32* @FALSE, align 4
  store i32 %310, i32* %19, align 4
  br label %311

311:                                              ; preds = %309, %282
  br label %312

312:                                              ; preds = %311, %280
  br label %367

313:                                              ; preds = %118
  %314 = load i8*, i8** %22, align 8
  %315 = call i32 @strcmp(i8* %314, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %326

317:                                              ; preds = %313
  %318 = load i8*, i8** %9, align 8
  %319 = load i32*, i32** %21, align 8
  %320 = call i64 @bfd_asymbol_value(i32* %319)
  %321 = call i32 @debug_start_block(i8* %318, i64 %320)
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %325, label %323

323:                                              ; preds = %317
  %324 = load i32, i32* @FALSE, align 4
  store i32 %324, i32* %5, align 4
  br label %370

325:                                              ; preds = %317
  br label %340

326:                                              ; preds = %313
  %327 = load i8*, i8** %22, align 8
  %328 = call i32 @strcmp(i8* %327, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %339

330:                                              ; preds = %326
  %331 = load i8*, i8** %9, align 8
  %332 = load i32*, i32** %21, align 8
  %333 = call i64 @bfd_asymbol_value(i32* %332)
  %334 = call i32 @debug_end_block(i8* %331, i64 %333)
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %338, label %336

336:                                              ; preds = %330
  %337 = load i32, i32* @FALSE, align 4
  store i32 %337, i32* %5, align 4
  br label %370

338:                                              ; preds = %330
  br label %339

339:                                              ; preds = %338, %326
  br label %340

340:                                              ; preds = %339, %325
  br label %367

341:                                              ; preds = %118
  %342 = load i32*, i32** %6, align 8
  %343 = load i64, i64* %20, align 8
  %344 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %23, i32 0, i32 3
  %345 = load i32, i32* %344, align 8
  %346 = load %union.internal_auxent*, %union.internal_auxent** %25, align 8
  %347 = load i32, i32* @TRUE, align 4
  %348 = load i8*, i8** %9, align 8
  %349 = call i32 @parse_coff_type(i32* %342, %struct.coff_symbols* %10, %struct.coff_types* %11, i64 %343, i32 %345, %union.internal_auxent* %346, i32 %347, i8* %348)
  store i32 %349, i32* %26, align 4
  %350 = load i32, i32* %26, align 4
  %351 = load i32, i32* @DEBUG_TYPE_NULL, align 4
  %352 = icmp eq i32 %350, %351
  br i1 %352, label %353, label %355

353:                                              ; preds = %341
  %354 = load i32, i32* @FALSE, align 4
  store i32 %354, i32* %5, align 4
  br label %370

355:                                              ; preds = %341
  %356 = load i32*, i32** %6, align 8
  %357 = load i32*, i32** %21, align 8
  %358 = load i64, i64* %20, align 8
  %359 = load i8*, i8** %9, align 8
  %360 = load i32, i32* %26, align 4
  %361 = load i32, i32* %19, align 4
  %362 = call i32 @parse_coff_symbol(i32* %356, %struct.coff_types* %11, i32* %357, i64 %358, %struct.internal_syment* %23, i8* %359, i32 %360, i32 %361)
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %366, label %364

364:                                              ; preds = %355
  %365 = load i32, i32* @FALSE, align 4
  store i32 %365, i32* %5, align 4
  br label %370

366:                                              ; preds = %355
  br label %367

367:                                              ; preds = %366, %340, %312, %193, %162, %137, %131, %121
  br label %52

368:                                              ; preds = %52
  %369 = load i32, i32* @TRUE, align 4
  store i32 %369, i32* %5, align 4
  br label %370

370:                                              ; preds = %368, %364, %353, %336, %323, %307, %289, %274, %230, %218, %201, %191, %180, %129, %115, %96, %67
  %371 = load i32, i32* %5, align 4
  ret i32 %371
}

declare dso_local i32 @bfd_coff_get_syment(i32*, i32*, %struct.internal_syment*) #1

declare dso_local i32 @non_fatal(i32, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @bfd_errmsg(i32) #1

declare dso_local i32 @bfd_get_error(...) #1

declare dso_local i8* @bfd_asymbol_name(i32*) #1

declare dso_local i32 @bfd_coff_get_auxent(i32*, i32*, i32, %union.internal_auxent*) #1

declare dso_local i32 @debug_set_filename(i8*, i8*) #1

declare dso_local i32 @ISFCN(i32) #1

declare dso_local i64 @bfd_asymbol_value(i32*) #1

declare dso_local %struct.TYPE_11__* @BFD_SEND(i32*, i32, i32*) #1

declare dso_local i32 @parse_coff_type(i32*, %struct.coff_symbols*, %struct.coff_types*, i64, i32, %union.internal_auxent*, i32, i8*) #1

declare dso_local i32 @parse_coff_symbol(i32*, %struct.coff_types*, i32*, i64, %struct.internal_syment*, i8*, i32, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @DECREF(i32) #1

declare dso_local i32 @debug_record_function(i8*, i8*, i32, i32, i64) #1

declare dso_local i32 @external_coff_symbol_p(i32) #1

declare dso_local i64 @bfd_get_section_vma(i32*, i32) #1

declare dso_local i32 @bfd_get_section(i32*) #1

declare dso_local i32 @debug_record_line(i8*, i32, i64) #1

declare dso_local i32 @debug_end_function(i8*, i64) #1

declare dso_local i32 @debug_start_block(i8*, i64) #1

declare dso_local i32 @debug_end_block(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
