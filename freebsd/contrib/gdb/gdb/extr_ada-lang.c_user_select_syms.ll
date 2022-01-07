; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_user_select_syms.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_user_select_syms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.block = type { i32 }
%struct.symtab_and_line = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.symtab = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Request to select 0 symbols!\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"[0] cancel\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"[1] all\0A\00", align 1
@LOC_BLOCK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"[%d] %s at %s:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"<no source file available>\00", align 1
@LOC_CONST = common dso_local global i64 0, align 8
@TYPE_CODE_ENUM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"[%d] \00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"'(%s) (enumeral)\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"[%d] %s in %s (enumeral)\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"[%d] %s at %s:?\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"[%d] %s (enumeral)\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"[%d] %s at ?\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"overload-choice\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_select_syms(%struct.symbol** %0, %struct.block** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.symbol**, align 8
  %7 = alloca %struct.block**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.symtab_and_line, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.symtab*, align 8
  store %struct.symbol** %0, %struct.symbol*** %6, align 8
  store %struct.block** %1, %struct.block*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = trunc i64 %19 to i32
  %21 = call i64 @alloca(i32 %20)
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %11, align 8
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 1
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 2
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %4
  %32 = load i32, i32* %8, align 4
  %33 = icmp sle i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %5, align 4
  br label %292

36:                                               ; preds = %31
  %37 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %9, align 4
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %36
  %43 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %44 = load %struct.block**, %struct.block*** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @sort_choices(%struct.symbol** %43, %struct.block** %44, i32 %45)
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %241, %42
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %244

51:                                               ; preds = %47
  %52 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.symbol*, %struct.symbol** %52, i64 %54
  %56 = load %struct.symbol*, %struct.symbol** %55, align 8
  %57 = icmp eq %struct.symbol* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %241

59:                                               ; preds = %51
  %60 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.symbol*, %struct.symbol** %60, i64 %62
  %64 = load %struct.symbol*, %struct.symbol** %63, align 8
  %65 = call i64 @SYMBOL_CLASS(%struct.symbol* %64)
  %66 = load i64, i64* @LOC_BLOCK, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %103

68:                                               ; preds = %59
  %69 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.symbol*, %struct.symbol** %69, i64 %71
  %73 = load %struct.symbol*, %struct.symbol** %72, align 8
  %74 = call { i32, %struct.TYPE_2__* } @find_function_start_sal(%struct.symbol* %73, i32 1)
  %75 = bitcast %struct.symtab_and_line* %14 to { i32, %struct.TYPE_2__* }*
  %76 = getelementptr inbounds { i32, %struct.TYPE_2__* }, { i32, %struct.TYPE_2__* }* %75, i32 0, i32 0
  %77 = extractvalue { i32, %struct.TYPE_2__* } %74, 0
  store i32 %77, i32* %76, align 8
  %78 = getelementptr inbounds { i32, %struct.TYPE_2__* }, { i32, %struct.TYPE_2__* }* %75, i32 0, i32 1
  %79 = extractvalue { i32, %struct.TYPE_2__* } %74, 1
  store %struct.TYPE_2__* %79, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %80, %81
  %83 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.symbol*, %struct.symbol** %83, i64 %85
  %87 = load %struct.symbol*, %struct.symbol** %86, align 8
  %88 = call i32 @SYMBOL_PRINT_NAME(%struct.symbol* %87)
  %89 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %14, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = icmp eq %struct.TYPE_2__* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %68
  br label %98

93:                                               ; preds = %68
  %94 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %14, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  br label %98

98:                                               ; preds = %93, %92
  %99 = phi i8* [ getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), %92 ], [ %97, %93 ]
  %100 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %14, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %82, i32 %88, i8* %99, i32 %101)
  br label %241

103:                                              ; preds = %59
  %104 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.symbol*, %struct.symbol** %104, i64 %106
  %108 = load %struct.symbol*, %struct.symbol** %107, align 8
  %109 = call i64 @SYMBOL_CLASS(%struct.symbol* %108)
  %110 = load i64, i64* @LOC_CONST, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %130

112:                                              ; preds = %103
  %113 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.symbol*, %struct.symbol** %113, i64 %115
  %117 = load %struct.symbol*, %struct.symbol** %116, align 8
  %118 = call i32* @SYMBOL_TYPE(%struct.symbol* %117)
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %130

