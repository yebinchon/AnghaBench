; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_merge.c__bfd_add_merge_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_merge.c__bfd_add_merge_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i32, i32, i32 }
%struct.sec_merge_info = type { i32*, %struct.sec_merge_sec_info*, %struct.sec_merge_info* }
%struct.sec_merge_sec_info = type { i8**, i32, i32*, i32*, %struct.TYPE_8__*, %struct.sec_merge_sec_info* }

@DYNAMIC = common dso_local global i32 0, align 4
@SEC_MERGE = common dso_local global i32 0, align 4
@SEC_EXCLUDE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SEC_RELOC = common dso_local global i32 0, align 4
@SEC_STRINGS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_add_merge_section(%struct.TYPE_7__* %0, i8** %1, %struct.TYPE_8__* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.sec_merge_info*, align 8
  %11 = alloca %struct.sec_merge_sec_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8** %1, i8*** %7, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DYNAMIC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SEC_MERGE, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20, %4
  %28 = call i32 (...) @abort() #3
  unreachable

29:                                               ; preds = %20
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %29
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SEC_EXCLUDE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %34
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %34, %29
  %47 = load i32, i32* @TRUE, align 4
  store i32 %47, i32* %5, align 4
  br label %284

48:                                               ; preds = %41
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @SEC_RELOC, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %5, align 4
  br label %284

57:                                               ; preds = %48
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %12, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %12, align 4
  %65 = shl i32 1, %64
  %66 = icmp ult i32 %63, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %57
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sub i32 %73, 1
  %75 = and i32 %70, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %100, label %77

77:                                               ; preds = %67
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SEC_STRINGS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %100

84:                                               ; preds = %77, %57
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %12, align 4
  %89 = shl i32 1, %88
  %90 = icmp ugt i32 %87, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %84
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %12, align 4
  %96 = shl i32 1, %95
  %97 = sub i32 %96, 1
  %98 = and i32 %94, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %91, %77, %67
  %101 = load i32, i32* @TRUE, align 4
  store i32 %101, i32* %5, align 4
  br label %284

102:                                              ; preds = %91, %84
  %103 = load i8**, i8*** %7, align 8
  %104 = load i8*, i8** %103, align 8
  %105 = bitcast i8* %104 to %struct.sec_merge_info*
  store %struct.sec_merge_info* %105, %struct.sec_merge_info** %10, align 8
  br label %106

106:                                              ; preds = %161, %102
  %107 = load %struct.sec_merge_info*, %struct.sec_merge_info** %10, align 8
  %108 = icmp ne %struct.sec_merge_info* %107, null
  br i1 %108, label %109, label %165

109:                                              ; preds = %106
  %110 = load %struct.sec_merge_info*, %struct.sec_merge_info** %10, align 8
  %111 = getelementptr inbounds %struct.sec_merge_info, %struct.sec_merge_info* %110, i32 0, i32 1
  %112 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %111, align 8
  store %struct.sec_merge_sec_info* %112, %struct.sec_merge_sec_info** %11, align 8
  %113 = icmp ne %struct.sec_merge_sec_info* %112, null
  br i1 %113, label %114, label %160

114:                                              ; preds = %109
  %115 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %11, align 8
  %116 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %115, i32 0, i32 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = xor i32 %119, %122
  %124 = load i32, i32* @SEC_MERGE, align 4
  %125 = load i32, i32* @SEC_STRINGS, align 4
  %126 = or i32 %124, %125
  %127 = and i32 %123, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %160, label %129

129:                                              ; preds = %114
  %130 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %11, align 8
  %131 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %130, i32 0, i32 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %134, %137
  br i1 %138, label %139, label %160

139:                                              ; preds = %129
  %140 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %11, align 8
  %141 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %140, i32 0, i32 4
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %144, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %139
  %150 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %11, align 8
  %151 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %150, i32 0, i32 4
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %154, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %149
  br label %165

160:                                              ; preds = %149, %139, %129, %114, %109
  br label %161

161:                                              ; preds = %160
  %162 = load %struct.sec_merge_info*, %struct.sec_merge_info** %10, align 8
  %163 = getelementptr inbounds %struct.sec_merge_info, %struct.sec_merge_info* %162, i32 0, i32 2
  %164 = load %struct.sec_merge_info*, %struct.sec_merge_info** %163, align 8
  store %struct.sec_merge_info* %164, %struct.sec_merge_info** %10, align 8
  br label %106

165:                                              ; preds = %159, %106
  %166 = load %struct.sec_merge_info*, %struct.sec_merge_info** %10, align 8
  %167 = icmp eq %struct.sec_merge_info* %166, null
  br i1 %167, label %168, label %203

168:                                              ; preds = %165
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %170 = call i8* @bfd_alloc(%struct.TYPE_7__* %169, i32 24)
  %171 = bitcast i8* %170 to %struct.sec_merge_info*
  store %struct.sec_merge_info* %171, %struct.sec_merge_info** %10, align 8
  %172 = load %struct.sec_merge_info*, %struct.sec_merge_info** %10, align 8
  %173 = icmp eq %struct.sec_merge_info* %172, null
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  br label %281

175:                                              ; preds = %168
  %176 = load i8**, i8*** %7, align 8
  %177 = load i8*, i8** %176, align 8
  %178 = bitcast i8* %177 to %struct.sec_merge_info*
  %179 = load %struct.sec_merge_info*, %struct.sec_merge_info** %10, align 8
  %180 = getelementptr inbounds %struct.sec_merge_info, %struct.sec_merge_info* %179, i32 0, i32 2
  store %struct.sec_merge_info* %178, %struct.sec_merge_info** %180, align 8
  %181 = load %struct.sec_merge_info*, %struct.sec_merge_info** %10, align 8
  %182 = getelementptr inbounds %struct.sec_merge_info, %struct.sec_merge_info* %181, i32 0, i32 1
  store %struct.sec_merge_sec_info* null, %struct.sec_merge_sec_info** %182, align 8
  %183 = load %struct.sec_merge_info*, %struct.sec_merge_info** %10, align 8
  %184 = bitcast %struct.sec_merge_info* %183 to i8*
  %185 = load i8**, i8*** %7, align 8
  store i8* %184, i8** %185, align 8
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @SEC_STRINGS, align 4
  %193 = and i32 %191, %192
  %194 = call i32* @sec_merge_init(i32 %188, i32 %193)
  %195 = load %struct.sec_merge_info*, %struct.sec_merge_info** %10, align 8
  %196 = getelementptr inbounds %struct.sec_merge_info, %struct.sec_merge_info* %195, i32 0, i32 0
  store i32* %194, i32** %196, align 8
  %197 = load %struct.sec_merge_info*, %struct.sec_merge_info** %10, align 8
  %198 = getelementptr inbounds %struct.sec_merge_info, %struct.sec_merge_info* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = icmp eq i32* %199, null
  br i1 %200, label %201, label %202

201:                                              ; preds = %175
  br label %281

202:                                              ; preds = %175
  br label %203

203:                                              ; preds = %202, %165
  %204 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = sext i32 %206 to i64
  %208 = add i64 48, %207
  %209 = sub i64 %208, 1
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %13, align 4
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %212 = load i32, i32* %13, align 4
  %213 = call i8* @bfd_alloc(%struct.TYPE_7__* %211, i32 %212)
  %214 = load i8**, i8*** %9, align 8
  store i8* %213, i8** %214, align 8
  %215 = load i8**, i8*** %9, align 8
  %216 = load i8*, i8** %215, align 8
  %217 = icmp eq i8* %216, null
  br i1 %217, label %218, label %219

218:                                              ; preds = %203
  br label %281

219:                                              ; preds = %203
  %220 = load i8**, i8*** %9, align 8
  %221 = load i8*, i8** %220, align 8
  %222 = bitcast i8* %221 to %struct.sec_merge_sec_info*
  store %struct.sec_merge_sec_info* %222, %struct.sec_merge_sec_info** %11, align 8
  %223 = load %struct.sec_merge_info*, %struct.sec_merge_info** %10, align 8
  %224 = getelementptr inbounds %struct.sec_merge_info, %struct.sec_merge_info* %223, i32 0, i32 1
  %225 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %224, align 8
  %226 = icmp ne %struct.sec_merge_sec_info* %225, null
  br i1 %226, label %227, label %240

227:                                              ; preds = %219
  %228 = load %struct.sec_merge_info*, %struct.sec_merge_info** %10, align 8
  %229 = getelementptr inbounds %struct.sec_merge_info, %struct.sec_merge_info* %228, i32 0, i32 1
  %230 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %229, align 8
  %231 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %230, i32 0, i32 5
  %232 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %231, align 8
  %233 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %11, align 8
  %234 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %233, i32 0, i32 5
  store %struct.sec_merge_sec_info* %232, %struct.sec_merge_sec_info** %234, align 8
  %235 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %11, align 8
  %236 = load %struct.sec_merge_info*, %struct.sec_merge_info** %10, align 8
  %237 = getelementptr inbounds %struct.sec_merge_info, %struct.sec_merge_info* %236, i32 0, i32 1
  %238 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %237, align 8
  %239 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %238, i32 0, i32 5
  store %struct.sec_merge_sec_info* %235, %struct.sec_merge_sec_info** %239, align 8
  br label %244

240:                                              ; preds = %219
  %241 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %11, align 8
  %242 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %11, align 8
  %243 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %242, i32 0, i32 5
  store %struct.sec_merge_sec_info* %241, %struct.sec_merge_sec_info** %243, align 8
  br label %244

244:                                              ; preds = %240, %227
  %245 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %11, align 8
  %246 = load %struct.sec_merge_info*, %struct.sec_merge_info** %10, align 8
  %247 = getelementptr inbounds %struct.sec_merge_info, %struct.sec_merge_info* %246, i32 0, i32 1
  store %struct.sec_merge_sec_info* %245, %struct.sec_merge_sec_info** %247, align 8
  %248 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %249 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %11, align 8
  %250 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %249, i32 0, i32 4
  store %struct.TYPE_8__* %248, %struct.TYPE_8__** %250, align 8
  %251 = load i8**, i8*** %9, align 8
  %252 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %11, align 8
  %253 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %252, i32 0, i32 0
  store i8** %251, i8*** %253, align 8
  %254 = load %struct.sec_merge_info*, %struct.sec_merge_info** %10, align 8
  %255 = getelementptr inbounds %struct.sec_merge_info, %struct.sec_merge_info* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %11, align 8
  %258 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %257, i32 0, i32 3
  store i32* %256, i32** %258, align 8
  %259 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %11, align 8
  %260 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %259, i32 0, i32 2
  store i32* null, i32** %260, align 8
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 6
  store i32 %263, i32* %265, align 8
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %270 = load %struct.sec_merge_sec_info*, %struct.sec_merge_sec_info** %11, align 8
  %271 = getelementptr inbounds %struct.sec_merge_sec_info, %struct.sec_merge_sec_info* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @bfd_get_section_contents(i32 %268, %struct.TYPE_8__* %269, i32 %272, i32 0, i32 %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %279, label %278

278:                                              ; preds = %244
  br label %281

279:                                              ; preds = %244
  %280 = load i32, i32* @TRUE, align 4
  store i32 %280, i32* %5, align 4
  br label %284

281:                                              ; preds = %278, %218, %201, %174
  %282 = load i8**, i8*** %9, align 8
  store i8* null, i8** %282, align 8
  %283 = load i32, i32* @FALSE, align 4
  store i32 %283, i32* %5, align 4
  br label %284

284:                                              ; preds = %281, %279, %100, %55, %46
  %285 = load i32, i32* %5, align 4
  ret i32 %285
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i8* @bfd_alloc(%struct.TYPE_7__*, i32) #2

declare dso_local i32* @sec_merge_init(i32, i32) #2

declare dso_local i32 @bfd_get_section_contents(i32, %struct.TYPE_8__*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
