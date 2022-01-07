; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_cmp.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_cmp.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i32 }

@EXIT_TROUBLE = common dso_local global i32 0, align 4
@exit_failure = common dso_local global i32 0, align 4
@program_name = common dso_local global i8* null, align 8
@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PACKAGE = common dso_local global i32 0, align 4
@LOCALEDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"bci:ln:sv\00", align 1
@long_options = common dso_local global i32 0, align 4
@opt_print_bytes = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@ignore_initial = common dso_local global i64* null, align 8
@type_all_diffs = common dso_local global i64 0, align 8
@valid_suffixes = common dso_local global i32 0, align 4
@LONGINT_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"invalid --bytes value `%s'\00", align 1
@bytes = common dso_local global i64 0, align 8
@type_status = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"cmp\00", align 1
@PACKAGE_NAME = common dso_local global i32 0, align 4
@PACKAGE_VERSION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Torbjorn Granlund\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"missing operand after `%s'\00", align 1
@file = common dso_local global i8** null, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"extra operand `%s'\00", align 1
@STDIN_FILENO = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@file_desc = common dso_local global i64* null, align 8
@stat_buf = common dso_local global %struct.stat* null, align 8
@comparison_type = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@STDOUT_FILENO = common dso_local global i64 0, align 8
@NULL_DEVICE = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@PTRDIFF_MAX = common dso_local global i64 0, align 8
@buf_size = common dso_local global i32 0, align 4
@buffer = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.stat, align 8
  %14 = alloca %struct.stat, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = load i32, i32* @EXIT_TROUBLE, align 4
  store i32 %17, i32* @exit_failure, align 4
  %18 = call i32 @initialize_main(i32* %4, i8*** %5)
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** @program_name, align 8
  %22 = load i32, i32* @LC_ALL, align 4
  %23 = call i32 @setlocale(i32 %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @PACKAGE, align 4
  %25 = load i32, i32* @LOCALEDIR, align 4
  %26 = call i32 @bindtextdomain(i32 %24, i32 %25)
  %27 = load i32, i32* @PACKAGE, align 4
  %28 = call i32 @textdomain(i32 %27)
  %29 = call i32 @c_stack_action(i32 0)
  br label %30

30:                                               ; preds = %100, %2
  %31 = load i32, i32* %4, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = load i32, i32* @long_options, align 4
  %34 = call i32 @getopt_long(i32 %31, i8** %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 0)
  store i32 %34, i32* %6, align 4
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %101

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  switch i32 %37, label %98 [
    i32 98, label %38
    i32 99, label %38
    i32 105, label %39
    i32 108, label %64
    i32 110, label %67
    i32 115, label %83
    i32 118, label %86
    i32 128, label %94
  ]

38:                                               ; preds = %36, %36
  store i32 1, i32* @opt_print_bytes, align 4
  br label %100

39:                                               ; preds = %36
  %40 = call i32 @specify_ignore_initial(i32 0, i8** @optarg, i8 signext 58)
  %41 = load i8*, i8** @optarg, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** @optarg, align 8
  %43 = load i8, i8* %41, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 58
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = call i32 @specify_ignore_initial(i32 1, i8** @optarg, i8 signext 0)
  br label %63

48:                                               ; preds = %39
  %49 = load i64*, i64** @ignore_initial, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** @ignore_initial, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %51, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load i64*, i64** @ignore_initial, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** @ignore_initial, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %56, %48
  br label %63

63:                                               ; preds = %62, %46
  br label %100

64:                                               ; preds = %36
  %65 = load i64, i64* @type_all_diffs, align 8
  %66 = call i32 @specify_comparison_type(i64 %65)
  br label %100

67:                                               ; preds = %36
  %68 = load i8*, i8** @optarg, align 8
  %69 = load i32, i32* @valid_suffixes, align 4
  %70 = call i32 @xstrtoumax(i8* %68, i32 0, i32 0, i64* %10, i32 %69)
  %71 = load i32, i32* @LONGINT_OK, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i8*, i8** @optarg, align 8
  %75 = call i32 @try_help(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %73, %67
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @bytes, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i64, i64* %10, align 8
  store i64 %81, i64* @bytes, align 8
  br label %82

82:                                               ; preds = %80, %76
  br label %100

83:                                               ; preds = %36
  %84 = load i64, i64* @type_status, align 8
  %85 = call i32 @specify_comparison_type(i64 %84)
  br label %100

86:                                               ; preds = %36
  %87 = load i32, i32* @stdout, align 4
  %88 = load i32, i32* @PACKAGE_NAME, align 4
  %89 = load i32, i32* @PACKAGE_VERSION, align 4
  %90 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %91 = call i32 @version_etc(i32 %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %88, i32 %89, i32 %90, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* null)
  %92 = call i32 (...) @check_stdout()
  %93 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %93, i32* %3, align 4
  br label %444

94:                                               ; preds = %36
  %95 = call i32 (...) @usage()
  %96 = call i32 (...) @check_stdout()
  %97 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %97, i32* %3, align 4
  br label %444

98:                                               ; preds = %36
  %99 = call i32 @try_help(i8* null, i8* null)
  br label %100

100:                                              ; preds = %98, %83, %82, %64, %63, %38
  br label %30

101:                                              ; preds = %30
  %102 = load i32, i32* @optind, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = load i8**, i8*** %5, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %106, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @try_help(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %111)
  br label %113

113:                                              ; preds = %105, %101
  %114 = load i8**, i8*** %5, align 8
  %115 = load i32, i32* @optind, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* @optind, align 4
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8*, i8** %114, i64 %117
  %119 = load i8*, i8** %118, align 8
  %120 = load i8**, i8*** @file, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 0
  store i8* %119, i8** %121, align 8
  %122 = load i32, i32* @optind, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %113
  %126 = load i8**, i8*** %5, align 8
  %127 = load i32, i32* @optind, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* @optind, align 4
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i8*, i8** %126, i64 %129
  %131 = load i8*, i8** %130, align 8
  br label %133

132:                                              ; preds = %113
  br label %133

133:                                              ; preds = %132, %125
  %134 = phi i8* [ %131, %125 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), %132 ]
  %135 = load i8**, i8*** @file, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 1
  store i8* %134, i8** %136, align 8
  store i32 0, i32* %7, align 4
  br label %137

137:                                              ; preds = %155, %133
  %138 = load i32, i32* %7, align 4
  %139 = icmp slt i32 %138, 2
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i32, i32* @optind, align 4
  %142 = load i32, i32* %4, align 4
  %143 = icmp slt i32 %141, %142
  br label %144

144:                                              ; preds = %140, %137
  %145 = phi i1 [ false, %137 ], [ %143, %140 ]
  br i1 %145, label %146, label %158

146:                                              ; preds = %144
  %147 = load i8**, i8*** %5, align 8
  %148 = load i32, i32* @optind, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* @optind, align 4
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i8*, i8** %147, i64 %150
  %152 = load i8*, i8** %151, align 8
  store i8* %152, i8** %11, align 8
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @specify_ignore_initial(i32 %153, i8** %11, i8 signext 0)
  br label %155

155:                                              ; preds = %146
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %7, align 4
  br label %137

158:                                              ; preds = %144
  %159 = load i32, i32* @optind, align 4
  %160 = load i32, i32* %4, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %169

162:                                              ; preds = %158
  %163 = load i8**, i8*** %5, align 8
  %164 = load i32, i32* @optind, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %163, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @try_help(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %167)
  br label %169

169:                                              ; preds = %162, %158
  store i32 0, i32* %7, align 4
  br label %170

170:                                              ; preds = %276, %169
  %171 = load i32, i32* %7, align 4
  %172 = icmp slt i32 %171, 2
  br i1 %172, label %173, label %279

173:                                              ; preds = %170
  %174 = load i32, i32* %7, align 4
  %175 = load i8**, i8*** @file, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 1
  %177 = load i8*, i8** %176, align 8
  %178 = call i64 @strcmp(i8* %177, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %179 = icmp eq i64 %178, 0
  %180 = zext i1 %179 to i32
  %181 = xor i32 %174, %180
  store i32 %181, i32* %12, align 4
  %182 = load i32, i32* %7, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %203

184:                                              ; preds = %173
  %185 = load i64*, i64** @ignore_initial, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64*, i64** @ignore_initial, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp eq i64 %187, %190
  br i1 %191, label %192, label %203

192:                                              ; preds = %184
  %193 = load i8**, i8*** @file, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i64 0
  %195 = load i8*, i8** %194, align 8
  %196 = load i8**, i8*** @file, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i64 1
  %198 = load i8*, i8** %197, align 8
  %199 = call i64 @file_name_cmp(i8* %195, i8* %198)
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %192
  %202 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %202, i32* %3, align 4
  br label %444

203:                                              ; preds = %192, %184, %173
  %204 = load i8**, i8*** @file, align 8
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8*, i8** %204, i64 %206
  %208 = load i8*, i8** %207, align 8
  %209 = call i64 @strcmp(i8* %208, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %203
  %212 = load i64, i64* @STDIN_FILENO, align 8
  br label %221

213:                                              ; preds = %203
  %214 = load i8**, i8*** @file, align 8
  %215 = load i32, i32* %12, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8*, i8** %214, i64 %216
  %218 = load i8*, i8** %217, align 8
  %219 = load i32, i32* @O_RDONLY, align 4
  %220 = call i64 @open(i8* %218, i32 %219, i32 0)
  br label %221

221:                                              ; preds = %213, %211
  %222 = phi i64 [ %212, %211 ], [ %220, %213 ]
  %223 = load i64*, i64** @file_desc, align 8
  %224 = load i32, i32* %12, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i64, i64* %223, i64 %225
  store i64 %222, i64* %226, align 8
  %227 = load i64*, i64** @file_desc, align 8
  %228 = load i32, i32* %12, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i64, i64* %227, i64 %229
  %231 = load i64, i64* %230, align 8
  %232 = icmp slt i64 %231, 0
  br i1 %232, label %245, label %233

233:                                              ; preds = %221
  %234 = load i64*, i64** @file_desc, align 8
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i64, i64* %234, i64 %236
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.stat*, %struct.stat** @stat_buf, align 8
  %240 = load i32, i32* %12, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.stat, %struct.stat* %239, i64 %241
  %243 = call i64 @fstat(i64 %238, %struct.stat* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %269

245:                                              ; preds = %233, %221
  %246 = load i64*, i64** @file_desc, align 8
  %247 = load i32, i32* %12, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i64, i64* %246, i64 %248
  %250 = load i64, i64* %249, align 8
  %251 = icmp slt i64 %250, 0
  br i1 %251, label %252, label %259

252:                                              ; preds = %245
  %253 = load i64, i64* @comparison_type, align 8
  %254 = load i64, i64* @type_status, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %252
  %257 = load i32, i32* @EXIT_TROUBLE, align 4
  %258 = call i32 @exit(i32 %257) #3
  unreachable

259:                                              ; preds = %252, %245
  %260 = load i32, i32* @EXIT_TROUBLE, align 4
  %261 = load i32, i32* @errno, align 4
  %262 = load i8**, i8*** @file, align 8
  %263 = load i32, i32* %12, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8*, i8** %262, i64 %264
  %266 = load i8*, i8** %265, align 8
  %267 = call i32 @error(i32 %260, i32 %261, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %266)
  br label %268

268:                                              ; preds = %259
  br label %269

269:                                              ; preds = %268, %233
  %270 = load i64*, i64** @file_desc, align 8
  %271 = load i32, i32* %12, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i64, i64* %270, i64 %272
  %274 = load i64, i64* %273, align 8
  %275 = call i32 @set_binary_mode(i64 %274, i32 1)
  br label %276

276:                                              ; preds = %269
  %277 = load i32, i32* %7, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %7, align 4
  br label %170

279:                                              ; preds = %170
  %280 = load %struct.stat*, %struct.stat** @stat_buf, align 8
  %281 = getelementptr inbounds %struct.stat, %struct.stat* %280, i64 0
  %282 = load %struct.stat*, %struct.stat** @stat_buf, align 8
  %283 = getelementptr inbounds %struct.stat, %struct.stat* %282, i64 1
  %284 = call i64 @same_file(%struct.stat* %281, %struct.stat* %283)
  %285 = icmp slt i64 0, %284
  br i1 %285, label %286, label %299

286:                                              ; preds = %279
  %287 = load %struct.stat*, %struct.stat** @stat_buf, align 8
  %288 = getelementptr inbounds %struct.stat, %struct.stat* %287, i64 0
  %289 = load %struct.stat*, %struct.stat** @stat_buf, align 8
  %290 = getelementptr inbounds %struct.stat, %struct.stat* %289, i64 1
  %291 = call i64 @same_file_attributes(%struct.stat* %288, %struct.stat* %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %286
  %294 = call i64 @file_position(i32 0)
  %295 = call i64 @file_position(i32 1)
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %297, label %299

297:                                              ; preds = %293
  %298 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %298, i32* %3, align 4
  br label %444

299:                                              ; preds = %293, %286, %279
  %300 = load i64, i64* @comparison_type, align 8
  %301 = load i64, i64* @type_status, align 8
  %302 = icmp ne i64 %300, %301
  br i1 %302, label %303, label %317

303:                                              ; preds = %299
  %304 = load i64, i64* @STDOUT_FILENO, align 8
  %305 = call i64 @fstat(i64 %304, %struct.stat* %13)
  %306 = icmp eq i64 %305, 0
  br i1 %306, label %307, label %316

307:                                              ; preds = %303
  %308 = load i32, i32* @NULL_DEVICE, align 4
  %309 = call i64 @stat(i32 %308, %struct.stat* %14)
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %307
  %312 = call i64 @same_file(%struct.stat* %13, %struct.stat* %14)
  %313 = icmp slt i64 0, %312
  br i1 %313, label %314, label %316

314:                                              ; preds = %311
  %315 = load i64, i64* @type_status, align 8
  store i64 %315, i64* @comparison_type, align 8
  br label %316

316:                                              ; preds = %314, %311, %307, %303
  br label %317

317:                                              ; preds = %316, %299
  %318 = load i64, i64* @comparison_type, align 8
  %319 = load i64, i64* @type_status, align 8
  %320 = icmp eq i64 %318, %319
  br i1 %320, label %321, label %369

321:                                              ; preds = %317
  %322 = load %struct.stat*, %struct.stat** @stat_buf, align 8
  %323 = getelementptr inbounds %struct.stat, %struct.stat* %322, i64 0
  %324 = getelementptr inbounds %struct.stat, %struct.stat* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = call i64 @S_ISREG(i32 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %369

328:                                              ; preds = %321
  %329 = load %struct.stat*, %struct.stat** @stat_buf, align 8
  %330 = getelementptr inbounds %struct.stat, %struct.stat* %329, i64 1
  %331 = getelementptr inbounds %struct.stat, %struct.stat* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 8
  %333 = call i64 @S_ISREG(i32 %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %369

335:                                              ; preds = %328
  %336 = load %struct.stat*, %struct.stat** @stat_buf, align 8
  %337 = getelementptr inbounds %struct.stat, %struct.stat* %336, i64 0
  %338 = getelementptr inbounds %struct.stat, %struct.stat* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = call i64 @file_position(i32 0)
  %341 = sub nsw i64 %339, %340
  store i64 %341, i64* %15, align 8
  %342 = load %struct.stat*, %struct.stat** @stat_buf, align 8
  %343 = getelementptr inbounds %struct.stat, %struct.stat* %342, i64 1
  %344 = getelementptr inbounds %struct.stat, %struct.stat* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = call i64 @file_position(i32 1)
  %347 = sub nsw i64 %345, %346
  store i64 %347, i64* %16, align 8
  %348 = load i64, i64* %15, align 8
  %349 = icmp slt i64 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %335
  store i64 0, i64* %15, align 8
  br label %351

351:                                              ; preds = %350, %335
  %352 = load i64, i64* %16, align 8
  %353 = icmp slt i64 %352, 0
  br i1 %353, label %354, label %355

354:                                              ; preds = %351
  store i64 0, i64* %16, align 8
  br label %355

355:                                              ; preds = %354, %351
  %356 = load i64, i64* %15, align 8
  %357 = load i64, i64* %16, align 8
  %358 = icmp ne i64 %356, %357
  br i1 %358, label %359, label %368

359:                                              ; preds = %355
  %360 = load i64, i64* %15, align 8
  %361 = load i64, i64* %16, align 8
  %362 = call i64 @MIN(i64 %360, i64 %361)
  %363 = load i64, i64* @bytes, align 8
  %364 = icmp slt i64 %362, %363
  br i1 %364, label %365, label %368

365:                                              ; preds = %359
  %366 = load i32, i32* @EXIT_FAILURE, align 4
  %367 = call i32 @exit(i32 %366) #3
  unreachable

368:                                              ; preds = %359, %355
  br label %369

369:                                              ; preds = %368, %328, %321, %317
  %370 = load %struct.stat*, %struct.stat** @stat_buf, align 8
  %371 = getelementptr inbounds %struct.stat, %struct.stat* %370, i64 0
  %372 = bitcast %struct.stat* %371 to { i64, i32 }*
  %373 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %372, i32 0, i32 1
  %376 = load i32, i32* %375, align 8
  %377 = call i32 @STAT_BLOCKSIZE(i64 %374, i32 %376)
  %378 = load %struct.stat*, %struct.stat** @stat_buf, align 8
  %379 = getelementptr inbounds %struct.stat, %struct.stat* %378, i64 1
  %380 = bitcast %struct.stat* %379 to { i64, i32 }*
  %381 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %380, i32 0, i32 1
  %384 = load i32, i32* %383, align 8
  %385 = call i32 @STAT_BLOCKSIZE(i64 %382, i32 %384)
  %386 = load i64, i64* @PTRDIFF_MAX, align 8
  %387 = sub i64 %386, 4
  %388 = call i32 @buffer_lcm(i32 %377, i32 %385, i64 %387)
  store i32 %388, i32* @buf_size, align 4
  %389 = load i32, i32* @buf_size, align 4
  %390 = sext i32 %389 to i64
  %391 = add i64 %390, 8
  %392 = sub i64 %391, 1
  %393 = udiv i64 %392, 4
  store i64 %393, i64* %9, align 8
  %394 = load i64, i64* %9, align 8
  %395 = mul i64 8, %394
  %396 = trunc i64 %395 to i32
  %397 = call i64 @xmalloc(i32 %396)
  %398 = load i64*, i64** @buffer, align 8
  %399 = getelementptr inbounds i64, i64* %398, i64 0
  store i64 %397, i64* %399, align 8
  %400 = load i64*, i64** @buffer, align 8
  %401 = getelementptr inbounds i64, i64* %400, i64 0
  %402 = load i64, i64* %401, align 8
  %403 = load i64, i64* %9, align 8
  %404 = add i64 %402, %403
  %405 = load i64*, i64** @buffer, align 8
  %406 = getelementptr inbounds i64, i64* %405, i64 1
  store i64 %404, i64* %406, align 8
  %407 = call i32 (...) @cmp()
  store i32 %407, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %408

408:                                              ; preds = %429, %369
  %409 = load i32, i32* %7, align 4
  %410 = icmp slt i32 %409, 2
  br i1 %410, label %411, label %432

411:                                              ; preds = %408
  %412 = load i64*, i64** @file_desc, align 8
  %413 = load i32, i32* %7, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i64, i64* %412, i64 %414
  %416 = load i64, i64* %415, align 8
  %417 = call i64 @close(i64 %416)
  %418 = icmp ne i64 %417, 0
  br i1 %418, label %419, label %428

419:                                              ; preds = %411
  %420 = load i32, i32* @EXIT_TROUBLE, align 4
  %421 = load i32, i32* @errno, align 4
  %422 = load i8**, i8*** @file, align 8
  %423 = load i32, i32* %7, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i8*, i8** %422, i64 %424
  %426 = load i8*, i8** %425, align 8
  %427 = call i32 @error(i32 %420, i32 %421, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %426)
  br label %428

428:                                              ; preds = %419, %411
  br label %429

429:                                              ; preds = %428
  %430 = load i32, i32* %7, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %7, align 4
  br label %408

432:                                              ; preds = %408
  %433 = load i32, i32* %8, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %441

435:                                              ; preds = %432
  %436 = load i64, i64* @comparison_type, align 8
  %437 = load i64, i64* @type_status, align 8
  %438 = icmp ne i64 %436, %437
  br i1 %438, label %439, label %441

439:                                              ; preds = %435
  %440 = call i32 (...) @check_stdout()
  br label %441

441:                                              ; preds = %439, %435, %432
  %442 = load i32, i32* %8, align 4
  %443 = call i32 @exit(i32 %442) #3
  unreachable

444:                                              ; preds = %297, %201, %94, %86
  %445 = load i32, i32* %3, align 4
  ret i32 %445
}

declare dso_local i32 @initialize_main(i32*, i8***) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @bindtextdomain(i32, i32) #1

declare dso_local i32 @textdomain(i32) #1

declare dso_local i32 @c_stack_action(i32) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32) #1

declare dso_local i32 @specify_ignore_initial(i32, i8**, i8 signext) #1

declare dso_local i32 @specify_comparison_type(i64) #1

declare dso_local i32 @xstrtoumax(i8*, i32, i32, i64*, i32) #1

declare dso_local i32 @try_help(i8*, i8*) #1

declare dso_local i32 @version_etc(i32, i8*, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @check_stdout(...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @file_name_cmp(i8*, i8*) #1

declare dso_local i64 @open(i8*, i32, i32) #1

declare dso_local i64 @fstat(i64, %struct.stat*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @error(i32, i32, i8*, i8*) #1

declare dso_local i32 @set_binary_mode(i64, i32) #1

declare dso_local i64 @same_file(%struct.stat*, %struct.stat*) #1

declare dso_local i64 @same_file_attributes(%struct.stat*, %struct.stat*) #1

declare dso_local i64 @file_position(i32) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @buffer_lcm(i32, i32, i64) #1

declare dso_local i32 @STAT_BLOCKSIZE(i64, i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @cmp(...) #1

declare dso_local i64 @close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
