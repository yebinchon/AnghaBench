; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_hpread_quick_traverse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_hpread.c_hpread_quick_traverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.objfile = type { %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_24__ = type { %struct.partial_symbol**, %struct.partial_symbol** }
%struct.partial_symbol = type { i32 }
%struct.TYPE_23__ = type { %struct.partial_symbol**, %struct.partial_symbol** }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32 }
%struct.partial_symtab = type { i32 }
%struct.TYPE_25__ = type { i32, i64 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_28__ = type { i64 }

@told_objfile = common dso_local global i64 0, align 8
@current_demangling_style = common dso_local global i64 0, align 8
@edg_demangling = common dso_local global i64 0, align 8
@HP_DEMANGLING_STYLE_STRING = common dso_local global i32 0, align 4
@VALID_CURR_PROC = common dso_local global i64 0, align 8
@CURR_PROC_START = common dso_local global i32 0, align 4
@VALID_CURR_FILE = common dso_local global i64 0, align 8
@VALID_CURR_MODULE = common dso_local global i64 0, align 8
@CURR_MODULE_START = common dso_local global i32 0, align 4
@CURR_MODULE_END = common dso_local global i32 0, align 4
@CURR_MODULE_ISYM = common dso_local global i32 0, align 4
@TELL_OBJFILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"Module \22%s\22 [0x%s] has non-standard addresses.  It starts at 0x%s, ends at 0x%s, and will be skipped.\00", align 1
@CURR_FILE_END = common dso_local global i32 0, align 4
@CURR_FILE_START = common dso_local global i32 0, align 4
@CURR_FILE_ISYM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Found procedure \22%s\22 [0x%x] that is not in any file or module.\00", align 1
@CURR_PROC_ISYM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [104 x i8] c"File \22%s\22 [0x%x] has ending address after starting address of next file; adjusting ending address down.\00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"File \22%s\22 [0x%x] has ending address after starting address of next module; adjusting ending address down.\00", align 1
@pst_syms_count = common dso_local global i32 0, align 4
@pst_syms_array = common dso_local global %struct.TYPE_22__* null, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"No symbols in psymtab for file \22%s\22 [0x%x].\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"File \22%s\22 [0x%x] crosses beginning of module \22%s\22.\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"File \22%s\22 [0x%x] crosses end of module \22%s\22.\00", align 1
@.str.7 = private unnamed_addr constant [108 x i8] c"Module \22%s\22 [0x%x] has ending address after starting address of next module; adjusting ending address down.\00", align 1
@.str.8 = private unnamed_addr constant [106 x i8] c"Module \22%s\22 [0x%x] has ending address after starting address of next file; adjusting ending address down.\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"No symbols in psymtab for module \22%s\22 [0x%x].\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"Found functions beyond end of all files and modules [0x%x].\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"orphans\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.objfile*, i8*, i8*, %struct.TYPE_21__*)* @hpread_quick_traverse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpread_quick_traverse(%struct.objfile* %0, i8* %1, i8* %2, %struct.TYPE_21__* %3) #0 {
  %5 = alloca %struct.objfile*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.partial_symtab*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  %28 = alloca %struct.partial_symbol**, align 8
  %29 = alloca %struct.partial_symbol**, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store %struct.objfile* %0, %struct.objfile** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %8, align 8
  store %struct.partial_symtab* null, %struct.partial_symtab** %9, align 8
  %38 = call i32 (...) @init_pst_syms()
  store i64 0, i64* @told_objfile, align 8
  %39 = load i64, i64* @current_demangling_style, align 8
  %40 = load i64, i64* @edg_demangling, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %4
  %43 = load i32, i32* @HP_DEMANGLING_STYLE_STRING, align 4
  %44 = call i32 @set_demangling_style(i32 %43)
  br label %45

45:                                               ; preds = %42, %4
  %46 = load i8*, i8** %6, align 8
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = bitcast i8* %47 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %48, %struct.TYPE_25__** %11, align 8
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 16
  %54 = load i8*, i8** %10, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 %53
  store i8* %55, i8** %10, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = bitcast i8* %56 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %57, %struct.TYPE_27__** %12, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 8
  %63 = load i8*, i8** %10, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 %62
  store i8* %64, i8** %10, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = bitcast i8* %65 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %66, %struct.TYPE_26__** %13, align 8
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 8
  %72 = load i8*, i8** %10, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 %71
  store i8* %73, i8** %10, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = bitcast i8* %74 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %75, %struct.TYPE_28__** %14, align 8
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 8
  %81 = load i8*, i8** %10, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 %80
  store i8* %82, i8** %10, align 8
  %83 = load %struct.objfile*, %struct.objfile** %5, align 8
  %84 = call i32 @LNTT_SYMCOUNT(%struct.objfile* %83)
  store i32 %84, i32* %25, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %26, align 4
  %85 = load %struct.objfile*, %struct.objfile** %5, align 8
  %86 = getelementptr inbounds %struct.objfile, %struct.objfile* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 1
  %88 = load %struct.partial_symbol**, %struct.partial_symbol*** %87, align 8
  store %struct.partial_symbol** %88, %struct.partial_symbol*** %28, align 8
  %89 = load %struct.objfile*, %struct.objfile** %5, align 8
  %90 = getelementptr inbounds %struct.objfile, %struct.objfile* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 1
  %92 = load %struct.partial_symbol**, %struct.partial_symbol*** %91, align 8
  store %struct.partial_symbol** %92, %struct.partial_symbol*** %29, align 8
  br label %93

