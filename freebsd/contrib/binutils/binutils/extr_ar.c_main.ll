; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ar.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ar.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PACKAGE = common dso_local global i32 0, align 4
@LOCALEDIR = common dso_local global i32 0, align 4
@program_name = common dso_local global i8* null, align 8
@is_ranlib = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ranlib\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ar\00", align 1
@remove_output = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-H\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-V\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"--v\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c"-M\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"two different operation options specified\00", align 1
@operation_alters_arch = common dso_local global i8* null, align 8
@silent_create = common dso_local global i32 0, align 4
@preserve_dates = common dso_local global i32 0, align 4
@write_armap = common dso_local global i32 0, align 4
@newer_only = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@pos_after = common dso_local global i64 0, align 8
@postype = common dso_local global i64 0, align 8
@pos_before = common dso_local global i64 0, align 8
@mri_mode = common dso_local global i32 0, align 4
@counted_name_mode = common dso_local global i8* null, align 8
@ar_truncate = common dso_local global i8* null, align 8
@full_pathname = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [21 x i8] c"illegal option -- %c\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"no operation specified\00", align 1
@.str.14 = private unnamed_addr constant [44 x i8] c"`u' is only meaningful with the `r' option.\00", align 1
@pos_default = common dso_local global i64 0, align 8
@posname = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [53 x i8] c"`N' is only meaningful with the `x' and `d' options.\00", align 1
@counted_name_counter = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [32 x i8] c"Value for `N' must be positive.\00", align 1
@print_descr = common dso_local global i32 0, align 4
@print_contents = common dso_local global i32 0, align 4
@extract_file = common dso_local global i32 0, align 4
@output_filename = common dso_local global i32* null, align 8
@.str.17 = private unnamed_addr constant [46 x i8] c"internal error -- this option not implemented\00", align 1
@LC_CTYPE = common dso_local global i32 0, align 4
@LC_MESSAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %15, align 4
  %20 = load i32, i32* @PACKAGE, align 4
  %21 = load i32, i32* @LOCALEDIR, align 4
  %22 = call i32 @bindtextdomain(i32 %20, i32 %21)
  %23 = load i32, i32* @PACKAGE, align 4
  %24 = call i32 @textdomain(i32 %23)
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** @program_name, align 8
  %28 = load i8*, i8** @program_name, align 8
  %29 = call i32 @xmalloc_set_program_name(i8* %28)
  %30 = call i32 @expandargv(i32* %4, i8*** %5)
  %31 = load i32, i32* @is_ranlib, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %2
  %34 = load i8*, i8** @program_name, align 8
  %35 = call i8* @strrchr(i8* %34, i8 signext 47)
  store i8* %35, i8** %16, align 8
  %36 = load i8*, i8** %16, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i8*, i8** @program_name, align 8
  store i8* %39, i8** %16, align 8
  br label %43

40:                                               ; preds = %33
  %41 = load i8*, i8** %16, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %16, align 8
  br label %43

