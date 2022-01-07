; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_coff_find_nearest_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_coff_find_nearest_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i64, i32*, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i64, i64 }
%struct.TYPE_24__ = type { i32, %struct.TYPE_22__*, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { %union.internal_auxent, %struct.TYPE_34__ }
%union.internal_auxent = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_34__ = type { i64, i32, i64, i64, %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i64 }
%struct.coff_section_tdata = type { i32, i64, i8*, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__*, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i64, i8* }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@C_FILE = common dso_local global i64 0, align 8
@N_DEBUG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @coff_find_nearest_line(i32* %0, %struct.TYPE_25__* %1, i32** %2, i64 %3, i8** %4, i8** %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_24__*, align 8
  %20 = alloca %struct.TYPE_22__*, align 8
  %21 = alloca %struct.TYPE_22__*, align 8
  %22 = alloca %struct.TYPE_26__*, align 8
  %23 = alloca %struct.coff_section_tdata*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.TYPE_22__*, align 8
  %28 = alloca i64, align 8
  %29 = alloca %struct.TYPE_23__*, align 8
  %30 = alloca %struct.TYPE_22__*, align 8
  %31 = alloca %union.internal_auxent*, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %10, align 8
  store i32** %2, i32*** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8** %4, i8*** %13, align 8
  store i8** %5, i8*** %14, align 8
  store i32* %6, i32** %15, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call %struct.TYPE_24__* @coff_data(i32* %32)
  store %struct.TYPE_24__* %33, %struct.TYPE_24__** %19, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32**, i32*** %11, align 8
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load i8**, i8*** %13, align 8
  %39 = load i8**, i8*** %14, align 8
  %40 = load i32*, i32** %15, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call %struct.TYPE_24__* @coff_data(i32* %41)
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 3
  %44 = call i32 @_bfd_stab_section_find_nearest_line(i32* %34, i32** %35, %struct.TYPE_25__* %36, i64 %37, i64* %16, i8** %38, i8** %39, i32* %40, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %7
  %47 = load i64, i64* @FALSE, align 8
  store i64 %47, i64* %8, align 8
  br label %481

48:                                               ; preds = %7
  %49 = load i64, i64* %16, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i64, i64* @TRUE, align 8
  store i64 %52, i64* %8, align 8
  br label %481

53:                                               ; preds = %48
  %54 = load i32*, i32** %9, align 8
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %56 = load i32**, i32*** %11, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i8**, i8*** %13, align 8
  %59 = load i8**, i8*** %14, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call %struct.TYPE_24__* @coff_data(i32* %61)
  %63 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %62, i32 0, i32 2
  %64 = call i64 @_bfd_dwarf2_find_nearest_line(i32* %54, %struct.TYPE_25__* %55, i32** %56, i64 %57, i8** %58, i8** %59, i32* %60, i32 0, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %53
  %67 = load i64, i64* @TRUE, align 8
  store i64 %67, i64* %8, align 8
  br label %481

68:                                               ; preds = %53
  %69 = load i8**, i8*** %13, align 8
  store i8* null, i8** %69, align 8
  %70 = load i8**, i8*** %14, align 8
  store i8* null, i8** %70, align 8
  %71 = load i32*, i32** %15, align 8
  store i32 0, i32* %71, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @bfd_family_coff(i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %68
  %76 = load i64, i64* @FALSE, align 8
  store i64 %76, i64* %8, align 8
  br label %481

77:                                               ; preds = %68
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %79 = icmp eq %struct.TYPE_24__* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i64, i64* @FALSE, align 8
  store i64 %81, i64* %8, align 8
  br label %481

82:                                               ; preds = %77
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %84, align 8
  store %struct.TYPE_22__* %85, %struct.TYPE_22__** %20, align 8
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %87 = icmp ne %struct.TYPE_22__* %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %82
  %89 = load i64, i64* @FALSE, align 8
  store i64 %89, i64* %8, align 8
  br label %481

90:                                               ; preds = %82
  %91 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i64 %95
  store %struct.TYPE_22__* %96, %struct.TYPE_22__** %21, align 8
  br label %97

97:                                               ; preds = %110, %90
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %100 = icmp ult %struct.TYPE_22__* %98, %99
  br i1 %100, label %101, label %120

101:                                              ; preds = %97
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @C_FILE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %120

110:                                              ; preds = %101
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 1, %115
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i64 %118
  store %struct.TYPE_22__* %119, %struct.TYPE_22__** %20, align 8
  br label %97

120:                                              ; preds = %109, %97
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %123 = icmp ult %struct.TYPE_22__* %121, %122
  br i1 %123, label %124, label %272

124:                                              ; preds = %120
  %125 = load i32*, i32** %9, align 8
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %127 = call i64 @bfd_get_section_vma(i32* %125, %struct.TYPE_25__* %126)
  store i64 %127, i64* %25, align 8
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to i8*
  %136 = load i8**, i8*** %13, align 8
  store i8* %135, i8** %136, align 8
  store i64 -1, i64* %26, align 8
  br label %137

137:                                              ; preds = %124, %270
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i64 1
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i64 %145
  store %struct.TYPE_22__* %146, %struct.TYPE_22__** %27, align 8
  br label %147

147:                                              ; preds = %180, %137
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %150 = icmp ult %struct.TYPE_22__* %148, %149
  br i1 %150, label %151, label %190

151:                                              ; preds = %147
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = icmp sgt i64 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %151
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %160 = load i32*, i32** %9, align 8
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = call %struct.TYPE_25__* @coff_section_from_bfd_index(i32* %160, i64 %165)
  %167 = icmp eq %struct.TYPE_25__* %159, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %158
  br label %190

169:                                              ; preds = %158, %151
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @C_FILE, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %179

177:                                              ; preds = %169
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  store %struct.TYPE_22__* %178, %struct.TYPE_22__** %27, align 8
  br label %190

179:                                              ; preds = %169
  br label %180

180:                                              ; preds = %179
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = add nsw i32 1, %185
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i64 %188
  store %struct.TYPE_22__* %189, %struct.TYPE_22__** %27, align 8
  br label %147

190:                                              ; preds = %177, %168, %147
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %193 = icmp ult %struct.TYPE_22__* %191, %192
  br i1 %193, label %194, label %235

194:                                              ; preds = %190
  %195 = load i64, i64* %12, align 8
  %196 = load i64, i64* %25, align 8
  %197 = add nsw i64 %195, %196
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = icmp sge i64 %197, %202
  br i1 %203, label %204, label %235

204:                                              ; preds = %194
  %205 = load i64, i64* %12, align 8
  %206 = load i64, i64* %25, align 8
  %207 = add nsw i64 %205, %206
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = sub nsw i64 %207, %212
  %214 = load i64, i64* %26, align 8
  %215 = icmp sle i64 %213, %214
  br i1 %215, label %216, label %235

216:                                              ; preds = %204
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = inttoptr i64 %223 to i8*
  %225 = load i8**, i8*** %13, align 8
  store i8* %224, i8** %225, align 8
  %226 = load i64, i64* %12, align 8
  %227 = load i64, i64* %25, align 8
  %228 = add nsw i64 %226, %227
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = sub nsw i64 %228, %233
  store i64 %234, i64* %26, align 8
  br label %235

235:                                              ; preds = %216, %204, %194, %190
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %237, i32 0, i32 1
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %238, align 8
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %242, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i64 %244
  %246 = icmp uge %struct.TYPE_22__* %236, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %235
  br label %271

248:                                              ; preds = %235
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_22__*, %struct.TYPE_22__** %250, align 8
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %251, i64 %256
  store %struct.TYPE_22__* %257, %struct.TYPE_22__** %20, align 8
  %258 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %259 = load %struct.TYPE_22__*, %struct.TYPE_22__** %21, align 8
  %260 = icmp ugt %struct.TYPE_22__* %258, %259
  br i1 %260, label %269, label %261

261:                                              ; preds = %248
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** %20, align 8
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @C_FILE, align 8
  %268 = icmp ne i64 %266, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %261, %248
  br label %271

270:                                              ; preds = %261
  br label %137

271:                                              ; preds = %269, %247
  br label %272

272:                                              ; preds = %271, %120
  %273 = load i32*, i32** %9, align 8
  %274 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %275 = call %struct.coff_section_tdata* @coff_section_data(i32* %273, %struct.TYPE_25__* %274)
  store %struct.coff_section_tdata* %275, %struct.coff_section_tdata** %23, align 8
  %276 = load %struct.coff_section_tdata*, %struct.coff_section_tdata** %23, align 8
  %277 = icmp ne %struct.coff_section_tdata* %276, null
  br i1 %277, label %278, label %300

278:                                              ; preds = %272
  %279 = load %struct.coff_section_tdata*, %struct.coff_section_tdata** %23, align 8
  %280 = getelementptr inbounds %struct.coff_section_tdata, %struct.coff_section_tdata* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = icmp ugt i32 %281, 0
  br i1 %282, label %283, label %300

283:                                              ; preds = %278
  %284 = load i64, i64* %12, align 8
  %285 = load %struct.coff_section_tdata*, %struct.coff_section_tdata** %23, align 8
  %286 = getelementptr inbounds %struct.coff_section_tdata, %struct.coff_section_tdata* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = icmp sge i64 %284, %287
  br i1 %288, label %289, label %300

289:                                              ; preds = %283
  %290 = load %struct.coff_section_tdata*, %struct.coff_section_tdata** %23, align 8
  %291 = getelementptr inbounds %struct.coff_section_tdata, %struct.coff_section_tdata* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  store i32 %292, i32* %17, align 4
  %293 = load %struct.coff_section_tdata*, %struct.coff_section_tdata** %23, align 8
  %294 = getelementptr inbounds %struct.coff_section_tdata, %struct.coff_section_tdata* %293, i32 0, i32 2
  %295 = load i8*, i8** %294, align 8
  %296 = load i8**, i8*** %14, align 8
  store i8* %295, i8** %296, align 8
  %297 = load %struct.coff_section_tdata*, %struct.coff_section_tdata** %23, align 8
  %298 = getelementptr inbounds %struct.coff_section_tdata, %struct.coff_section_tdata* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 8
  store i32 %299, i32* %18, align 4
  br label %301

300:                                              ; preds = %283, %278, %272
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %301

301:                                              ; preds = %300, %289
  %302 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %303 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %302, i32 0, i32 3
  %304 = load %struct.TYPE_26__*, %struct.TYPE_26__** %303, align 8
  %305 = icmp ne %struct.TYPE_26__* %304, null
  br i1 %305, label %306, label %443

306:                                              ; preds = %301
  store i64 0, i64* %28, align 8
  %307 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %308 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %307, i32 0, i32 3
  %309 = load %struct.TYPE_26__*, %struct.TYPE_26__** %308, align 8
  %310 = load i32, i32* %17, align 4
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %309, i64 %311
  store %struct.TYPE_26__* %312, %struct.TYPE_26__** %22, align 8
  br label %313

313:                                              ; preds = %422, %306
  %314 = load i32, i32* %17, align 4
  %315 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %316 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = icmp ult i32 %314, %317
  br i1 %318, label %319, label %425

319:                                              ; preds = %313
  %320 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %321 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %403

324:                                              ; preds = %319
  %325 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %326 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %326, i32 0, i32 1
  %328 = load i64, i64* %327, align 8
  %329 = inttoptr i64 %328 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %329, %struct.TYPE_23__** %29, align 8
  %330 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  %331 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* %12, align 8
  %335 = icmp sgt i64 %333, %334
  br i1 %335, label %336, label %337

336:                                              ; preds = %324
  br label %425

337:                                              ; preds = %324
  %338 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  %339 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %338, i32 0, i32 1
  %340 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %339, i32 0, i32 1
  %341 = load i8*, i8** %340, align 8
  %342 = load i8**, i8*** %14, align 8
  store i8* %341, i8** %342, align 8
  %343 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  %344 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  store i64 %346, i64* %28, align 8
  %347 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  %348 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %347, i32 0, i32 0
  %349 = load %struct.TYPE_22__*, %struct.TYPE_22__** %348, align 8
  %350 = icmp ne %struct.TYPE_22__* %349, null
  br i1 %350, label %351, label %402

351:                                              ; preds = %337
  %352 = load %struct.TYPE_23__*, %struct.TYPE_23__** %29, align 8
  %353 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %352, i32 0, i32 0
  %354 = load %struct.TYPE_22__*, %struct.TYPE_22__** %353, align 8
  store %struct.TYPE_22__* %354, %struct.TYPE_22__** %30, align 8
  %355 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %356 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %355, i64 1
  %357 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %358 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %358, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 8
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %356, i64 %362
  store %struct.TYPE_22__* %363, %struct.TYPE_22__** %30, align 8
  %364 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %365 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %365, i32 0, i32 1
  %367 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %366, i32 0, i32 2
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* @N_DEBUG, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %381

371:                                              ; preds = %351
  %372 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %373 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %372, i64 1
  %374 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %375 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %375, i32 0, i32 1
  %377 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 8
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %373, i64 %379
  store %struct.TYPE_22__* %380, %struct.TYPE_22__** %30, align 8
  br label %381

381:                                              ; preds = %371, %351
  %382 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %383 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %383, i32 0, i32 1
  %385 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %384, i32 0, i32 1
  %386 = load i32, i32* %385, align 8
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %401

388:                                              ; preds = %381
  %389 = load %struct.TYPE_22__*, %struct.TYPE_22__** %30, align 8
  %390 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %389, i64 1
  %391 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %391, i32 0, i32 0
  store %union.internal_auxent* %392, %union.internal_auxent** %31, align 8
  %393 = load %union.internal_auxent*, %union.internal_auxent** %31, align 8
  %394 = bitcast %union.internal_auxent* %393 to %struct.TYPE_30__*
  %395 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  store i32 %398, i32* %18, align 4
  %399 = load i32, i32* %18, align 4
  %400 = load i32*, i32** %15, align 8
  store i32 %399, i32* %400, align 4
  br label %401

401:                                              ; preds = %388, %381
  br label %402

402:                                              ; preds = %401, %337
  br label %419

403:                                              ; preds = %319
  %404 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %405 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %404, i32 0, i32 1
  %406 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %405, i32 0, i32 0
  %407 = load i64, i64* %406, align 8
  %408 = load i64, i64* %12, align 8
  %409 = icmp sgt i64 %407, %408
  br i1 %409, label %410, label %411

410:                                              ; preds = %403
  br label %425

411:                                              ; preds = %403
  %412 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %413 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = load i32, i32* %18, align 4
  %416 = add i32 %414, %415
  %417 = sub i32 %416, 1
  %418 = load i32*, i32** %15, align 8
  store i32 %417, i32* %418, align 4
  br label %419

419:                                              ; preds = %411, %402
  %420 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %421 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %420, i32 1
  store %struct.TYPE_26__* %421, %struct.TYPE_26__** %22, align 8
  br label %422

422:                                              ; preds = %419
  %423 = load i32, i32* %17, align 4
  %424 = add i32 %423, 1
  store i32 %424, i32* %17, align 4
  br label %313

425:                                              ; preds = %410, %336, %313
  %426 = load i32, i32* %17, align 4
  %427 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %428 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = icmp uge i32 %426, %429
  br i1 %430, label %431, label %442

431:                                              ; preds = %425
  %432 = load i64, i64* %28, align 8
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %434, label %442

434:                                              ; preds = %431
  %435 = load i64, i64* %12, align 8
  %436 = load i64, i64* %28, align 8
  %437 = sub nsw i64 %435, %436
  %438 = icmp sgt i64 %437, 256
  br i1 %438, label %439, label %442

439:                                              ; preds = %434
  %440 = load i8**, i8*** %14, align 8
  store i8* null, i8** %440, align 8
  %441 = load i32*, i32** %15, align 8
  store i32 0, i32* %441, align 4
  br label %442

442:                                              ; preds = %439, %434, %431, %425
  br label %443

443:                                              ; preds = %442, %301
  %444 = load %struct.coff_section_tdata*, %struct.coff_section_tdata** %23, align 8
  %445 = icmp eq %struct.coff_section_tdata* %444, null
  br i1 %445, label %446, label %462

446:                                              ; preds = %443
  %447 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %448 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %447, i32 0, i32 2
  %449 = load i32*, i32** %448, align 8
  %450 = load i32*, i32** %9, align 8
  %451 = icmp eq i32* %449, %450
  br i1 %451, label %452, label %462

452:                                              ; preds = %446
  store i32 32, i32* %24, align 4
  %453 = load i32*, i32** %9, align 8
  %454 = load i32, i32* %24, align 4
  %455 = call i64 @bfd_zalloc(i32* %453, i32 %454)
  %456 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %457 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %456, i32 0, i32 1
  store i64 %455, i64* %457, align 8
  %458 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %459 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %458, i32 0, i32 1
  %460 = load i64, i64* %459, align 8
  %461 = inttoptr i64 %460 to %struct.coff_section_tdata*
  store %struct.coff_section_tdata* %461, %struct.coff_section_tdata** %23, align 8
  br label %462

462:                                              ; preds = %452, %446, %443
  %463 = load %struct.coff_section_tdata*, %struct.coff_section_tdata** %23, align 8
  %464 = icmp ne %struct.coff_section_tdata* %463, null
  br i1 %464, label %465, label %479

465:                                              ; preds = %462
  %466 = load i64, i64* %12, align 8
  %467 = load %struct.coff_section_tdata*, %struct.coff_section_tdata** %23, align 8
  %468 = getelementptr inbounds %struct.coff_section_tdata, %struct.coff_section_tdata* %467, i32 0, i32 1
  store i64 %466, i64* %468, align 8
  %469 = load i32, i32* %17, align 4
  %470 = load %struct.coff_section_tdata*, %struct.coff_section_tdata** %23, align 8
  %471 = getelementptr inbounds %struct.coff_section_tdata, %struct.coff_section_tdata* %470, i32 0, i32 0
  store i32 %469, i32* %471, align 8
  %472 = load i8**, i8*** %14, align 8
  %473 = load i8*, i8** %472, align 8
  %474 = load %struct.coff_section_tdata*, %struct.coff_section_tdata** %23, align 8
  %475 = getelementptr inbounds %struct.coff_section_tdata, %struct.coff_section_tdata* %474, i32 0, i32 2
  store i8* %473, i8** %475, align 8
  %476 = load i32, i32* %18, align 4
  %477 = load %struct.coff_section_tdata*, %struct.coff_section_tdata** %23, align 8
  %478 = getelementptr inbounds %struct.coff_section_tdata, %struct.coff_section_tdata* %477, i32 0, i32 3
  store i32 %476, i32* %478, align 8
  br label %479

479:                                              ; preds = %465, %462
  %480 = load i64, i64* @TRUE, align 8
  store i64 %480, i64* %8, align 8
  br label %481

481:                                              ; preds = %479, %88, %80, %75, %66, %51, %46
  %482 = load i64, i64* %8, align 8
  ret i64 %482
}

declare dso_local %struct.TYPE_24__* @coff_data(i32*) #1

declare dso_local i32 @_bfd_stab_section_find_nearest_line(i32*, i32**, %struct.TYPE_25__*, i64, i64*, i8**, i8**, i32*, i32*) #1

declare dso_local i64 @_bfd_dwarf2_find_nearest_line(i32*, %struct.TYPE_25__*, i32**, i64, i8**, i8**, i32*, i32, i32*) #1

declare dso_local i32 @bfd_family_coff(i32*) #1

declare dso_local i64 @bfd_get_section_vma(i32*, %struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_25__* @coff_section_from_bfd_index(i32*, i64) #1

declare dso_local %struct.coff_section_tdata* @coff_section_data(i32*, %struct.TYPE_25__*) #1

declare dso_local i64 @bfd_zalloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