93:                                               ; preds = %101, %45
  %94 = load i64, i64* @VALID_CURR_PROC, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* @CURR_PROC_START, align 4
  %98 = icmp eq i32 %97, 0
  br label %99

99:                                               ; preds = %96, %93
  %100 = phi i1 [ false, %93 ], [ %98, %96 ]
  br i1 %100, label %101, label %104

101:                                              ; preds = %99
  %102 = load i32, i32* %20, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %20, align 4
  br label %93

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %678, %104
  %106 = load i64, i64* @VALID_CURR_FILE, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load i64, i64* @VALID_CURR_MODULE, align 8
  %110 = icmp ne i64 %109, 0
  br label %111

111:                                              ; preds = %108, %105
  %112 = phi i1 [ true, %105 ], [ %110, %108 ]
  br i1 %112, label %113, label %679

113:                                              ; preds = %111
  store i8* null, i8** %30, align 8
  %114 = load i64, i64* @VALID_CURR_MODULE, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %157

116:                                              ; preds = %113
  %117 = load i32, i32* @CURR_MODULE_START, align 4
  %118 = icmp eq i32 %117, -1
  br i1 %118, label %119, label %157

119:                                              ; preds = %116
  %120 = load i32, i32* @CURR_MODULE_END, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %157

122:                                              ; preds = %119
  %123 = load i8*, i8** %7, align 8
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %125 = load i32, i32* %22, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds i8, i8* %123, i64 %129
  store i8* %130, i8** %30, align 8
  %131 = load %struct.objfile*, %struct.objfile** %5, align 8
  %132 = load i8*, i8** %30, align 8
  %133 = load i32, i32* @CURR_MODULE_START, align 4
  %134 = load i32, i32* @CURR_MODULE_ISYM, align 4
  %135 = sext i32 %134 to i64
  %136 = mul i64 %135, 4
  %137 = trunc i64 %136 to i32
  %138 = load %struct.partial_symbol**, %struct.partial_symbol*** %28, align 8
  %139 = load %struct.partial_symbol**, %struct.partial_symbol*** %29, align 8
  %140 = call %struct.partial_symtab* @hpread_start_psymtab(%struct.objfile* %131, i8* %132, i32 %133, i32 %137, %struct.partial_symbol** %138, %struct.partial_symbol** %139)
  store %struct.partial_symtab* %140, %struct.partial_symtab** %9, align 8
  %141 = load %struct.partial_symtab*, %struct.partial_symtab** %9, align 8
  %142 = load i32, i32* %24, align 4
  %143 = sext i32 %142 to i64
  %144 = mul i64 %143, 4
  %145 = trunc i64 %144 to i32
  %146 = call %struct.partial_symtab* @hpread_end_psymtab(%struct.partial_symtab* %141, i32* null, i32 0, i32 %145, i32 0, i32* null, i32 0)
  store %struct.partial_symtab* %146, %struct.partial_symtab** %9, align 8
  %147 = load %struct.objfile*, %struct.objfile** %5, align 8
  %148 = getelementptr inbounds %struct.objfile, %struct.objfile* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 0
  %150 = load %struct.partial_symbol**, %struct.partial_symbol*** %149, align 8
  store %struct.partial_symbol** %150, %struct.partial_symbol*** %28, align 8
  %151 = load %struct.objfile*, %struct.objfile** %5, align 8
  %152 = getelementptr inbounds %struct.objfile, %struct.objfile* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 0
  %154 = load %struct.partial_symbol**, %struct.partial_symbol*** %153, align 8
  store %struct.partial_symbol** %154, %struct.partial_symbol*** %29, align 8
  %155 = load i32, i32* %22, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %22, align 4
  br label %678

157:                                              ; preds = %119, %116, %113
  %158 = load i64, i64* @VALID_CURR_MODULE, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %184

160:                                              ; preds = %157
  %161 = load i32, i32* @CURR_MODULE_START, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %172, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* @CURR_MODULE_START, align 4
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %172, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* @CURR_MODULE_END, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* @CURR_MODULE_END, align 4
  %171 = icmp eq i32 %170, -1
  br i1 %171, label %172, label %184

172:                                              ; preds = %169, %166, %163, %160
  %173 = load i32, i32* @TELL_OBJFILE, align 4
  %174 = load i8*, i8** %30, align 8
  %175 = load i32, i32* %22, align 4
  %176 = call i32 @paddr_nz(i32 %175)
  %177 = load i32, i32* %17, align 4
  %178 = call i32 @paddr_nz(i32 %177)
  %179 = load i32, i32* %18, align 4
  %180 = call i32 @paddr_nz(i32 %179)
  %181 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0), i8* %174, i32 %176, i32 %178, i32 %180)
  %182 = load i32, i32* %22, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %22, align 4
  br label %677

184:                                              ; preds = %169, %157
  %185 = load i64, i64* @VALID_CURR_FILE, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %184
  %188 = load i64, i64* @VALID_CURR_MODULE, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %187
  %191 = load i32, i32* @CURR_FILE_END, align 4
  %192 = load i32, i32* @CURR_MODULE_START, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %196, label %391

194:                                              ; preds = %187
  br i1 true, label %196, label %391

