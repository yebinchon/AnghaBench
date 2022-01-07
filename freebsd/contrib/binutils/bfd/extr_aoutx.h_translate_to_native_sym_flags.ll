; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_aoutx.h_translate_to_native_sym_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_aoutx.h_translate_to_native_sym_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32*, i64 }
%struct.external_nlist = type { i32*, i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_17__*, i64 }
%struct.TYPE_18__ = type { i32 }

@N_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"%s: can not represent section for symbol `%s' in a.out object file format\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"*unknown*\00", align 1
@bfd_error_nonrepresentable_section = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@N_EXT = common dso_local global i32 0, align 4
@N_INDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"%s: can not represent section `%s' in a.out object file format\00", align 1
@BSF_WARNING = common dso_local global i32 0, align 4
@N_WARNING = common dso_local global i32 0, align 4
@BSF_DEBUGGING = common dso_local global i32 0, align 4
@BSF_GLOBAL = common dso_local global i32 0, align 4
@BSF_LOCAL = common dso_local global i32 0, align 4
@BSF_CONSTRUCTOR = common dso_local global i32 0, align 4
@N_SETA = common dso_local global i32 0, align 4
@N_SETT = common dso_local global i32 0, align 4
@N_SETD = common dso_local global i32 0, align 4
@N_SETB = common dso_local global i32 0, align 4
@BSF_WEAK = common dso_local global i32 0, align 4
@N_WEAKA = common dso_local global i32 0, align 4
@N_WEAKT = common dso_local global i32 0, align 4
@N_WEAKD = common dso_local global i32 0, align 4
@N_WEAKB = common dso_local global i32 0, align 4
@N_WEAKU = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_16__*, %struct.external_nlist*)* @translate_to_native_sym_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @translate_to_native_sym_flags(i32* %0, %struct.TYPE_16__* %1, %struct.external_nlist* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.external_nlist*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store %struct.external_nlist* %2, %struct.external_nlist** %7, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load i32, i32* @N_TYPE, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.external_nlist*, %struct.external_nlist** %7, align 8
  %19 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %17
  store i32 %23, i32* %21, align 4
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %25 = call %struct.TYPE_17__* @bfd_get_section(%struct.TYPE_16__* %24)
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %9, align 8
  store i64 0, i64* %10, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %27 = icmp eq %struct.TYPE_17__* %26, null
  br i1 %27, label %28, label %48

28:                                               ; preds = %3
  %29 = call i32* @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @bfd_get_filename(i32* %30)
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  br label %42

40:                                               ; preds = %28
  %41 = call i32* @_(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi i32* [ %39, %36 ], [ %41, %40 ]
  %44 = call i32 @_bfd_error_handler(i32* %29, i32 %31, i32* %43)
  %45 = load i32, i32* @bfd_error_nonrepresentable_section, align 4
  %46 = call i32 @bfd_set_error(i32 %45)
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %4, align 4
  br label %305

48:                                               ; preds = %3
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %50, align 8
  %52 = icmp ne %struct.TYPE_17__* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %10, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  store %struct.TYPE_17__* %59, %struct.TYPE_17__** %9, align 8
  br label %60

60:                                               ; preds = %53, %48
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %62 = call i64 @bfd_is_abs_section(%struct.TYPE_17__* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load %struct.external_nlist*, %struct.external_nlist** %7, align 8
  %66 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, 132
  store i32 %70, i32* %68, align 4
  br label %169

71:                                               ; preds = %60
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = call %struct.TYPE_17__* @obj_textsec(i32* %73)
  %75 = icmp eq %struct.TYPE_17__* %72, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.external_nlist*, %struct.external_nlist** %7, align 8
  %78 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, 129
  store i32 %82, i32* %80, align 4
  br label %168

83:                                               ; preds = %71
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %85 = load i32*, i32** %5, align 8
  %86 = call %struct.TYPE_17__* @obj_datasec(i32* %85)
  %87 = icmp eq %struct.TYPE_17__* %84, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load %struct.external_nlist*, %struct.external_nlist** %7, align 8
  %90 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, 130
  store i32 %94, i32* %92, align 4
  br label %167

95:                                               ; preds = %83
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = call %struct.TYPE_17__* @obj_bsssec(i32* %97)
  %99 = icmp eq %struct.TYPE_17__* %96, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load %struct.external_nlist*, %struct.external_nlist** %7, align 8
  %102 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, 131
  store i32 %106, i32* %104, align 4
  br label %166

107:                                              ; preds = %95
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %109 = call i64 @bfd_is_und_section(%struct.TYPE_17__* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %107
  %112 = load i32, i32* @N_EXT, align 4
  %113 = or i32 128, %112
  %114 = load %struct.external_nlist*, %struct.external_nlist** %7, align 8
  %115 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  store i32 %113, i32* %117, align 4
  br label %165

118:                                              ; preds = %107
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %120 = call i64 @bfd_is_ind_section(%struct.TYPE_17__* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = load i32, i32* @N_INDR, align 4
  %124 = load %struct.external_nlist*, %struct.external_nlist** %7, align 8
  %125 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  store i32 %123, i32* %127, align 4
  br label %164

128:                                              ; preds = %118
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %130 = call i64 @bfd_is_com_section(%struct.TYPE_17__* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %128
  %133 = load i32, i32* @N_EXT, align 4
  %134 = or i32 128, %133
  %135 = load %struct.external_nlist*, %struct.external_nlist** %7, align 8
  %136 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  store i32 %134, i32* %138, align 4
  br label %163

139:                                              ; preds = %128
  %140 = load i32*, i32** %5, align 8
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %142 = call i64 @aout_section_merge_with_text_p(i32* %140, %struct.TYPE_17__* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %139
  %145 = load %struct.external_nlist*, %struct.external_nlist** %7, align 8
  %146 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, 129
  store i32 %150, i32* %148, align 4
  br label %162

151:                                              ; preds = %139
  %152 = call i32* @_(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %153 = load i32*, i32** %5, align 8
  %154 = call i32 @bfd_get_filename(i32* %153)
  %155 = load i32*, i32** %5, align 8
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %157 = call i32* @bfd_get_section_name(i32* %155, %struct.TYPE_17__* %156)
  %158 = call i32 @_bfd_error_handler(i32* %152, i32 %154, i32* %157)
  %159 = load i32, i32* @bfd_error_nonrepresentable_section, align 4
  %160 = call i32 @bfd_set_error(i32 %159)
  %161 = load i32, i32* @FALSE, align 4
  store i32 %161, i32* %4, align 4
  br label %305

162:                                              ; preds = %144
  br label %163

163:                                              ; preds = %162, %132
  br label %164

164:                                              ; preds = %163, %122
  br label %165

165:                                              ; preds = %164, %111
  br label %166

166:                                              ; preds = %165, %100
  br label %167

167:                                              ; preds = %166, %88
  br label %168

168:                                              ; preds = %167, %76
  br label %169

169:                                              ; preds = %168, %64
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* %10, align 8
  %174 = add nsw i64 %172, %173
  %175 = load i64, i64* %8, align 8
  %176 = add nsw i64 %175, %174
  store i64 %176, i64* %8, align 8
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @BSF_WARNING, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %169
  %184 = load i32, i32* @N_WARNING, align 4
  %185 = load %struct.external_nlist*, %struct.external_nlist** %7, align 8
  %186 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  store i32 %184, i32* %188, align 4
  br label %189

189:                                              ; preds = %183, %169
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @BSF_DEBUGGING, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %189
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %198 = bitcast %struct.TYPE_16__* %197 to %struct.TYPE_18__*
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.external_nlist*, %struct.external_nlist** %7, align 8
  %202 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  store i32 %200, i32* %204, align 4
  br label %238

205:                                              ; preds = %189
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @BSF_GLOBAL, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %220

212:                                              ; preds = %205
  %213 = load i32, i32* @N_EXT, align 4
  %214 = load %struct.external_nlist*, %struct.external_nlist** %7, align 8
  %215 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  %218 = load i32, i32* %217, align 4
  %219 = or i32 %218, %213
  store i32 %219, i32* %217, align 4
  br label %237

220:                                              ; preds = %205
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @BSF_LOCAL, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %236

227:                                              ; preds = %220
  %228 = load i32, i32* @N_EXT, align 4
  %229 = xor i32 %228, -1
  %230 = load %struct.external_nlist*, %struct.external_nlist** %7, align 8
  %231 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  %234 = load i32, i32* %233, align 4
  %235 = and i32 %234, %229
  store i32 %235, i32* %233, align 4
  br label %236

236:                                              ; preds = %227, %220
  br label %237

237:                                              ; preds = %236, %212
  br label %238

238:                                              ; preds = %237, %196
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @BSF_CONSTRUCTOR, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %265

245:                                              ; preds = %238
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %247 = bitcast %struct.TYPE_16__* %246 to %struct.TYPE_18__*
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  store i32 %249, i32* %11, align 4
  %250 = load i32, i32* %11, align 4
  switch i32 %250, label %259 [
    i32 132, label %251
    i32 129, label %253
    i32 130, label %255
    i32 131, label %257
  ]

251:                                              ; preds = %245
  %252 = load i32, i32* @N_SETA, align 4
  store i32 %252, i32* %11, align 4
  br label %259

253:                                              ; preds = %245
  %254 = load i32, i32* @N_SETT, align 4
  store i32 %254, i32* %11, align 4
  br label %259

255:                                              ; preds = %245
  %256 = load i32, i32* @N_SETD, align 4
  store i32 %256, i32* %11, align 4
  br label %259

257:                                              ; preds = %245
  %258 = load i32, i32* @N_SETB, align 4
  store i32 %258, i32* %11, align 4
  br label %259

259:                                              ; preds = %245, %257, %255, %253, %251
  %260 = load i32, i32* %11, align 4
  %261 = load %struct.external_nlist*, %struct.external_nlist** %7, align 8
  %262 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %261, i32 0, i32 0
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 0
  store i32 %260, i32* %264, align 4
  br label %265

265:                                              ; preds = %259, %238
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @BSF_WEAK, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %297

272:                                              ; preds = %265
  %273 = load %struct.external_nlist*, %struct.external_nlist** %7, align 8
  %274 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 0
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* @N_TYPE, align 4
  %279 = and i32 %277, %278
  switch i32 %279, label %280 [
    i32 132, label %281
    i32 129, label %283
    i32 130, label %285
    i32 131, label %287
    i32 128, label %289
  ]

280:                                              ; preds = %272
  br label %281

281:                                              ; preds = %272, %280
  %282 = load i32, i32* @N_WEAKA, align 4
  store i32 %282, i32* %12, align 4
  br label %291

283:                                              ; preds = %272
  %284 = load i32, i32* @N_WEAKT, align 4
  store i32 %284, i32* %12, align 4
  br label %291

285:                                              ; preds = %272
  %286 = load i32, i32* @N_WEAKD, align 4
  store i32 %286, i32* %12, align 4
  br label %291

287:                                              ; preds = %272
  %288 = load i32, i32* @N_WEAKB, align 4
  store i32 %288, i32* %12, align 4
  br label %291

289:                                              ; preds = %272
  %290 = load i32, i32* @N_WEAKU, align 4
  store i32 %290, i32* %12, align 4
  br label %291

291:                                              ; preds = %289, %287, %285, %283, %281
  %292 = load i32, i32* %12, align 4
  %293 = load %struct.external_nlist*, %struct.external_nlist** %7, align 8
  %294 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %293, i32 0, i32 0
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 0
  store i32 %292, i32* %296, align 4
  br label %297

297:                                              ; preds = %291, %265
  %298 = load i32*, i32** %5, align 8
  %299 = load i64, i64* %8, align 8
  %300 = load %struct.external_nlist*, %struct.external_nlist** %7, align 8
  %301 = getelementptr inbounds %struct.external_nlist, %struct.external_nlist* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @PUT_WORD(i32* %298, i64 %299, i32 %302)
  %304 = load i32, i32* @TRUE, align 4
  store i32 %304, i32* %4, align 4
  br label %305

305:                                              ; preds = %297, %151, %42
  %306 = load i32, i32* %4, align 4
  ret i32 %306
}

declare dso_local %struct.TYPE_17__* @bfd_get_section(%struct.TYPE_16__*) #1

declare dso_local i32 @_bfd_error_handler(i32*, i32, i32*) #1

declare dso_local i32* @_(i8*) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i64 @bfd_is_abs_section(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_17__* @obj_textsec(i32*) #1

declare dso_local %struct.TYPE_17__* @obj_datasec(i32*) #1

declare dso_local %struct.TYPE_17__* @obj_bsssec(i32*) #1

declare dso_local i64 @bfd_is_und_section(%struct.TYPE_17__*) #1

declare dso_local i64 @bfd_is_ind_section(%struct.TYPE_17__*) #1

declare dso_local i64 @bfd_is_com_section(%struct.TYPE_17__*) #1

declare dso_local i64 @aout_section_merge_with_text_p(i32*, %struct.TYPE_17__*) #1

declare dso_local i32* @bfd_get_section_name(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @PUT_WORD(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