120:                                              ; preds = %112
  %121 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.symbol*, %struct.symbol** %121, i64 %123
  %125 = load %struct.symbol*, %struct.symbol** %124, align 8
  %126 = call i32* @SYMBOL_TYPE(%struct.symbol* %125)
  %127 = call i64 @TYPE_CODE(i32* %126)
  %128 = load i64, i64* @TYPE_CODE_ENUM, align 8
  %129 = icmp eq i64 %127, %128
  br label %130

130:                                              ; preds = %120, %112, %103
  %131 = phi i1 [ false, %112 ], [ false, %103 ], [ %129, %120 ]
  %132 = zext i1 %131 to i32
  store i32 %132, i32* %15, align 4
  %133 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.symbol*, %struct.symbol** %133, i64 %135
  %137 = load %struct.symbol*, %struct.symbol** %136, align 8
  %138 = call %struct.symtab* @symtab_for_sym(%struct.symbol* %137)
  store %struct.symtab* %138, %struct.symtab** %16, align 8
  %139 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.symbol*, %struct.symbol** %139, i64 %141
  %143 = load %struct.symbol*, %struct.symbol** %142, align 8
  %144 = call i64 @SYMBOL_LINE(%struct.symbol* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %169

146:                                              ; preds = %130
  %147 = load %struct.symtab*, %struct.symtab** %16, align 8
  %148 = icmp ne %struct.symtab* %147, null
  br i1 %148, label %149, label %169

149:                                              ; preds = %146
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %150, %151
  %153 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.symbol*, %struct.symbol** %153, i64 %155
  %157 = load %struct.symbol*, %struct.symbol** %156, align 8
  %158 = call i32 @SYMBOL_PRINT_NAME(%struct.symbol* %157)
  %159 = load %struct.symtab*, %struct.symtab** %16, align 8
  %160 = getelementptr inbounds %struct.symtab, %struct.symtab* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.symbol*, %struct.symbol** %162, i64 %164
  %166 = load %struct.symbol*, %struct.symbol** %165, align 8
  %167 = call i64 @SYMBOL_LINE(%struct.symbol* %166)
  %168 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %152, i32 %158, i32 %161, i64 %167)
  br label %239

169:                                              ; preds = %146, %130
  %170 = load i32, i32* %15, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %201

172:                                              ; preds = %169
  %173 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.symbol*, %struct.symbol** %173, i64 %175
  %177 = load %struct.symbol*, %struct.symbol** %176, align 8
  %178 = call i32* @SYMBOL_TYPE(%struct.symbol* %177)
  %179 = call i32* @TYPE_NAME(i32* %178)
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %201

181:                                              ; preds = %172
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* %13, align 4
  %184 = add nsw i32 %182, %183
  %185 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %184)
  %186 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.symbol*, %struct.symbol** %186, i64 %188
  %190 = load %struct.symbol*, %struct.symbol** %189, align 8
  %191 = call i32* @SYMBOL_TYPE(%struct.symbol* %190)
  %192 = load i32, i32* @gdb_stdout, align 4
  %193 = call i32 @ada_print_type(i32* %191, i32* null, i32 %192, i32 -1, i32 0)
  %194 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %195 = load i32, i32* %10, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.symbol*, %struct.symbol** %194, i64 %196
  %198 = load %struct.symbol*, %struct.symbol** %197, align 8
  %199 = call i32 @SYMBOL_PRINT_NAME(%struct.symbol* %198)
  %200 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %199)
  br label %238

201:                                              ; preds = %172, %169
  %202 = load %struct.symtab*, %struct.symtab** %16, align 8
  %203 = icmp ne %struct.symtab* %202, null
  br i1 %203, label %204, label %222

204:                                              ; preds = %201
  %205 = load i32, i32* %15, align 4
  %206 = icmp ne i32 %205, 0
  %207 = zext i1 %206 to i64
  %208 = select i1 %206, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0)
  %209 = load i32, i32* %10, align 4
  %210 = load i32, i32* %13, align 4
  %211 = add nsw i32 %209, %210
  %212 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %213 = load i32, i32* %10, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.symbol*, %struct.symbol** %212, i64 %214
  %216 = load %struct.symbol*, %struct.symbol** %215, align 8
  %217 = call i32 @SYMBOL_PRINT_NAME(%struct.symbol* %216)
  %218 = load %struct.symtab*, %struct.symtab** %16, align 8
  %219 = getelementptr inbounds %struct.symtab, %struct.symtab* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 (i8*, ...) @printf_unfiltered(i8* %208, i32 %211, i32 %217, i32 %220)
  br label %237