195:                                              ; preds = %184
  br i1 false, label %196, label %391

196:                                              ; preds = %195, %194, %190
  %197 = load i8*, i8** %7, align 8
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %199 = load i32, i32* %21, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i8, i8* %197, i64 %203
  store i8* %204, i8** %31, align 8
  %205 = load i32, i32* @CURR_FILE_START, align 4
  store i32 %205, i32* %17, align 4
  %206 = load i32, i32* @CURR_FILE_END, align 4
  store i32 %206, i32* %18, align 4
  %207 = load i32, i32* @CURR_FILE_ISYM, align 4
  store i32 %207, i32* %23, align 4
  %208 = load i32, i32* @CURR_PROC_START, align 4
  %209 = load i32, i32* %17, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %230

211:                                              ; preds = %196
  %212 = load i32, i32* @TELL_OBJFILE, align 4
  %213 = load i8*, i8** %7, align 8
  %214 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %215 = load i32, i32* %20, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds i8, i8* %213, i64 %219
  %221 = load i32, i32* %20, align 4
  %222 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i8* %220, i32 %221)
  %223 = load i32, i32* @CURR_PROC_START, align 4
  store i32 %223, i32* %17, align 4
  %224 = load i32, i32* @CURR_PROC_ISYM, align 4
  %225 = load i32, i32* %23, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %211
  %228 = load i32, i32* @CURR_PROC_ISYM, align 4
  store i32 %228, i32* %23, align 4
  br label %229

229:                                              ; preds = %227, %211
  br label %230

230:                                              ; preds = %229, %196
  %231 = load i32, i32* %21, align 4
  %232 = add nsw i32 %231, 1
  %233 = call i64 @VALID_FILE(i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %250

235:                                              ; preds = %230
  %236 = load i32, i32* %21, align 4
  %237 = add nsw i32 %236, 1
  %238 = call i32 @FILE_START(i32 %237)
  %239 = load i32, i32* %18, align 4
  %240 = icmp sle i32 %238, %239
  br i1 %240, label %241, label %250

241:                                              ; preds = %235
  %242 = load i32, i32* @TELL_OBJFILE, align 4
  %243 = load i8*, i8** %31, align 8
  %244 = load i32, i32* %21, align 4
  %245 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.2, i64 0, i64 0), i8* %243, i32 %244)
  %246 = load i32, i32* %21, align 4
  %247 = add nsw i32 %246, 1
  %248 = call i32 @FILE_START(i32 %247)
  %249 = sub nsw i32 %248, 1
  store i32 %249, i32* %18, align 4
  br label %250

250:                                              ; preds = %241, %235, %230
  %251 = load i32, i32* %22, align 4
  %252 = call i64 @VALID_MODULE(i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %265

254:                                              ; preds = %250
  %255 = load i32, i32* @CURR_MODULE_START, align 4
  %256 = load i32, i32* %18, align 4
  %257 = icmp sle i32 %255, %256
  br i1 %257, label %258, label %265

258:                                              ; preds = %254
  %259 = load i32, i32* @TELL_OBJFILE, align 4
  %260 = load i8*, i8** %31, align 8
  %261 = load i32, i32* %21, align 4
  %262 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i8* %260, i32 %261)
  %263 = load i32, i32* @CURR_MODULE_START, align 4
  %264 = sub nsw i32 %263, 1
  store i32 %264, i32* %18, align 4
  br label %265

265:                                              ; preds = %258, %254, %250
  %266 = load %struct.objfile*, %struct.objfile** %5, align 8
  %267 = load i8*, i8** %31, align 8
  %268 = load i32, i32* %17, align 4
  %269 = load i32, i32* %23, align 4
  %270 = sext i32 %269 to i64
  %271 = mul i64 %270, 4
  %272 = trunc i64 %271 to i32
  %273 = load %struct.partial_symbol**, %struct.partial_symbol*** %28, align 8
  %274 = load %struct.partial_symbol**, %struct.partial_symbol*** %29, align 8
  %275 = call %struct.partial_symtab* @hpread_start_psymtab(%struct.objfile* %266, i8* %267, i32 %268, i32 %272, %struct.partial_symbol** %273, %struct.partial_symbol** %274)
  store %struct.partial_symtab* %275, %struct.partial_symtab** %9, align 8
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @B_BYTES(i32 %278)
  %280 = call i32* @xmalloc(i32 %279)
  store i32* %280, i32** %27, align 8
  %281 = load i32*, i32** %27, align 8
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %283 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @B_CLRALL(i32* %281, i32 %284)
  %286 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* %17, align 4
  %291 = load i32, i32* %18, align 4
  %292 = load %struct.partial_symtab*, %struct.partial_symtab** %9, align 8
  %293 = load i8*, i8** %7, align 8
  %294 = load %struct.objfile*, %struct.objfile** %5, align 8
  %295 = call i32 @scan_procs(i32* %20, %struct.TYPE_25__* %286, i32 %289, i32 %290, i32 %291, %struct.partial_symtab* %292, i8* %293, %struct.objfile* %294)
  store i32 %295, i32* %26, align 4
  store i32 0, i32* %24, align 4
  %296 = load i32, i32* @pst_syms_count, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %311

