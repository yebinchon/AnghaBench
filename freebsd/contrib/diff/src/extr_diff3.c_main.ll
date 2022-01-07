; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_diff3.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_diff3.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_block = type { i32 }
%struct.diff3_block = type { i32 }
%struct.stat = type { i32 }

@exit_failure = common dso_local global i32 0, align 4
@program_name = common dso_local global i8* null, align 8
@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PACKAGE = common dso_local global i32 0, align 4
@LOCALEDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"aeimvx3AEL:TX\00", align 1
@longopts = common dso_local global i32 0, align 4
@text = common dso_local global i32 0, align 4
@show_2nd = common dso_local global i32 0, align 4
@flagging = common dso_local global i32 0, align 4
@overlap_only = common dso_local global i32 0, align 4
@simple_only = common dso_local global i32 0, align 4
@finalwrite = common dso_local global i32 0, align 4
@merge = common dso_local global i32 0, align 4
@initial_tab = common dso_local global i32 0, align 4
@strip_trailing_cr = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"diff3\00", align 1
@PACKAGE_NAME = common dso_local global i32 0, align 4
@PACKAGE_VERSION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"Randy Smith\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@diff_program = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"too many file label options\00", align 1
@edscript = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"incompatible options\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"missing operand after `%s'\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"extra operand `%s'\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"`-' specified for more than one input file\00", align 1
@EXIT_TROUBLE = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@FILEC = common dso_local global i64 0, align 8
@FILE1 = common dso_local global i64 0, align 8
@FILE0 = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"read failed\00", align 1
@SIGCHLD = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.diff_block*, align 8
  %14 = alloca %struct.diff_block*, align 8
  %15 = alloca %struct.diff_block*, align 8
  %16 = alloca %struct.diff3_block*, align 8
  %17 = alloca i32, align 4
  %18 = alloca [3 x i8*], align 16
  %19 = alloca i8*, align 8
  %20 = alloca i8**, align 8
  %21 = alloca %struct.stat, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %17, align 4
  store i32 2, i32* @exit_failure, align 4
  %22 = call i32 @initialize_main(i32* %4, i8*** %5)
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** @program_name, align 8
  %26 = load i32, i32* @LC_ALL, align 4
  %27 = call i32 @setlocale(i32 %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @PACKAGE, align 4
  %29 = load i32, i32* @LOCALEDIR, align 4
  %30 = call i32 @bindtextdomain(i32 %28, i32 %29)
  %31 = load i32, i32* @PACKAGE, align 4
  %32 = call i32 @textdomain(i32 %31)
  %33 = call i32 @c_stack_action(i32 0)
  br label %34

34:                                               ; preds = %87, %2
  %35 = load i32, i32* %4, align 4
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32, i32* @longopts, align 4
  %38 = call i32 @getopt_long(i32 %35, i8** %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 0)
  store i32 %38, i32* %6, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %88

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  switch i32 %41, label %85 [
    i32 97, label %42
    i32 65, label %43
    i32 120, label %46
    i32 51, label %49
    i32 105, label %52
    i32 109, label %53
    i32 88, label %54
    i32 69, label %55
    i32 101, label %56
    i32 84, label %59
    i32 128, label %60
    i32 118, label %61
    i32 130, label %68
    i32 129, label %70
    i32 76, label %74
  ]

42:                                               ; preds = %40
  store i32 1, i32* @text, align 4
  br label %87

43:                                               ; preds = %40
  store i32 1, i32* @show_2nd, align 4
  store i32 1, i32* @flagging, align 4
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %87

46:                                               ; preds = %40
  store i32 1, i32* @overlap_only, align 4
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %87

49:                                               ; preds = %40
  store i32 1, i32* @simple_only, align 4
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %87

52:                                               ; preds = %40
  store i32 1, i32* @finalwrite, align 4
  br label %87

53:                                               ; preds = %40
  store i32 1, i32* @merge, align 4
  br label %87

54:                                               ; preds = %40
  store i32 1, i32* @overlap_only, align 4
  br label %55

55:                                               ; preds = %40, %54
  store i32 1, i32* @flagging, align 4
  br label %56

56:                                               ; preds = %40, %55
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %87

59:                                               ; preds = %40
  store i32 1, i32* @initial_tab, align 4
  br label %87

60:                                               ; preds = %40
  store i32 1, i32* @strip_trailing_cr, align 4
  br label %87

61:                                               ; preds = %40
  %62 = load i32, i32* @stdout, align 4
  %63 = load i32, i32* @PACKAGE_NAME, align 4
  %64 = load i32, i32* @PACKAGE_VERSION, align 4
  %65 = call i32 @version_etc(i32 %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* null)
  %66 = call i32 (...) @check_stdout()
  %67 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %67, i32* %3, align 4
  br label %363

68:                                               ; preds = %40
  %69 = load i8*, i8** @optarg, align 8
  store i8* %69, i8** @diff_program, align 8
  br label %87

70:                                               ; preds = %40
  %71 = call i32 (...) @usage()
  %72 = call i32 (...) @check_stdout()
  %73 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %73, i32* %3, align 4
  br label %363

74:                                               ; preds = %40
  %75 = load i32, i32* %17, align 4
  %76 = icmp slt i32 %75, 3
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i8*, i8** @optarg, align 8
  %79 = load i32, i32* %17, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %17, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 %81
  store i8* %78, i8** %82, align 8
  br label %87

83:                                               ; preds = %74
  %84 = call i32 @try_help(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* null)
  br label %85

85:                                               ; preds = %40, %83
  %86 = call i32 @try_help(i8* null, i8* null)
  br label %87

87:                                               ; preds = %85, %77, %68, %60, %59, %56, %53, %52, %49, %46, %43, %42
  br label %34

88:                                               ; preds = %34
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @merge, align 4
  %91 = xor i32 %90, -1
  %92 = and i32 %89, %91
  store i32 %92, i32* @edscript, align 4
  %93 = load i32, i32* %11, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* @merge, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* @show_2nd, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* @show_2nd, align 4
  %99 = load i32, i32* %11, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* @merge, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* @flagging, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* @flagging, align 4
  %105 = load i32, i32* %11, align 4
  %106 = icmp sgt i32 %105, 1
  br i1 %106, label %118, label %107

107:                                              ; preds = %88
  %108 = load i32, i32* @finalwrite, align 4
  %109 = load i32, i32* @merge, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %17, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %112
  %116 = load i32, i32* @flagging, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %120, label %118

118:                                              ; preds = %115, %107, %88
  %119 = call i32 @try_help(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* null)
  br label %120

120:                                              ; preds = %118, %115, %112
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @optind, align 4
  %123 = sub nsw i32 %121, %122
  %124 = icmp ne i32 %123, 3
  br i1 %124, label %125, label %147

125:                                              ; preds = %120
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @optind, align 4
  %128 = sub nsw i32 %126, %127
  %129 = icmp slt i32 %128, 3
  br i1 %129, label %130, label %138

130:                                              ; preds = %125
  %131 = load i8**, i8*** %5, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %131, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @try_help(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %136)
  br label %146

138:                                              ; preds = %125
  %139 = load i8**, i8*** %5, align 8
  %140 = load i32, i32* @optind, align 4
  %141 = add nsw i32 %140, 3
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %139, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @try_help(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %144)
  br label %146

146:                                              ; preds = %138, %130
  br label %147

147:                                              ; preds = %146, %120
  %148 = load i8**, i8*** %5, align 8
  %149 = load i32, i32* @optind, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  store i8** %151, i8*** %20, align 8
  %152 = load i32, i32* %17, align 4
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %165, %147
  %154 = load i32, i32* %7, align 4
  %155 = icmp slt i32 %154, 3
  br i1 %155, label %156, label %168

156:                                              ; preds = %153
  %157 = load i8**, i8*** %20, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8*, i8** %157, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 %163
  store i8* %161, i8** %164, align 8
  br label %165

165:                                              ; preds = %156
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %7, align 4
  br label %153

168:                                              ; preds = %153
  %169 = load i32, i32* @edscript, align 4
  %170 = load i32, i32* @merge, align 4
  %171 = or i32 %169, %170
  %172 = sub nsw i32 2, %171
  store i32 %172, i32* %8, align 4
  %173 = load i8**, i8*** %20, align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %173, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = call i64 @strcmp(i8* %177, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %199

180:                                              ; preds = %168
  %181 = load i32, i32* %8, align 4
  %182 = sub nsw i32 3, %181
  store i32 %182, i32* %8, align 4
  %183 = load i8**, i8*** %20, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i64 0
  %185 = load i8*, i8** %184, align 8
  %186 = call i64 @strcmp(i8* %185, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %196, label %188

188:                                              ; preds = %180
  %189 = load i8**, i8*** %20, align 8
  %190 = load i32, i32* %8, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8*, i8** %189, i64 %191
  %193 = load i8*, i8** %192, align 8
  %194 = call i64 @strcmp(i8* %193, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %188, %180
  %197 = call i32 @fatal(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  br label %198

198:                                              ; preds = %196, %188
  br label %199

199:                                              ; preds = %198, %168
  %200 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 0, i32* %200, align 4
  %201 = load i32, i32* %8, align 4
  %202 = sub nsw i32 3, %201
  %203 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 %202, i32* %203, align 4
  %204 = load i32, i32* %8, align 4
  %205 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %204, i32* %205, align 4
  store i32 0, i32* %7, align 4
  br label %206

206:                                              ; preds = %217, %199
  %207 = load i32, i32* %7, align 4
  %208 = icmp slt i32 %207, 3
  br i1 %208, label %209, label %220

209:                                              ; preds = %206
  %210 = load i32, i32* %7, align 4
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %215
  store i32 %210, i32* %216, align 4
  br label %217

217:                                              ; preds = %209
  %218 = load i32, i32* %7, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %7, align 4
  br label %206

220:                                              ; preds = %206
  store i32 0, i32* %7, align 4
  br label %221

221:                                              ; preds = %264, %220
  %222 = load i32, i32* %7, align 4
  %223 = icmp slt i32 %222, 3
  br i1 %223, label %224, label %267

224:                                              ; preds = %221
  %225 = load i8**, i8*** %20, align 8
  %226 = load i32, i32* %7, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8*, i8** %225, i64 %227
  %229 = load i8*, i8** %228, align 8
  %230 = call i64 @strcmp(i8* %229, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %263

232:                                              ; preds = %224
  %233 = load i8**, i8*** %20, align 8
  %234 = load i32, i32* %7, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8*, i8** %233, i64 %235
  %237 = load i8*, i8** %236, align 8
  %238 = call i64 @stat(i8* %237, %struct.stat* %21)
  %239 = icmp slt i64 %238, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %232
  %241 = load i8**, i8*** %20, align 8
  %242 = load i32, i32* %7, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8*, i8** %241, i64 %243
  %245 = load i8*, i8** %244, align 8
  %246 = call i32 @perror_with_exit(i8* %245)
  br label %262

247:                                              ; preds = %232
  %248 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i64 @S_ISDIR(i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %261

252:                                              ; preds = %247
  %253 = load i32, i32* @EXIT_TROUBLE, align 4
  %254 = load i32, i32* @EISDIR, align 4
  %255 = load i8**, i8*** %20, align 8
  %256 = load i32, i32* %7, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8*, i8** %255, i64 %257
  %259 = load i8*, i8** %258, align 8
  %260 = call i32 @error(i32 %253, i32 %254, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* %259)
  br label %261

261:                                              ; preds = %252, %247
  br label %262

262:                                              ; preds = %261, %240
  br label %263

263:                                              ; preds = %262, %224
  br label %264

264:                                              ; preds = %263
  %265 = load i32, i32* %7, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %7, align 4
  br label %221

267:                                              ; preds = %221
  %268 = load i8**, i8*** %20, align 8
  %269 = load i64, i64* @FILEC, align 8
  %270 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8*, i8** %268, i64 %272
  %274 = load i8*, i8** %273, align 8
  store i8* %274, i8** %19, align 8
  %275 = load i8**, i8*** %20, align 8
  %276 = load i64, i64* @FILE1, align 8
  %277 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8*, i8** %275, i64 %279
  %281 = load i8*, i8** %280, align 8
  %282 = load i8*, i8** %19, align 8
  %283 = call %struct.diff_block* @process_diff(i8* %281, i8* %282, %struct.diff_block** %15)
  store %struct.diff_block* %283, %struct.diff_block** %14, align 8
  %284 = load i8**, i8*** %20, align 8
  %285 = load i64, i64* @FILE0, align 8
  %286 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8*, i8** %284, i64 %288
  %290 = load i8*, i8** %289, align 8
  %291 = load i8*, i8** %19, align 8
  %292 = call %struct.diff_block* @process_diff(i8* %290, i8* %291, %struct.diff_block** %15)
  store %struct.diff_block* %292, %struct.diff_block** %13, align 8
  %293 = load %struct.diff_block*, %struct.diff_block** %13, align 8
  %294 = load %struct.diff_block*, %struct.diff_block** %14, align 8
  %295 = call %struct.diff3_block* @make_3way_diff(%struct.diff_block* %293, %struct.diff_block* %294)
  store %struct.diff3_block* %295, %struct.diff3_block** %16, align 8
  %296 = load i32, i32* @edscript, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %310

298:                                              ; preds = %267
  %299 = load i32, i32* @stdout, align 4
  %300 = load %struct.diff3_block*, %struct.diff3_block** %16, align 8
  %301 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %302 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %303 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 0
  %304 = load i8*, i8** %303, align 16
  %305 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 1
  %306 = load i8*, i8** %305, align 8
  %307 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 2
  %308 = load i8*, i8** %307, align 16
  %309 = call i32 @output_diff3_edscript(i32 %299, %struct.diff3_block* %300, i32* %301, i32* %302, i8* %304, i8* %306, i8* %308)
  store i32 %309, i32* %12, align 4
  br label %359

310:                                              ; preds = %267
  %311 = load i32, i32* @merge, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %352

313:                                              ; preds = %310
  %314 = load i8**, i8*** %20, align 8
  %315 = load i64, i64* @FILE0, align 8
  %316 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8*, i8** %314, i64 %318
  %320 = load i8*, i8** %319, align 8
  %321 = load i32, i32* @stdin, align 4
  %322 = call i32 @freopen(i8* %320, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 %321)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %333, label %324

324:                                              ; preds = %313
  %325 = load i8**, i8*** %20, align 8
  %326 = load i64, i64* @FILE0, align 8
  %327 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i8*, i8** %325, i64 %329
  %331 = load i8*, i8** %330, align 8
  %332 = call i32 @perror_with_exit(i8* %331)
  br label %333

333:                                              ; preds = %324, %313
  %334 = load i32, i32* @stdin, align 4
  %335 = load i32, i32* @stdout, align 4
  %336 = load %struct.diff3_block*, %struct.diff3_block** %16, align 8
  %337 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %338 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %339 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 0
  %340 = load i8*, i8** %339, align 16
  %341 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 1
  %342 = load i8*, i8** %341, align 8
  %343 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 2
  %344 = load i8*, i8** %343, align 16
  %345 = call i32 @output_diff3_merge(i32 %334, i32 %335, %struct.diff3_block* %336, i32* %337, i32* %338, i8* %340, i8* %342, i8* %344)
  store i32 %345, i32* %12, align 4
  %346 = load i32, i32* @stdin, align 4
  %347 = call i64 @ferror(i32 %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %351

349:                                              ; preds = %333
  %350 = call i32 @fatal(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  br label %351

351:                                              ; preds = %349, %333
  br label %358

352:                                              ; preds = %310
  %353 = load i32, i32* @stdout, align 4
  %354 = load %struct.diff3_block*, %struct.diff3_block** %16, align 8
  %355 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %356 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %357 = call i32 @output_diff3(i32 %353, %struct.diff3_block* %354, i32* %355, i32* %356)
  store i32 0, i32* %12, align 4
  br label %358

358:                                              ; preds = %352, %351
  br label %359

359:                                              ; preds = %358, %298
  %360 = call i32 (...) @check_stdout()
  %361 = load i32, i32* %12, align 4
  %362 = call i32 @exit(i32 %361) #3
  unreachable

363:                                              ; preds = %70, %61
  %364 = load i32, i32* %3, align 4
  ret i32 %364
}

declare dso_local i32 @initialize_main(i32*, i8***) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @bindtextdomain(i32, i32) #1

declare dso_local i32 @textdomain(i32) #1

declare dso_local i32 @c_stack_action(i32) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32) #1

declare dso_local i32 @version_etc(i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @check_stdout(...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @try_help(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @perror_with_exit(i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @error(i32, i32, i8*, i8*) #1

declare dso_local %struct.diff_block* @process_diff(i8*, i8*, %struct.diff_block**) #1

declare dso_local %struct.diff3_block* @make_3way_diff(%struct.diff_block*, %struct.diff_block*) #1

declare dso_local i32 @output_diff3_edscript(i32, %struct.diff3_block*, i32*, i32*, i8*, i8*, i8*) #1

declare dso_local i32 @freopen(i8*, i8*, i32) #1

declare dso_local i32 @output_diff3_merge(i32, i32, %struct.diff3_block*, i32*, i32*, i8*, i8*, i8*) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i32 @output_diff3(i32, %struct.diff3_block*, i32*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
