; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_sdiff.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_sdiff.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_filter = type { i32 }

@EXIT_TROUBLE = common dso_local global i32 0, align 4
@exit_failure = common dso_local global i32 0, align 4
@program_name = common dso_local global i8* null, align 8
@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PACKAGE = common dso_local global i32 0, align 4
@LOCALEDIR = common dso_local global i32 0, align 4
@cleanup = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"EDITOR\00", align 1
@editor_program = common dso_local global i8* null, align 8
@DEFAULT_DIFF_PROGRAM = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"abBdEHiI:lo:stvw:W\00", align 1
@longopts = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-B\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-E\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-H\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-I\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [14 x i8] c"--left-column\00", align 1
@output = common dso_local global i8* null, align 8
@suppress_common_lines = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"sdiff\00", align 1
@PACKAGE_NAME = common dso_local global i32 0, align 4
@PACKAGE_VERSION = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"Thomas Lord\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [3 x i8] c"-W\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"-w\00", align 1
@diffargv = common dso_local global i8** null, align 8
@.str.17 = private unnamed_addr constant [20 x i8] c"--strip-trailing-cr\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"--tabsize\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [27 x i8] c"missing operand after `%s'\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"extra operand `%s'\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"--suppress-common-lines\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"-y\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"both files to be compared are directories\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"--sdiff-merge-assist\00", align 1
@errno = common dso_local global i32 0, align 4
@tmpname = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@SIG_DFL = common dso_local global i64 0, align 8
@SIG_IGN = common dso_local global i64 0, align 8
@SIG_SETMASK = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@catchsig = common dso_local global i64 0, align 8
@diffpid = common dso_local global i64 0, align 8
@handler_index_of_SIGINT = common dso_local global i32 0, align 4
@handler_index_of_SIGPIPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.line_filter, align 4
  %16 = alloca %struct.line_filter, align 4
  %17 = alloca %struct.line_filter, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %26 = load i32, i32* @EXIT_TROUBLE, align 4
  store i32 %26, i32* @exit_failure, align 4
  %27 = call i32 @initialize_main(i32* %4, i8*** %5)
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** @program_name, align 8
  %31 = load i32, i32* @LC_ALL, align 4
  %32 = call i32 @setlocale(i32 %31, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @PACKAGE, align 4
  %34 = load i32, i32* @LOCALEDIR, align 4
  %35 = call i32 @bindtextdomain(i32 %33, i32 %34)
  %36 = load i32, i32* @PACKAGE, align 4
  %37 = call i32 @textdomain(i32 %36)
  %38 = load i32, i32* @cleanup, align 4
  %39 = call i32 @c_stack_action(i32 %38)
  %40 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = load i8*, i8** %7, align 8
  store i8* %44, i8** @editor_program, align 8
  br label %45

45:                                               ; preds = %43, %2
  %46 = load i8*, i8** @DEFAULT_DIFF_PROGRAM, align 8
  %47 = call i32 @diffarg(i8* %46)
  br label %48

48:                                               ; preds = %110, %45
  %49 = load i32, i32* %4, align 4
  %50 = load i8**, i8*** %5, align 8
  %51 = load i32, i32* @longopts, align 4
  %52 = call i32 @getopt_long(i32 %49, i8** %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 0)
  store i32 %52, i32* %6, align 4
  %53 = icmp ne i32 %52, -1
  br i1 %53, label %54, label %111

54:                                               ; preds = %48
  %55 = load i32, i32* %6, align 4
  switch i32 %55, label %108 [
    i32 97, label %56
    i32 98, label %58
    i32 66, label %60
    i32 100, label %62
    i32 69, label %64
    i32 72, label %66
    i32 105, label %68
    i32 73, label %70
    i32 108, label %74
    i32 111, label %76
    i32 115, label %78
    i32 116, label %79
    i32 118, label %81
    i32 119, label %88
    i32 87, label %92
    i32 131, label %94
    i32 130, label %98
    i32 129, label %102
    i32 128, label %104
  ]

56:                                               ; preds = %54
  %57 = call i32 @diffarg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %110

58:                                               ; preds = %54
  %59 = call i32 @diffarg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %110

60:                                               ; preds = %54
  %61 = call i32 @diffarg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %110

62:                                               ; preds = %54
  %63 = call i32 @diffarg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %110

64:                                               ; preds = %54
  %65 = call i32 @diffarg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %110

66:                                               ; preds = %54
  %67 = call i32 @diffarg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %110

68:                                               ; preds = %54
  %69 = call i32 @diffarg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %110

70:                                               ; preds = %54
  %71 = call i32 @diffarg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %72 = load i8*, i8** @optarg, align 8
  %73 = call i32 @diffarg(i8* %72)
  br label %110

74:                                               ; preds = %54
  %75 = call i32 @diffarg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  br label %110

76:                                               ; preds = %54
  %77 = load i8*, i8** @optarg, align 8
  store i8* %77, i8** @output, align 8
  br label %110

78:                                               ; preds = %54
  store i32 1, i32* @suppress_common_lines, align 4
  br label %110

79:                                               ; preds = %54
  %80 = call i32 @diffarg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  br label %110

81:                                               ; preds = %54
  %82 = load i32, i32* @stdout, align 4
  %83 = load i32, i32* @PACKAGE_NAME, align 4
  %84 = load i32, i32* @PACKAGE_VERSION, align 4
  %85 = call i32 @version_etc(i32 %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %83, i32 %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i8* null)
  %86 = call i32 (...) @check_stdout()
  %87 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %87, i32* %3, align 4
  br label %348

88:                                               ; preds = %54
  %89 = call i32 @diffarg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %90 = load i8*, i8** @optarg, align 8
  %91 = call i32 @diffarg(i8* %90)
  br label %110

92:                                               ; preds = %54
  %93 = call i32 @diffarg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0))
  br label %110

94:                                               ; preds = %54
  %95 = load i8*, i8** @optarg, align 8
  %96 = load i8**, i8*** @diffargv, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 0
  store i8* %95, i8** %97, align 8
  br label %110

98:                                               ; preds = %54
  %99 = call i32 (...) @usage()
  %100 = call i32 (...) @check_stdout()
  %101 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %101, i32* %3, align 4
  br label %348

102:                                              ; preds = %54
  %103 = call i32 @diffarg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  br label %110

104:                                              ; preds = %54
  %105 = call i32 @diffarg(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  %106 = load i8*, i8** @optarg, align 8
  %107 = call i32 @diffarg(i8* %106)
  br label %110

108:                                              ; preds = %54
  %109 = call i32 @try_help(i8* null, i8* null)
  br label %110

110:                                              ; preds = %108, %104, %102, %94, %92, %88, %79, %78, %76, %74, %70, %68, %66, %64, %62, %60, %58, %56
  br label %48

111:                                              ; preds = %48
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @optind, align 4
  %114 = sub nsw i32 %112, %113
  %115 = icmp ne i32 %114, 2
  br i1 %115, label %116, label %138

116:                                              ; preds = %111
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @optind, align 4
  %119 = sub nsw i32 %117, %118
  %120 = icmp slt i32 %119, 2
  br i1 %120, label %121, label %129

121:                                              ; preds = %116
  %122 = load i8**, i8*** %5, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %122, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @try_help(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), i8* %127)
  br label %137

129:                                              ; preds = %116
  %130 = load i8**, i8*** %5, align 8
  %131 = load i32, i32* @optind, align 4
  %132 = add nsw i32 %131, 2
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %130, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @try_help(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i8* %135)
  br label %137

137:                                              ; preds = %129, %121
  br label %138

138:                                              ; preds = %137, %111
  %139 = load i8*, i8** @output, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %172, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* @suppress_common_lines, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = call i32 @diffarg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %141
  %147 = call i32 @diffarg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  %148 = call i32 @diffarg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  %149 = load i8**, i8*** %5, align 8
  %150 = load i32, i32* @optind, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @diffarg(i8* %153)
  %155 = load i8**, i8*** %5, align 8
  %156 = load i32, i32* @optind, align 4
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %155, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @diffarg(i8* %160)
  %162 = call i32 @diffarg(i8* null)
  %163 = load i8**, i8*** @diffargv, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 0
  %165 = load i8*, i8** %164, align 8
  %166 = load i8**, i8*** @diffargv, align 8
  %167 = call i32 @execvp(i8* %165, i8** %166)
  %168 = load i8**, i8*** @diffargv, align 8
  %169 = getelementptr inbounds i8*, i8** %168, i64 0
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 @perror_fatal(i8* %170)
  br label %346

172:                                              ; preds = %138
  %173 = load i8**, i8*** %5, align 8
  %174 = load i32, i32* @optind, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %173, i64 %175
  %177 = load i8*, i8** %176, align 8
  %178 = call i32 @diraccess(i8* %177)
  store i32 %178, i32* %18, align 4
  %179 = load i8**, i8*** %5, align 8
  %180 = load i32, i32* @optind, align 4
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8*, i8** %179, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @diraccess(i8* %184)
  store i32 %185, i32* %19, align 4
  %186 = load i32, i32* %18, align 4
  %187 = load i32, i32* %19, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %172
  %191 = call i32 @fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i64 0, i64 0))
  br label %192

192:                                              ; preds = %190, %172
  %193 = load i8**, i8*** %5, align 8
  %194 = load i32, i32* @optind, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8*, i8** %193, i64 %195
  %197 = load i8*, i8** %196, align 8
  %198 = load i32, i32* %18, align 4
  %199 = load i8**, i8*** %5, align 8
  %200 = load i32, i32* @optind, align 4
  %201 = add nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8*, i8** %199, i64 %202
  %204 = load i8*, i8** %203, align 8
  %205 = call i8* @expand_name(i8* %197, i32 %198, i8* %204)
  store i8* %205, i8** %8, align 8
  %206 = load i8*, i8** %8, align 8
  %207 = call i32* @ck_fopen(i8* %206, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  store i32* %207, i32** %10, align 8
  %208 = load i8**, i8*** %5, align 8
  %209 = load i32, i32* @optind, align 4
  %210 = add nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8*, i8** %208, i64 %211
  %213 = load i8*, i8** %212, align 8
  %214 = load i32, i32* %19, align 4
  %215 = load i8**, i8*** %5, align 8
  %216 = load i32, i32* @optind, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8*, i8** %215, i64 %217
  %219 = load i8*, i8** %218, align 8
  %220 = call i8* @expand_name(i8* %213, i32 %214, i8* %219)
  store i8* %220, i8** %9, align 8
  %221 = load i8*, i8** %9, align 8
  %222 = call i32* @ck_fopen(i8* %221, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  store i32* %222, i32** %11, align 8
  %223 = load i8*, i8** @output, align 8
  %224 = call i32* @ck_fopen(i8* %223, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  store i32* %224, i32** %12, align 8
  %225 = call i32 @diffarg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0))
  %226 = call i32 @diffarg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  %227 = load i8**, i8*** %5, align 8
  %228 = load i32, i32* @optind, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8*, i8** %227, i64 %229
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 @diffarg(i8* %231)
  %233 = load i8**, i8*** %5, align 8
  %234 = load i32, i32* @optind, align 4
  %235 = add nsw i32 %234, 1
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8*, i8** %233, i64 %236
  %238 = load i8*, i8** %237, align 8
  %239 = call i32 @diffarg(i8* %238)
  %240 = call i32 @diffarg(i8* null)
  %241 = call i32 (...) @trapsigs()
  store i64 1, i64* %20, align 8
  store i32 0, i32* %23, align 4
  br label %242

242:                                              ; preds = %259, %192
  %243 = load i8**, i8*** @diffargv, align 8
  %244 = load i32, i32* %23, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8*, i8** %243, i64 %245
  %247 = load i8*, i8** %246, align 8
  %248 = icmp ne i8* %247, null
  br i1 %248, label %249, label %262

249:                                              ; preds = %242
  %250 = load i8**, i8*** @diffargv, align 8
  %251 = load i32, i32* %23, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i8*, i8** %250, i64 %252
  %254 = load i8*, i8** %253, align 8
  %255 = call i64 @quote_system_arg(i8* null, i8* %254)
  %256 = add nsw i64 %255, 1
  %257 = load i64, i64* %20, align 8
  %258 = add i64 %257, %256
  store i64 %258, i64* %20, align 8
  br label %259

259:                                              ; preds = %249
  %260 = load i32, i32* %23, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %23, align 4
  br label %242

262:                                              ; preds = %242
  %263 = load i64, i64* %20, align 8
  %264 = call i8* @xmalloc(i64 %263)
  store i8* %264, i8** %21, align 8
  store i8* %264, i8** %22, align 8
  store i32 0, i32* %23, align 4
  br label %265

265:                                              ; preds = %284, %262
  %266 = load i8**, i8*** @diffargv, align 8
  %267 = load i32, i32* %23, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8*, i8** %266, i64 %268
  %270 = load i8*, i8** %269, align 8
  %271 = icmp ne i8* %270, null
  br i1 %271, label %272, label %287

272:                                              ; preds = %265
  %273 = load i8*, i8** %21, align 8
  %274 = load i8**, i8*** @diffargv, align 8
  %275 = load i32, i32* %23, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8*, i8** %274, i64 %276
  %278 = load i8*, i8** %277, align 8
  %279 = call i64 @quote_system_arg(i8* %273, i8* %278)
  %280 = load i8*, i8** %21, align 8
  %281 = getelementptr inbounds i8, i8* %280, i64 %279
  store i8* %281, i8** %21, align 8
  %282 = load i8*, i8** %21, align 8
  %283 = getelementptr inbounds i8, i8* %282, i32 1
  store i8* %283, i8** %21, align 8
  store i8 32, i8* %282, align 1
  br label %284

284:                                              ; preds = %272
  %285 = load i32, i32* %23, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %23, align 4
  br label %265

287:                                              ; preds = %265
  %288 = load i8*, i8** %21, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 -1
  store i8 0, i8* %289, align 1
  store i32 0, i32* @errno, align 4
  %290 = load i8*, i8** %22, align 8
  %291 = call i32* @popen(i8* %290, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  store i32* %291, i32** %13, align 8
  %292 = load i32*, i32** %13, align 8
  %293 = icmp ne i32* %292, null
  br i1 %293, label %297, label %294

294:                                              ; preds = %287
  %295 = load i8*, i8** %22, align 8
  %296 = call i32 @perror_fatal(i8* %295)
  br label %297

297:                                              ; preds = %294, %287
  %298 = load i8*, i8** %22, align 8
  %299 = call i32 @free(i8* %298)
  %300 = load i32*, i32** %13, align 8
  %301 = call i32 @lf_init(%struct.line_filter* %17, i32* %300)
  %302 = load i32*, i32** %10, align 8
  %303 = call i32 @lf_init(%struct.line_filter* %15, i32* %302)
  %304 = load i32*, i32** %11, align 8
  %305 = call i32 @lf_init(%struct.line_filter* %16, i32* %304)
  %306 = load i8*, i8** %8, align 8
  %307 = load i8*, i8** %9, align 8
  %308 = load i32*, i32** %12, align 8
  %309 = call i32 @interact(%struct.line_filter* %17, %struct.line_filter* %15, i8* %306, %struct.line_filter* %16, i8* %307, i32* %308)
  store i32 %309, i32* %14, align 4
  %310 = load i32*, i32** %10, align 8
  %311 = call i32 @ck_fclose(i32* %310)
  %312 = load i32*, i32** %11, align 8
  %313 = call i32 @ck_fclose(i32* %312)
  %314 = load i32*, i32** %12, align 8
  %315 = call i32 @ck_fclose(i32* %314)
  store i32 0, i32* %25, align 4
  %316 = load i32*, i32** %13, align 8
  %317 = call i32 @pclose(i32* %316)
  store i32 %317, i32* %24, align 4
  %318 = load i32, i32* %24, align 4
  %319 = icmp eq i32 %318, -1
  br i1 %319, label %320, label %322

320:                                              ; preds = %297
  %321 = load i32, i32* @errno, align 4
  store i32 %321, i32* %25, align 4
  br label %322

322:                                              ; preds = %320, %297
  %323 = load i64, i64* @tmpname, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %322
  %326 = load i64, i64* @tmpname, align 8
  %327 = call i32 @unlink(i64 %326)
  store i64 0, i64* @tmpname, align 8
  br label %328

328:                                              ; preds = %325, %322
  %329 = load i32, i32* %14, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %333, label %331

331:                                              ; preds = %328
  %332 = call i32 (...) @exiterr()
  br label %333

333:                                              ; preds = %331, %328
  %334 = load i32, i32* %25, align 4
  %335 = load i32, i32* %24, align 4
  %336 = load i32, i32* @EXIT_FAILURE, align 4
  %337 = load i8**, i8*** @diffargv, align 8
  %338 = getelementptr inbounds i8*, i8** %337, i64 0
  %339 = load i8*, i8** %338, align 8
  %340 = call i32 @check_child_status(i32 %334, i32 %335, i32 %336, i8* %339)
  %341 = call i32 @untrapsig(i32 0)
  %342 = call i32 (...) @checksigs()
  %343 = load i32, i32* %24, align 4
  %344 = call i32 @WEXITSTATUS(i32 %343)
  %345 = call i32 @exit(i32 %344) #3
  unreachable

346:                                              ; preds = %146
  %347 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %347, i32* %3, align 4
  br label %348

348:                                              ; preds = %346, %98, %81
  %349 = load i32, i32* %3, align 4
  ret i32 %349
}

declare dso_local i32 @initialize_main(i32*, i8***) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @bindtextdomain(i32, i32) #1

declare dso_local i32 @textdomain(i32) #1

declare dso_local i32 @c_stack_action(i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @diffarg(i8*) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32) #1

declare dso_local i32 @version_etc(i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @check_stdout(...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @try_help(i8*, i8*) #1

declare dso_local i32 @execvp(i8*, i8**) #1

declare dso_local i32 @perror_fatal(i8*) #1

declare dso_local i32 @diraccess(i8*) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i8* @expand_name(i8*, i32, i8*) #1

declare dso_local i32* @ck_fopen(i8*, i8*) #1

declare dso_local i32 @trapsigs(...) #1

declare dso_local i64 @quote_system_arg(i8*, i8*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32* @popen(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @lf_init(%struct.line_filter*, i32*) #1

declare dso_local i32 @interact(%struct.line_filter*, %struct.line_filter*, i8*, %struct.line_filter*, i8*, i32*) #1

declare dso_local i32 @ck_fclose(i32*) #1

declare dso_local i32 @pclose(i32*) #1

declare dso_local i32 @unlink(i64) #1

declare dso_local i32 @exiterr(...) #1

declare dso_local i32 @check_child_status(i32, i32, i32, i8*) #1

declare dso_local i32 @untrapsig(i32) #1

declare dso_local i32 @checksigs(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