298:                                              ; preds = %265
  %299 = load i32, i32* %23, align 4
  %300 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pst_syms_array, align 8
  %301 = load i32, i32* @pst_syms_count, align 4
  %302 = sub nsw i32 %301, 1
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %300, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = icmp slt i32 %299, %306
  br i1 %307, label %308, label %311

308:                                              ; preds = %298
  %309 = load i32, i32* %23, align 4
  %310 = call i32 @find_next_pst_start(i32 %309)
  store i32 %310, i32* %24, align 4
  br label %311

311:                                              ; preds = %308, %298, %265
  %312 = load i32, i32* %24, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %354, label %314

314:                                              ; preds = %311
  %315 = load i32, i32* %23, align 4
  %316 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %317 = load i32, i32* %21, align 4
  %318 = add nsw i32 %317, 1
  %319 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %320 = call i32 @find_next_file_isym(i32 %315, %struct.TYPE_27__* %316, i32 %318, %struct.TYPE_21__* %319)
  store i32 %320, i32* %32, align 4
  %321 = load i32, i32* %23, align 4
  %322 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %323 = load i32, i32* %22, align 4
  %324 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %325 = call i32 @find_next_module_isym(i32 %321, %struct.TYPE_26__* %322, i32 %323, %struct.TYPE_21__* %324)
  store i32 %325, i32* %33, align 4
  %326 = load i32, i32* %23, align 4
  %327 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %328 = load i32, i32* %20, align 4
  %329 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %330 = call i32 @find_next_proc_isym(i32 %326, %struct.TYPE_25__* %327, i32 %328, %struct.TYPE_21__* %329)
  store i32 %330, i32* %34, align 4
  %331 = load i32, i32* %32, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %340

333:                                              ; preds = %314
  %334 = load i32, i32* %33, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %340

336:                                              ; preds = %333
  %337 = load i32, i32* %32, align 4
  %338 = load i32, i32* %33, align 4
  %339 = call i32 @min(i32 %337, i32 %338)
  store i32 %339, i32* %24, align 4
  br label %344

340:                                              ; preds = %333, %314
  %341 = load i32, i32* %32, align 4
  %342 = load i32, i32* %33, align 4
  %343 = call i32 @max(i32 %341, i32 %342)
  store i32 %343, i32* %24, align 4
  br label %344

344:                                              ; preds = %340, %336
  %345 = load i32, i32* %24, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %349, label %347

347:                                              ; preds = %344
  %348 = load i32, i32* %34, align 4
  store i32 %348, i32* %24, align 4
  br label %353

349:                                              ; preds = %344
  %350 = load i32, i32* %24, align 4
  %351 = load i32, i32* %34, align 4
  %352 = call i32 @min(i32 %350, i32 %351)
  store i32 %352, i32* %24, align 4
  br label %353

353:                                              ; preds = %349, %347
  br label %354

354:                                              ; preds = %353, %311
  %355 = load i32, i32* %24, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %361, label %357

357:                                              ; preds = %354
  %358 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %359 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %358, i32 0, i32 4
  %360 = load i32, i32* %359, align 4
  store i32 %360, i32* %24, align 4
  br label %361

361:                                              ; preds = %357, %354
  %362 = load %struct.partial_symtab*, %struct.partial_symtab** %9, align 8
  %363 = load i32, i32* %24, align 4
  %364 = sext i32 %363 to i64
  %365 = mul i64 %364, 4
  %366 = trunc i64 %365 to i32
  %367 = load i32, i32* %18, align 4
  %368 = call %struct.partial_symtab* @hpread_end_psymtab(%struct.partial_symtab* %362, i32* null, i32 0, i32 %366, i32 %367, i32* null, i32 0)
  store %struct.partial_symtab* %368, %struct.partial_symtab** %9, align 8
  %369 = load i32, i32* %23, align 4
  %370 = load i32, i32* %24, align 4
  %371 = call i32 @record_pst_syms(i32 %369, i32 %370)
  %372 = load %struct.partial_symtab*, %struct.partial_symtab** %9, align 8
  %373 = icmp eq %struct.partial_symtab* null, %372
  br i1 %373, label %374, label %378

374:                                              ; preds = %361
  %375 = load i8*, i8** %31, align 8
  %376 = load i32, i32* %21, align 4
  %377 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %375, i32 %376)
  br label %378

378:                                              ; preds = %374, %361
  %379 = load %struct.objfile*, %struct.objfile** %5, align 8
  %380 = getelementptr inbounds %struct.objfile, %struct.objfile* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %380, i32 0, i32 0
  %382 = load %struct.partial_symbol**, %struct.partial_symbol*** %381, align 8
  store %struct.partial_symbol** %382, %struct.partial_symbol*** %28, align 8
  %383 = load %struct.objfile*, %struct.objfile** %5, align 8
  %384 = getelementptr inbounds %struct.objfile, %struct.objfile* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %384, i32 0, i32 0
  %386 = load %struct.partial_symbol**, %struct.partial_symbol*** %385, align 8
  store %struct.partial_symbol** %386, %struct.partial_symbol*** %29, align 8
  %387 = load i32*, i32** %27, align 8
  %388 = call i32 @xfree(i32* %387)
  %389 = load i32, i32* %21, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %21, align 4
  br label %676