222:                                              ; preds = %201
  %223 = load i32, i32* %15, align 4
  %224 = icmp ne i32 %223, 0
  %225 = zext i1 %224 to i64
  %226 = select i1 %224, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0)
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* %13, align 4
  %229 = add nsw i32 %227, %228
  %230 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.symbol*, %struct.symbol** %230, i64 %232
  %234 = load %struct.symbol*, %struct.symbol** %233, align 8
  %235 = call i32 @SYMBOL_PRINT_NAME(%struct.symbol* %234)
  %236 = call i32 (i8*, ...) @printf_unfiltered(i8* %226, i32 %229, i32 %235)
  br label %237

237:                                              ; preds = %222, %204
  br label %238

238:                                              ; preds = %237, %181
  br label %239

239:                                              ; preds = %238, %149
  br label %240

240:                                              ; preds = %239
  br label %241

241:                                              ; preds = %240, %98, %58
  %242 = load i32, i32* %10, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %10, align 4
  br label %47

244:                                              ; preds = %47
  %245 = load i32*, i32** %11, align 8
  %246 = load i32, i32* %8, align 4
  %247 = load i32, i32* %9, align 4
  %248 = load i32, i32* %9, align 4
  %249 = icmp sgt i32 %248, 1
  %250 = zext i1 %249 to i32
  %251 = call i32 @get_selections(i32* %245, i32 %246, i32 %247, i32 %250, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  store i32 %251, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %252

252:                                              ; preds = %287, %244
  %253 = load i32, i32* %10, align 4
  %254 = load i32, i32* %12, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %290

256:                                              ; preds = %252
  %257 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %258 = load i32*, i32** %11, align 8
  %259 = load i32, i32* %10, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.symbol*, %struct.symbol** %257, i64 %263
  %265 = load %struct.symbol*, %struct.symbol** %264, align 8
  %266 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %267 = load i32, i32* %10, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.symbol*, %struct.symbol** %266, i64 %268
  store %struct.symbol* %265, %struct.symbol** %269, align 8
  %270 = load %struct.block**, %struct.block*** %7, align 8
  %271 = icmp ne %struct.block** %270, null
  br i1 %271, label %272, label %286

272:                                              ; preds = %256
  %273 = load %struct.block**, %struct.block*** %7, align 8
  %274 = load i32*, i32** %11, align 8
  %275 = load i32, i32* %10, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.block*, %struct.block** %273, i64 %279
  %281 = load %struct.block*, %struct.block** %280, align 8
  %282 = load %struct.block**, %struct.block*** %7, align 8
  %283 = load i32, i32* %10, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.block*, %struct.block** %282, i64 %284
  store %struct.block* %281, %struct.block** %285, align 8
  br label %286

286:                                              ; preds = %272, %256
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %10, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %10, align 4
  br label %252

290:                                              ; preds = %252
  %291 = load i32, i32* %12, align 4
  store i32 %291, i32* %5, align 4
  br label %292

292:                                              ; preds = %290, %34
  %293 = load i32, i32* %5, align 4
  ret i32 %293
}

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @printf_unfiltered(i8*, ...) #1

declare dso_local i32 @sort_choices(%struct.symbol**, %struct.block**, i32) #1

declare dso_local i64 @SYMBOL_CLASS(%struct.symbol*) #1

declare dso_local { i32, %struct.TYPE_2__* } @find_function_start_sal(%struct.symbol*, i32) #1

declare dso_local i32 @SYMBOL_PRINT_NAME(%struct.symbol*) #1

declare dso_local i32* @SYMBOL_TYPE(%struct.symbol*) #1

declare dso_local i64 @TYPE_CODE(i32*) #1

declare dso_local %struct.symtab* @symtab_for_sym(%struct.symbol*) #1

declare dso_local i64 @SYMBOL_LINE(%struct.symbol*) #1

declare dso_local i32* @TYPE_NAME(i32*) #1

declare dso_local i32 @ada_print_type(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @get_selections(i32*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