43:                                               ; preds = %40, %38
  %44 = load i8*, i8** %16, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = icmp sge i32 %45, 6
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load i8*, i8** %16, align 8
  %49 = load i8*, i8** %16, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  %53 = getelementptr inbounds i8, i8* %52, i64 -6
  %54 = call i64 @FILENAME_CMP(i8* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 1, i32* @is_ranlib, align 4
  br label %58

57:                                               ; preds = %47, %43
  store i32 0, i32* @is_ranlib, align 4
  br label %58

58:                                               ; preds = %57, %56
  br label %59

59:                                               ; preds = %58, %2
  %60 = load i32, i32* %4, align 4
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %94

62:                                               ; preds = %59
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 45
  br i1 %69, label %70, label %94

70:                                               ; preds = %62
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = call i32 @usage(i32 1)
  br label %93

78:                                               ; preds = %70
  %79 = load i8**, i8*** %5, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @strcmp(i8* %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %78
  %85 = load i32, i32* @is_ranlib, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call i32 @print_version(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %91

89:                                               ; preds = %84
  %90 = call i32 @print_version(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %87
  br label %92

92:                                               ; preds = %91, %78
  br label %93

93:                                               ; preds = %92, %76
  br label %94

94:                                               ; preds = %93, %62, %59
  %95 = load i8*, i8** @program_name, align 8
  %96 = call i32 @START_PROGRESS(i8* %95, i32 0)
  %97 = call i32 (...) @bfd_init()
  %98 = call i32 (...) @set_default_bfd_target()
  store i32 0, i32* %13, align 4
  %99 = load i32, i32* @remove_output, align 4
  %100 = call i32 @xatexit(i32 %99)
  store i32 1, i32* %14, align 4
  br label %101

101:                                              ; preds = %115, %94
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %101
  %106 = load i8**, i8*** %5, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @ar_emul_parse_arg(i8* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %105
  br label %118

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %14, align 4
  br label %101

118:                                              ; preds = %113, %101
  %119 = load i32, i32* %14, align 4
  %120 = sub nsw i32 %119, 1
  %121 = load i8**, i8*** %5, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i8*, i8** %121, i64 %122
  store i8** %123, i8*** %5, align 8
  %124 = load i32, i32* %14, align 4
  %125 = sub nsw i32 %124, 1
  %126 = load i32, i32* %4, align 4
  %127 = sub nsw i32 %126, %125
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* @is_ranlib, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %216

130:                                              ; preds = %118
  store i32 0, i32* %17, align 4
  %131 = load i8*, i8** @FALSE, align 8
  store i8* %131, i8** %18, align 8
  %132 = load i32, i32* %4, align 4
  %133 = icmp slt i32 %132, 2
  br i1 %133, label %152, label %134

134:                                              ; preds = %130
  %135 = load i8**, i8*** %5, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 1
  %137 = load i8*, i8** %136, align 8
  %138 = call i64 @strcmp(i8* %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %152, label %140

140:                                              ; preds = %134
  %141 = load i8**, i8*** %5, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 1
  %143 = load i8*, i8** %142, align 8
  %144 = call i64 @strcmp(i8* %143, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %140
  %147 = load i8**, i8*** %5, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 1
  %149 = load i8*, i8** %148, align 8
  %150 = call i64 @strcmp(i8* %149, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %146, %140, %134, %130
  %153 = call i32 @usage(i32 0)
  br label %154

154:                                              ; preds = %152, %146
  %155 = load i8**, i8*** %5, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 1
  %157 = load i8*, i8** %156, align 8
  %158 = call i64 @strcmp(i8* %157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %172, label %160

160:                                              ; preds = %154
  %161 = load i8**, i8*** %5, align 8
  %162 = getelementptr inbounds i8*, i8** %161, i64 1
  %163 = load i8*, i8** %162, align 8
  %164 = call i64 @strcmp(i8* %163, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %160
  %167 = load i8**, i8*** %5, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i64 1
  %169 = load i8*, i8** %168, align 8
  %170 = call i64 @CONST_STRNEQ(i8* %169, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %166, %160, %154
  %173 = call i32 @print_version(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %166
  store i32 1, i32* %9, align 4
  %175 = load i8**, i8*** %5, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 1
  %177 = load i8*, i8** %176, align 8
  %178 = call i64 @strcmp(i8* %177, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  %181 = load i32, i32* %9, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %9, align 4
  %183 = load i8*, i8** @TRUE, align 8
  store i8* %183, i8** %18, align 8
  br label %184

184:                                              ; preds = %180, %174
  br label %185

185:                                              ; preds = %210, %184
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* %4, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %213

189:                                              ; preds = %185
  %190 = load i8*, i8** %18, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %201, label %192

192:                                              ; preds = %189
  %193 = load i8**, i8*** %5, align 8
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %193, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @ranlib_only(i8* %197)
  %199 = load i32, i32* %17, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %17, align 4
  br label %210

201:                                              ; preds = %189
  %202 = load i8**, i8*** %5, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8*, i8** %202, i64 %204
  %206 = load i8*, i8** %205, align 8
  %207 = call i32 @ranlib_touch(i8* %206)
  %208 = load i32, i32* %17, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %17, align 4
  br label %210

210:                                              ; preds = %201, %192
  %211 = load i32, i32* %9, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %9, align 4
  br label %185

213:                                              ; preds = %185
  %214 = load i32, i32* %17, align 4
  %215 = call i32 @xexit(i32 %214)
  br label %216

216:                                              ; preds = %213, %118
  %217 = load i32, i32* %4, align 4
  %218 = icmp eq i32 %217, 2
  br i1 %218, label %219, label %228

219:                                              ; preds = %216
  %220 = load i8**, i8*** %5, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 1
  %222 = load i8*, i8** %221, align 8
  %223 = call i64 @strcmp(i8* %222, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %219
  %226 = call i32 (...) @mri_emul()
  %227 = call i32 @xexit(i32 0)
  br label %228

228:                                              ; preds = %225, %219, %216
  %229 = load i32, i32* %4, align 4
  %230 = icmp slt i32 %229, 2
  br i1 %230, label %231, label %233

231:                                              ; preds = %228
  %232 = call i32 @usage(i32 0)
  br label %233

233:                                              ; preds = %231, %228
  store i32 1, i32* %9, align 4
  %234 = load i8**, i8*** %5, align 8
  %235 = load i32, i32* %9, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8*, i8** %234, i64 %236
  %238 = load i8*, i8** %237, align 8
  store i8* %238, i8** %6, align 8
  %239 = load i8*, i8** %6, align 8
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  %242 = icmp eq i32 %241, 45
  br i1 %242, label %243, label %246

243:                                              ; preds = %233
  store i32 1, i32* %15, align 4
  %244 = load i8*, i8** %6, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %6, align 8
  br label %246

246:                                              ; preds = %243, %233
  br label %247

247:                                              ; preds = %336, %246
  br label %248

248:                                              ; preds = %306, %247
  %249 = load i8*, i8** %6, align 8
  %250 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %250, i8** %6, align 8
  %251 = load i8, i8* %249, align 1
  store i8 %251, i8* %7, align 1
  %252 = sext i8 %251 to i32
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %307

254:                                              ; preds = %248
  %255 = load i8, i8* %7, align 1
  %256 = sext i8 %255 to i32
  switch i32 %256, label %301 [
    i32 100, label %257
    i32 109, label %257
    i32 112, label %257
    i32 113, label %257
    i32 114, label %257
    i32 116, label %257
    i32 120, label %257
    i32 108, label %278
    i32 99, label %279
    i32 111, label %280
    i32 86, label %281
    i32 115, label %284
    i32 83, label %285
    i32 117, label %286
    i32 118, label %287
    i32 97, label %288
    i32 98, label %290
    i32 105, label %292
    i32 77, label %294
    i32 78, label %295
    i32 102, label %297
    i32 80, label %299
  ]

257:                                              ; preds = %254, %254, %254, %254, %254, %254, %254
  %258 = load i32, i32* %8, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %257
  %261 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  %262 = call i32 @fatal(i32 %261)
  br label %263

263:                                              ; preds = %260, %257
  %264 = load i8, i8* %7, align 1
  %265 = sext i8 %264 to i32
  switch i32 %265, label %277 [
    i32 100, label %266
    i32 109, label %268
    i32 112, label %270
    i32 113, label %271
    i32 114, label %273
    i32 116, label %275
    i32 120, label %276
  ]

266:                                              ; preds = %263
  store i32 1, i32* %8, align 4
  %267 = load i8*, i8** @TRUE, align 8
  store i8* %267, i8** @operation_alters_arch, align 8
  br label %277

268:                                              ; preds = %263
  store i32 6, i32* %8, align 4
  %269 = load i8*, i8** @TRUE, align 8
  store i8* %269, i8** @operation_alters_arch, align 8
  br label %277

270:                                              ; preds = %263
  store i32 4, i32* %8, align 4
  br label %277

271:                                              ; preds = %263
  store i32 7, i32* %8, align 4
  %272 = load i8*, i8** @TRUE, align 8
  store i8* %272, i8** @operation_alters_arch, align 8
  br label %277

273:                                              ; preds = %263
  store i32 2, i32* %8, align 4
  %274 = load i8*, i8** @TRUE, align 8
  store i8* %274, i8** @operation_alters_arch, align 8
  br label %277

275:                                              ; preds = %263
  store i32 3, i32* %8, align 4
  br label %277

276:                                              ; preds = %263
  store i32 5, i32* %8, align 4
  br label %277

277:                                              ; preds = %263, %276, %275, %273, %271, %270, %268, %266
  br label %278

278:                                              ; preds = %254, %277
  br label %306

279:                                              ; preds = %254
  store i32 1, i32* @silent_create, align 4
  br label %306

280:                                              ; preds = %254
  store i32 1, i32* @preserve_dates, align 4
  br label %306

281:                                              ; preds = %254
  %282 = load i8*, i8** @TRUE, align 8
  %283 = ptrtoint i8* %282 to i32
  store i32 %283, i32* %13, align 4
  br label %306

284:                                              ; preds = %254
  store i32 1, i32* @write_armap, align 4
  br label %306

285:                                              ; preds = %254
  store i32 -1, i32* @write_armap, align 4
  br label %306

286:                                              ; preds = %254
  store i32 1, i32* @newer_only, align 4
  br label %306

287:                                              ; preds = %254
  store i32 1, i32* @verbose, align 4
  br label %306

288:                                              ; preds = %254
  %289 = load i64, i64* @pos_after, align 8
  store i64 %289, i64* @postype, align 8
  br label %306

290:                                              ; preds = %254
  %291 = load i64, i64* @pos_before, align 8
  store i64 %291, i64* @postype, align 8
  br label %306

292:                                              ; preds = %254
  %293 = load i64, i64* @pos_before, align 8
  store i64 %293, i64* @postype, align 8
  br label %306

294:                                              ; preds = %254
  store i32 1, i32* @mri_mode, align 4
  br label %306

295:                                              ; preds = %254
  %296 = load i8*, i8** @TRUE, align 8
  store i8* %296, i8** @counted_name_mode, align 8
  br label %306

297:                                              ; preds = %254
  %298 = load i8*, i8** @TRUE, align 8
  store i8* %298, i8** @ar_truncate, align 8
  br label %306

299:                                              ; preds = %254
  %300 = load i8*, i8** @TRUE, align 8
  store i8* %300, i8** @full_pathname, align 8
  br label %306

301:                                              ; preds = %254
  %302 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %303 = load i8, i8* %7, align 1
  %304 = call i32 @non_fatal(i32 %302, i8 signext %303)
  %305 = call i32 @usage(i32 0)
  br label %306

306:                                              ; preds = %301, %299, %297, %295, %294, %292, %290, %288, %287, %286, %285, %284, %281, %280, %279, %278
  br label %248

307:                                              ; preds = %248
  %308 = load i32, i32* %15, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %334

310:                                              ; preds = %307
  %311 = load i32, i32* %9, align 4
  %312 = add nsw i32 %311, 1
  %313 = load i32, i32* %4, align 4
  %314 = icmp slt i32 %312, %313
  br i1 %314, label %315, label %334

315:                                              ; preds = %310
  %316 = load i8**, i8*** %5, align 8
  %317 = load i32, i32* %9, align 4
  %318 = add nsw i32 %317, 1
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8*, i8** %316, i64 %319
  %321 = load i8*, i8** %320, align 8
  %322 = getelementptr inbounds i8, i8* %321, i64 0
  %323 = load i8, i8* %322, align 1
  %324 = sext i8 %323 to i32
  %325 = icmp eq i32 %324, 45
  br i1 %325, label %326, label %334

326:                                              ; preds = %315
  %327 = load i8**, i8*** %5, align 8
  %328 = load i32, i32* %9, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %9, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i8*, i8** %327, i64 %330
  %332 = load i8*, i8** %331, align 8
  %333 = getelementptr inbounds i8, i8* %332, i64 1
  store i8* %333, i8** %6, align 8
  br label %335

334:                                              ; preds = %315, %310, %307
  store i32 0, i32* %15, align 4
  br label %335

335:                                              ; preds = %334, %326
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %15, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %247, label %339

339:                                              ; preds = %336
  %340 = load i32, i32* %13, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %344

342:                                              ; preds = %339
  %343 = call i32 @print_version(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %344

344:                                              ; preds = %342, %339
  %345 = load i32, i32* %9, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %9, align 4
  %347 = load i32, i32* %9, align 4
  %348 = load i32, i32* %4, align 4
  %349 = icmp sge i32 %347, %348
  br i1 %349, label %350, label %352

350:                                              ; preds = %344
  %351 = call i32 @usage(i32 0)
  br label %352

352:                                              ; preds = %350, %344
  %353 = load i32, i32* @mri_mode, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %352
  %356 = call i32 (...) @mri_emul()
  br label %521

357:                                              ; preds = %352
  %358 = load i32, i32* %8, align 4
  %359 = icmp eq i32 %358, 7
  br i1 %359, label %360, label %364

360:                                              ; preds = %357
  %361 = load i32, i32* @write_armap, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %360
  store i32 2, i32* %8, align 4
  br label %364

364:                                              ; preds = %363, %360, %357
  %365 = load i32, i32* %8, align 4
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %370, label %367

367:                                              ; preds = %364
  %368 = load i32, i32* %8, align 4
  %369 = icmp eq i32 %368, 3
  br i1 %369, label %370, label %381

370:                                              ; preds = %367, %364
  %371 = load i32, i32* @write_armap, align 4
  %372 = icmp eq i32 %371, 1
  br i1 %372, label %373, label %381

373:                                              ; preds = %370
  %374 = load i8**, i8*** %5, align 8
  %375 = load i32, i32* %9, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i8*, i8** %374, i64 %376
  %378 = load i8*, i8** %377, align 8
  %379 = call i32 @ranlib_only(i8* %378)
  %380 = call i32 @xexit(i32 %379)
  br label %381

381:                                              ; preds = %373, %370, %367
  %382 = load i32, i32* %8, align 4
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %387

384:                                              ; preds = %381
  %385 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  %386 = call i32 @fatal(i32 %385)
  br label %387

387:                                              ; preds = %384, %381
  %388 = load i32, i32* @newer_only, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %396

390:                                              ; preds = %387
  %391 = load i32, i32* %8, align 4
  %392 = icmp ne i32 %391, 2
  br i1 %392, label %393, label %396

393:                                              ; preds = %390
  %394 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.14, i64 0, i64 0))
  %395 = call i32 @fatal(i32 %394)
  br label %396

396:                                              ; preds = %393, %390, %387
  %397 = load i64, i64* @postype, align 8
  %398 = load i64, i64* @pos_default, align 8
  %399 = icmp ne i64 %397, %398
  br i1 %399, label %400, label %407

400:                                              ; preds = %396
  %401 = load i8**, i8*** %5, align 8
  %402 = load i32, i32* %9, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %9, align 4
  %404 = sext i32 %402 to i64
  %405 = getelementptr inbounds i8*, i8** %401, i64 %404
  %406 = load i8*, i8** %405, align 8
  store i8* %406, i8** @posname, align 8
  br label %407

407:                                              ; preds = %400, %396
  %408 = load i8*, i8** @counted_name_mode, align 8
  %409 = icmp ne i8* %408, null
  br i1 %409, label %410, label %433

410:                                              ; preds = %407
  %411 = load i32, i32* %8, align 4
  %412 = icmp ne i32 %411, 5
  br i1 %412, label %413, label %419

413:                                              ; preds = %410
  %414 = load i32, i32* %8, align 4
  %415 = icmp ne i32 %414, 1
  br i1 %415, label %416, label %419

416:                                              ; preds = %413
  %417 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i64 0, i64 0))
  %418 = call i32 @fatal(i32 %417)
  br label %419

419:                                              ; preds = %416, %413, %410
  %420 = load i8**, i8*** %5, align 8
  %421 = load i32, i32* %9, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %9, align 4
  %423 = sext i32 %421 to i64
  %424 = getelementptr inbounds i8*, i8** %420, i64 %423
  %425 = load i8*, i8** %424, align 8
  %426 = call i64 @atoi(i8* %425)
  store i64 %426, i64* @counted_name_counter, align 8
  %427 = load i64, i64* @counted_name_counter, align 8
  %428 = icmp sle i64 %427, 0
  br i1 %428, label %429, label %432

429:                                              ; preds = %419
  %430 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0))
  %431 = call i32 @fatal(i32 %430)
  br label %432

432:                                              ; preds = %429, %419
  br label %433

433:                                              ; preds = %432, %407
  %434 = load i8**, i8*** %5, align 8
  %435 = load i32, i32* %9, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %9, align 4
  %437 = sext i32 %435 to i64
  %438 = getelementptr inbounds i8*, i8** %434, i64 %437
  %439 = load i8*, i8** %438, align 8
  store i8* %439, i8** %12, align 8
  %440 = load i32, i32* %9, align 4
  %441 = load i32, i32* %4, align 4
  %442 = icmp slt i32 %440, %441
  br i1 %442, label %443, label %448

443:                                              ; preds = %433
  %444 = load i8**, i8*** %5, align 8
  %445 = load i32, i32* %9, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i8*, i8** %444, i64 %446
  br label %449

448:                                              ; preds = %433
  br label %449

449:                                              ; preds = %448, %443
  %450 = phi i8** [ %447, %443 ], [ null, %448 ]
  store i8** %450, i8*** %10, align 8
  %451 = load i32, i32* %4, align 4
  %452 = load i32, i32* %9, align 4
  %453 = sub nsw i32 %451, %452
  store i32 %453, i32* %11, align 4
  %454 = load i8*, i8** %12, align 8
  %455 = load i8**, i8*** %10, align 8
  %456 = icmp eq i8** %455, null
  br i1 %456, label %457, label %458

457:                                              ; preds = %449
  br label %462

458:                                              ; preds = %449
  %459 = load i8**, i8*** %10, align 8
  %460 = getelementptr inbounds i8*, i8** %459, i64 0
  %461 = load i8*, i8** %460, align 8
  br label %462

462:                                              ; preds = %458, %457
  %463 = phi i8* [ null, %457 ], [ %461, %458 ]
  %464 = call i32* @open_inarch(i8* %454, i8* %463)
  store i32* %464, i32** %19, align 8
  %465 = load i32, i32* %8, align 4
  switch i32 %465, label %517 [
    i32 3, label %466
    i32 4, label %472
    i32 5, label %478
    i32 1, label %484
    i32 6, label %493
    i32 2, label %502
    i32 7, label %502
  ]

466:                                              ; preds = %462
  %467 = load i32*, i32** %19, align 8
  %468 = load i32, i32* @print_descr, align 4
  %469 = load i8**, i8*** %10, align 8
  %470 = load i32, i32* %11, align 4
  %471 = call i32 @map_over_members(i32* %467, i32 %468, i8** %469, i32 %470)
  br label %520

472:                                              ; preds = %462
  %473 = load i32*, i32** %19, align 8
  %474 = load i32, i32* @print_contents, align 4
  %475 = load i8**, i8*** %10, align 8
  %476 = load i32, i32* %11, align 4
  %477 = call i32 @map_over_members(i32* %473, i32 %474, i8** %475, i32 %476)
  br label %520

478:                                              ; preds = %462
  %479 = load i32*, i32** %19, align 8
  %480 = load i32, i32* @extract_file, align 4
  %481 = load i8**, i8*** %10, align 8
  %482 = load i32, i32* %11, align 4
  %483 = call i32 @map_over_members(i32* %479, i32 %480, i8** %481, i32 %482)
  br label %520

484:                                              ; preds = %462
  %485 = load i8**, i8*** %10, align 8
  %486 = icmp ne i8** %485, null
  br i1 %486, label %487, label %491

487:                                              ; preds = %484
  %488 = load i32*, i32** %19, align 8
  %489 = load i8**, i8*** %10, align 8
  %490 = call i32 @delete_members(i32* %488, i8** %489)
  br label %492

491:                                              ; preds = %484
  store i32* null, i32** @output_filename, align 8
  br label %492

492:                                              ; preds = %491, %487
  br label %520

493:                                              ; preds = %462
  %494 = load i8**, i8*** %10, align 8
  %495 = icmp ne i8** %494, null
  br i1 %495, label %496, label %500

496:                                              ; preds = %493
  %497 = load i32*, i32** %19, align 8
  %498 = load i8**, i8*** %10, align 8
  %499 = call i32 @move_members(i32* %497, i8** %498)
  br label %501

500:                                              ; preds = %493
  store i32* null, i32** @output_filename, align 8
  br label %501

501:                                              ; preds = %500, %496
  br label %520

502:                                              ; preds = %462, %462
  %503 = load i8**, i8*** %10, align 8
  %504 = icmp ne i8** %503, null
  br i1 %504, label %508, label %505

505:                                              ; preds = %502
  %506 = load i32, i32* @write_armap, align 4
  %507 = icmp sgt i32 %506, 0
  br i1 %507, label %508, label %515

508:                                              ; preds = %505, %502
  %509 = load i32*, i32** %19, align 8
  %510 = load i8**, i8*** %10, align 8
  %511 = load i32, i32* %8, align 4
  %512 = icmp eq i32 %511, 7
  %513 = zext i1 %512 to i32
  %514 = call i32 @replace_members(i32* %509, i8** %510, i32 %513)
  br label %516

515:                                              ; preds = %505
  store i32* null, i32** @output_filename, align 8
  br label %516

516:                                              ; preds = %515, %508
  br label %520

517:                                              ; preds = %462
  %518 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i64 0, i64 0))
  %519 = call i32 @fatal(i32 %518)
  br label %520

520:                                              ; preds = %517, %516, %501, %492, %478, %472, %466
  br label %521

521:                                              ; preds = %520, %355
  %522 = load i8*, i8** @program_name, align 8
  %523 = call i32 @END_PROGRESS(i8* %522)
  %524 = call i32 @xexit(i32 0)
  ret i32 0
}

declare dso_local i32 @bindtextdomain(i32, i32) #1

declare dso_local i32 @textdomain(i32) #1

declare dso_local i32 @xmalloc_set_program_name(i8*) #1

declare dso_local i32 @expandargv(i32*, i8***) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @FILENAME_CMP(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @print_version(i8*) #1

declare dso_local i32 @START_PROGRESS(i8*, i32) #1

declare dso_local i32 @bfd_init(...) #1

declare dso_local i32 @set_default_bfd_target(...) #1

declare dso_local i32 @xatexit(i32) #1

declare dso_local i32 @ar_emul_parse_arg(i8*) #1

declare dso_local i64 @CONST_STRNEQ(i8*, i8*) #1

declare dso_local i32 @ranlib_only(i8*) #1

declare dso_local i32 @ranlib_touch(i8*) #1

declare dso_local i32 @xexit(i32) #1

declare dso_local i32 @mri_emul(...) #1

declare dso_local i32 @fatal(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @non_fatal(i32, i8 signext) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32* @open_inarch(i8*, i8*) #1

declare dso_local i32 @map_over_members(i32*, i32, i8**, i32) #1

declare dso_local i32 @delete_members(i32*, i8**) #1

declare dso_local i32 @move_members(i32*, i8**) #1

declare dso_local i32 @replace_members(i32*, i8**, i32) #1

declare dso_local i32 @END_PROGRESS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