391:                                              ; preds = %195, %194, %190
  %392 = load i8*, i8** %7, align 8
  %393 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %394 = load i32, i32* %22, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %393, i64 %395
  %397 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %396, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = getelementptr inbounds i8, i8* %392, i64 %398
  store i8* %399, i8** %30, align 8
  %400 = load i32, i32* @CURR_MODULE_START, align 4
  store i32 %400, i32* %17, align 4
  %401 = load i64, i64* @VALID_CURR_FILE, align 8
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %422

403:                                              ; preds = %391
  %404 = load i32, i32* @CURR_FILE_START, align 4
  %405 = load i32, i32* @CURR_MODULE_START, align 4
  %406 = icmp slt i32 %404, %405
  br i1 %406, label %407, label %421

407:                                              ; preds = %403
  %408 = load i32, i32* @TELL_OBJFILE, align 4
  %409 = load i8*, i8** %7, align 8
  %410 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %411 = load i32, i32* %21, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %410, i64 %412
  %414 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %413, i32 0, i32 0
  %415 = load i64, i64* %414, align 8
  %416 = getelementptr inbounds i8, i8* %409, i64 %415
  %417 = load i32, i32* %21, align 4
  %418 = load i8*, i8** %30, align 8
  %419 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i8* %416, i32 %417, i8* %418)
  %420 = load i32, i32* @CURR_FILE_START, align 4
  store i32 %420, i32* %17, align 4
  br label %421

421:                                              ; preds = %407, %403
  br label %422

422:                                              ; preds = %421, %391
  %423 = load i32, i32* @CURR_MODULE_ISYM, align 4
  store i32 %423, i32* %23, align 4
  %424 = load i64, i64* @VALID_CURR_FILE, align 8
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %432

426:                                              ; preds = %422
  %427 = load i32, i32* @CURR_FILE_ISYM, align 4
  %428 = load i32, i32* @CURR_MODULE_ISYM, align 4
  %429 = icmp slt i32 %427, %428
  br i1 %429, label %430, label %432

430:                                              ; preds = %426
  %431 = load i32, i32* @CURR_FILE_ISYM, align 4
  store i32 %431, i32* %23, align 4
  br label %432

432:                                              ; preds = %430, %426, %422
  %433 = load i32, i32* @CURR_MODULE_END, align 4
  store i32 %433, i32* %18, align 4
  %434 = load i64, i64* @VALID_CURR_FILE, align 8
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %436, label %470

436:                                              ; preds = %432
  br label %437

437:                                              ; preds = %464, %436
  %438 = load i64, i64* @VALID_CURR_FILE, align 8
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %444

440:                                              ; preds = %437
  %441 = load i32, i32* @CURR_FILE_START, align 4
  %442 = load i32, i32* %18, align 4
  %443 = icmp slt i32 %441, %442
  br label %444

444:                                              ; preds = %440, %437
  %445 = phi i1 [ false, %437 ], [ %443, %440 ]
  br i1 %445, label %446, label %467

446:                                              ; preds = %444
  %447 = load i32, i32* @CURR_FILE_END, align 4
  %448 = load i32, i32* %18, align 4
  %449 = icmp sgt i32 %447, %448
  br i1 %449, label %450, label %464

450:                                              ; preds = %446
  %451 = load i32, i32* @TELL_OBJFILE, align 4
  %452 = load i8*, i8** %7, align 8
  %453 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %454 = load i32, i32* %21, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %453, i64 %455
  %457 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %456, i32 0, i32 0
  %458 = load i64, i64* %457, align 8
  %459 = getelementptr inbounds i8, i8* %452, i64 %458
  %460 = load i32, i32* %21, align 4
  %461 = load i8*, i8** %30, align 8
  %462 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i8* %459, i32 %460, i8* %461)
  %463 = load i32, i32* @CURR_FILE_END, align 4
  store i32 %463, i32* %18, align 4
  br label %464

464:                                              ; preds = %450, %446
  %465 = load i32, i32* %21, align 4
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* %21, align 4
  br label %437

467:                                              ; preds = %444
  %468 = load i32, i32* %21, align 4
  %469 = add nsw i32 %468, -1
  store i32 %469, i32* %21, align 4
  br label %470

470:                                              ; preds = %467, %432
  %471 = load i32, i32* %22, align 4
  %472 = add nsw i32 %471, 1
  %473 = call i64 @VALID_MODULE(i32 %472)
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %475, label %490

475:                                              ; preds = %470
  %476 = load i32, i32* %22, align 4
  %477 = add nsw i32 %476, 1
  %478 = call i32 @MODULE_START(i32 %477)
  %479 = load i32, i32* %18, align 4
  %480 = icmp sle i32 %478, %479
  br i1 %480, label %481, label %490

481:                                              ; preds = %475
  %482 = load i32, i32* @TELL_OBJFILE, align 4
  %483 = load i8*, i8** %30, align 8
  %484 = load i32, i32* %22, align 4
  %485 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.7, i64 0, i64 0), i8* %483, i32 %484)
  %486 = load i32, i32* %22, align 4
  %487 = add nsw i32 %486, 1
  %488 = call i32 @MODULE_START(i32 %487)
  %489 = sub nsw i32 %488, 1
  store i32 %489, i32* %18, align 4
  br label %490

490:                                              ; preds = %481, %475, %470
  %491 = load i32, i32* %21, align 4
  %492 = add nsw i32 %491, 1
  %493 = call i64 @VALID_FILE(i32 %492)
  %494 = icmp ne i64 %493, 0
  br i1 %494, label %495, label %510

495:                                              ; preds = %490
  %496 = load i32, i32* %21, align 4
  %497 = add nsw i32 %496, 1
  %498 = call i32 @FILE_START(i32 %497)
  %499 = load i32, i32* %18, align 4
  %500 = icmp sle i32 %498, %499
  br i1 %500, label %501, label %510

501:                                              ; preds = %495
  %502 = load i32, i32* @TELL_OBJFILE, align 4
  %503 = load i8*, i8** %30, align 8
  %504 = load i32, i32* %22, align 4
  %505 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.8, i64 0, i64 0), i8* %503, i32 %504)
  %506 = load i32, i32* %21, align 4
  %507 = add nsw i32 %506, 1
  %508 = call i32 @FILE_START(i32 %507)
  %509 = sub nsw i32 %508, 1
  store i32 %509, i32* %18, align 4
  br label %510

510:                                              ; preds = %501, %495, %490
  %511 = load i64, i64* @VALID_CURR_FILE, align 8
  %512 = icmp ne i64 %511, 0
  br i1 %512, label %513, label %522

513:                                              ; preds = %510
  %514 = load i8*, i8** %7, align 8
  %515 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %516 = load i32, i32* %21, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %515, i64 %517
  %519 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %518, i32 0, i32 0
  %520 = load i64, i64* %519, align 8
  %521 = getelementptr inbounds i8, i8* %514, i64 %520
  store i8* %521, i8** %31, align 8
  br label %524

522:                                              ; preds = %510
  %523 = load i8*, i8** %30, align 8
  store i8* %523, i8** %31, align 8
  br label %524

524:                                              ; preds = %522, %513
  %525 = load i32, i32* @CURR_PROC_START, align 4
  %526 = load i32, i32* %17, align 4
  %527 = icmp slt i32 %525, %526
  br i1 %527, label %528, label %547

528:                                              ; preds = %524
  %529 = load i32, i32* @TELL_OBJFILE, align 4
  %530 = load i8*, i8** %7, align 8
  %531 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %532 = load i32, i32* %20, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %531, i64 %533
  %535 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %534, i32 0, i32 1
  %536 = load i64, i64* %535, align 8
  %537 = getelementptr inbounds i8, i8* %530, i64 %536
  %538 = load i32, i32* %20, align 4
  %539 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i8* %537, i32 %538)
  %540 = load i32, i32* @CURR_PROC_START, align 4
  store i32 %540, i32* %17, align 4
  %541 = load i32, i32* @CURR_PROC_ISYM, align 4
  %542 = load i32, i32* %23, align 4
  %543 = icmp slt i32 %541, %542
  br i1 %543, label %544, label %546

544:                                              ; preds = %528
  %545 = load i32, i32* @CURR_PROC_ISYM, align 4
  store i32 %545, i32* %23, align 4
  br label %546

546:                                              ; preds = %544, %528
  br label %547

547:                                              ; preds = %546, %524
  %548 = load %struct.objfile*, %struct.objfile** %5, align 8
  %549 = load i8*, i8** %31, align 8
  %550 = load i32, i32* %17, align 4
  %551 = load i32, i32* %23, align 4
  %552 = sext i32 %551 to i64
  %553 = mul i64 %552, 4
  %554 = trunc i64 %553 to i32
  %555 = load %struct.partial_symbol**, %struct.partial_symbol*** %28, align 8
  %556 = load %struct.partial_symbol**, %struct.partial_symbol*** %29, align 8
  %557 = call %struct.partial_symtab* @hpread_start_psymtab(%struct.objfile* %548, i8* %549, i32 %550, i32 %554, %struct.partial_symbol** %555, %struct.partial_symbol** %556)
  store %struct.partial_symtab* %557, %struct.partial_symtab** %9, align 8
  %558 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %559 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %558, i32 0, i32 3
  %560 = load i32, i32* %559, align 4
  %561 = call i32 @B_BYTES(i32 %560)
  %562 = call i32* @xmalloc(i32 %561)
  store i32* %562, i32** %27, align 8
  %563 = load i32*, i32** %27, align 8
  %564 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %565 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %564, i32 0, i32 3
  %566 = load i32, i32* %565, align 4
  %567 = call i32 @B_CLRALL(i32* %563, i32 %566)
  %568 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %569 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %570 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %569, i32 0, i32 0
  %571 = load i32, i32* %570, align 4
  %572 = load i32, i32* %17, align 4
  %573 = load i32, i32* %18, align 4
  %574 = load %struct.partial_symtab*, %struct.partial_symtab** %9, align 8
  %575 = load i8*, i8** %7, align 8
  %576 = load %struct.objfile*, %struct.objfile** %5, align 8
  %577 = call i32 @scan_procs(i32* %20, %struct.TYPE_25__* %568, i32 %571, i32 %572, i32 %573, %struct.partial_symtab* %574, i8* %575, %struct.objfile* %576)
  store i32 %577, i32* %26, align 4
  store i32 0, i32* %24, align 4
  %578 = load i32, i32* @pst_syms_count, align 4
  %579 = icmp ne i32 %578, 0
  br i1 %579, label %580, label %593

580:                                              ; preds = %547
  %581 = load i32, i32* %23, align 4
  %582 = load %struct.TYPE_22__*, %struct.TYPE_22__** @pst_syms_array, align 8
  %583 = load i32, i32* @pst_syms_count, align 4
  %584 = sub nsw i32 %583, 1
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %582, i64 %585
  %587 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %586, i32 0, i32 0
  %588 = load i32, i32* %587, align 4
  %589 = icmp slt i32 %581, %588
  br i1 %589, label %590, label %593

590:                                              ; preds = %580
  %591 = load i32, i32* %23, align 4
  %592 = call i32 @find_next_pst_start(i32 %591)
  store i32 %592, i32* %24, align 4
  br label %593

593:                                              ; preds = %590, %580, %547
  %594 = load i32, i32* %24, align 4
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %637, label %596

596:                                              ; preds = %593
  %597 = load i32, i32* %23, align 4
  %598 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %599 = load i32, i32* %21, align 4
  %600 = add nsw i32 %599, 1
  %601 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %602 = call i32 @find_next_file_isym(i32 %597, %struct.TYPE_27__* %598, i32 %600, %struct.TYPE_21__* %601)
  store i32 %602, i32* %35, align 4
  %603 = load i32, i32* %23, align 4
  %604 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %605 = load i32, i32* %22, align 4
  %606 = add nsw i32 %605, 1
  %607 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %608 = call i32 @find_next_module_isym(i32 %603, %struct.TYPE_26__* %604, i32 %606, %struct.TYPE_21__* %607)
  store i32 %608, i32* %36, align 4
  %609 = load i32, i32* %23, align 4
  %610 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %611 = load i32, i32* %20, align 4
  %612 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %613 = call i32 @find_next_proc_isym(i32 %609, %struct.TYPE_25__* %610, i32 %611, %struct.TYPE_21__* %612)
  store i32 %613, i32* %37, align 4
  %614 = load i32, i32* %35, align 4
  %615 = icmp ne i32 %614, 0
  br i1 %615, label %616, label %623

616:                                              ; preds = %596
  %617 = load i32, i32* %36, align 4
  %618 = icmp ne i32 %617, 0
  br i1 %618, label %619, label %623

619:                                              ; preds = %616
  %620 = load i32, i32* %35, align 4
  %621 = load i32, i32* %36, align 4
  %622 = call i32 @min(i32 %620, i32 %621)
  store i32 %622, i32* %24, align 4
  br label %627

623:                                              ; preds = %616, %596
  %624 = load i32, i32* %35, align 4
  %625 = load i32, i32* %36, align 4
  %626 = call i32 @max(i32 %624, i32 %625)
  store i32 %626, i32* %24, align 4
  br label %627

627:                                              ; preds = %623, %619
  %628 = load i32, i32* %24, align 4
  %629 = icmp ne i32 %628, 0
  br i1 %629, label %632, label %630

630:                                              ; preds = %627
  %631 = load i32, i32* %37, align 4
  store i32 %631, i32* %24, align 4
  br label %636

632:                                              ; preds = %627
  %633 = load i32, i32* %24, align 4
  %634 = load i32, i32* %37, align 4
  %635 = call i32 @min(i32 %633, i32 %634)
  store i32 %635, i32* %24, align 4
  br label %636

636:                                              ; preds = %632, %630
  br label %637

637:                                              ; preds = %636, %593
  %638 = load i32, i32* %24, align 4
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %644, label %640

640:                                              ; preds = %637
  %641 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %642 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %641, i32 0, i32 4
  %643 = load i32, i32* %642, align 4
  store i32 %643, i32* %24, align 4
  br label %644

644:                                              ; preds = %640, %637
  %645 = load %struct.partial_symtab*, %struct.partial_symtab** %9, align 8
  %646 = load i32, i32* %24, align 4
  %647 = sext i32 %646 to i64
  %648 = mul i64 %647, 4
  %649 = trunc i64 %648 to i32
  %650 = load i32, i32* %18, align 4
  %651 = call %struct.partial_symtab* @hpread_end_psymtab(%struct.partial_symtab* %645, i32* null, i32 0, i32 %649, i32 %650, i32* null, i32 0)
  store %struct.partial_symtab* %651, %struct.partial_symtab** %9, align 8
  %652 = load i32, i32* %23, align 4
  %653 = load i32, i32* %24, align 4
  %654 = call i32 @record_pst_syms(i32 %652, i32 %653)
  %655 = load %struct.partial_symtab*, %struct.partial_symtab** %9, align 8
  %656 = icmp eq %struct.partial_symtab* null, %655
  br i1 %656, label %657, label %661

657:                                              ; preds = %644
  %658 = load i8*, i8** %30, align 8
  %659 = load i32, i32* %22, align 4
  %660 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i8* %658, i32 %659)
  br label %661

661:                                              ; preds = %657, %644
  %662 = load %struct.objfile*, %struct.objfile** %5, align 8
  %663 = getelementptr inbounds %struct.objfile, %struct.objfile* %662, i32 0, i32 1
  %664 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %663, i32 0, i32 0
  %665 = load %struct.partial_symbol**, %struct.partial_symbol*** %664, align 8
  store %struct.partial_symbol** %665, %struct.partial_symbol*** %28, align 8
  %666 = load %struct.objfile*, %struct.objfile** %5, align 8
  %667 = getelementptr inbounds %struct.objfile, %struct.objfile* %666, i32 0, i32 0
  %668 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %667, i32 0, i32 0
  %669 = load %struct.partial_symbol**, %struct.partial_symbol*** %668, align 8
  store %struct.partial_symbol** %669, %struct.partial_symbol*** %29, align 8
  %670 = load i32*, i32** %27, align 8
  %671 = call i32 @xfree(i32* %670)
  %672 = load i32, i32* %22, align 4
  %673 = add nsw i32 %672, 1
  store i32 %673, i32* %22, align 4
  %674 = load i32, i32* %21, align 4
  %675 = add nsw i32 %674, 1
  store i32 %675, i32* %21, align 4
  br label %676

676:                                              ; preds = %661, %378
  br label %677

677:                                              ; preds = %676, %172
  br label %678

678:                                              ; preds = %677, %122
  br label %105

679:                                              ; preds = %111
  %680 = load i64, i64* @VALID_CURR_PROC, align 8
  %681 = icmp ne i64 %680, 0
  br i1 %681, label %682, label %724

682:                                              ; preds = %679
  %683 = load i32, i32* @CURR_PROC_START, align 4
  store i32 %683, i32* %17, align 4
  %684 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %685 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %686 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %685, i32 0, i32 0
  %687 = load i32, i32* %686, align 4
  %688 = sub nsw i32 %687, 1
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %684, i64 %689
  %691 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %690, i32 0, i32 0
  %692 = load i32, i32* %691, align 8
  store i32 %692, i32* %18, align 4
  %693 = load i32, i32* @TELL_OBJFILE, align 4
  %694 = load i32, i32* %20, align 4
  %695 = call i32 (i8*, ...) @warning(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0), i32 %694)
  %696 = load %struct.objfile*, %struct.objfile** %5, align 8
  %697 = load i32, i32* %17, align 4
  %698 = load i32, i32* @CURR_PROC_ISYM, align 4
  %699 = sext i32 %698 to i64
  %700 = mul i64 %699, 4
  %701 = trunc i64 %700 to i32
  %702 = load %struct.partial_symbol**, %struct.partial_symbol*** %28, align 8
  %703 = load %struct.partial_symbol**, %struct.partial_symbol*** %29, align 8
  %704 = call %struct.partial_symtab* @hpread_start_psymtab(%struct.objfile* %696, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %697, i32 %701, %struct.partial_symbol** %702, %struct.partial_symbol** %703)
  store %struct.partial_symtab* %704, %struct.partial_symtab** %9, align 8
  %705 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %706 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %707 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %706, i32 0, i32 0
  %708 = load i32, i32* %707, align 4
  %709 = load i32, i32* %17, align 4
  %710 = load i32, i32* %18, align 4
  %711 = load %struct.partial_symtab*, %struct.partial_symtab** %9, align 8
  %712 = load i8*, i8** %7, align 8
  %713 = load %struct.objfile*, %struct.objfile** %5, align 8
  %714 = call i32 @scan_procs(i32* %20, %struct.TYPE_25__* %705, i32 %708, i32 %709, i32 %710, %struct.partial_symtab* %711, i8* %712, %struct.objfile* %713)
  %715 = load %struct.partial_symtab*, %struct.partial_symtab** %9, align 8
  %716 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %717 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %716, i32 0, i32 4
  %718 = load i32, i32* %717, align 4
  %719 = sext i32 %718 to i64
  %720 = mul i64 %719, 4
  %721 = trunc i64 %720 to i32
  %722 = load i32, i32* %18, align 4
  %723 = call %struct.partial_symtab* @hpread_end_psymtab(%struct.partial_symtab* %715, i32* null, i32 0, i32 %721, i32 %722, i32* null, i32 0)
  store %struct.partial_symtab* %723, %struct.partial_symtab** %9, align 8
  br label %724

724:                                              ; preds = %682, %679
  %725 = call i32 (...) @clear_pst_syms()
  ret i32 1
}

declare dso_local i32 @init_pst_syms(...) #1

declare dso_local i32 @set_demangling_style(i32) #1

declare dso_local i32 @LNTT_SYMCOUNT(%struct.objfile*) #1

declare dso_local %struct.partial_symtab* @hpread_start_psymtab(%struct.objfile*, i8*, i32, i32, %struct.partial_symbol**, %struct.partial_symbol**) #1

declare dso_local %struct.partial_symtab* @hpread_end_psymtab(%struct.partial_symtab*, i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @warning(i8*, ...) #1

declare dso_local i32 @paddr_nz(i32) #1

declare dso_local i64 @VALID_FILE(i32) #1

declare dso_local i32 @FILE_START(i32) #1

declare dso_local i64 @VALID_MODULE(i32) #1

declare dso_local i32* @xmalloc(i32) #1

declare dso_local i32 @B_BYTES(i32) #1

declare dso_local i32 @B_CLRALL(i32*, i32) #1

declare dso_local i32 @scan_procs(i32*, %struct.TYPE_25__*, i32, i32, i32, %struct.partial_symtab*, i8*, %struct.objfile*) #1

declare dso_local i32 @find_next_pst_start(i32) #1

declare dso_local i32 @find_next_file_isym(i32, %struct.TYPE_27__*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @find_next_module_isym(i32, %struct.TYPE_26__*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @find_next_proc_isym(i32, %struct.TYPE_25__*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @record_pst_syms(i32, i32) #1

declare dso_local i32 @xfree(i32*) #1

declare dso_local i32 @MODULE_START(i32) #1

declare dso_local i32 @clear_pst_syms(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
