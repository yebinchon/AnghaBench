; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fix-header.c_write_rbrac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fix-header.c_write_rbrac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol_list = type { i8*, i32 }
%struct.fn_decl = type { i8*, i8*, i8* }

@required_unseen_count = common dso_local global i64 0, align 8
@symbol_table = common dso_local global %struct.symbol_list* null, align 8
@MACRO_SYMBOL = common dso_local global i32 0, align 4
@ANSI_SYMBOL = common dso_local global i32 0, align 4
@outf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [92 x i8] c"#if defined(__USE_FIXED_PROTOTYPES__) || defined(__cplusplus) || defined (__STRICT_ANSI__)\0A\00", align 1
@POSIX1_SYMBOL = common dso_local global i32 0, align 4
@POSIX2_SYMBOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [188 x i8] c"#if defined(__USE_FIXED_PROTOTYPES__) || (defined(__cplusplus) \\\0A    ? (!defined(__STRICT_ANSI__) || defined(_POSIX_SOURCE)) \\\0A    : (defined(__STRICT_ANSI__) && defined(_POSIX_SOURCE)))\0A\00", align 1
@XOPEN_SYMBOL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [100 x i8] c"#if defined(__USE_FIXED_PROTOTYPES__) \\\0A   || (defined(__STRICT_ANSI__) && defined(_XOPEN_SOURCE))\0A\00", align 1
@XOPEN_EXTENDED_SYMBOL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [109 x i8] c"#if defined(__USE_FIXED_PROTOTYPES__) \\\0A   || (defined(__STRICT_ANSI__) && defined(_XOPEN_EXTENDED_SOURCE))\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"internal error for function %s\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"memmove\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"putc\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"getc\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"vprintf\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"vfprintf\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"vsprintf\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"rewinddir\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"#ifndef %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"extern %s %s (%s);\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"#endif /* defined(__USE_FIXED_PROTOTYPES__) || ... */\0A\00", align 1
@special_file_handling = common dso_local global i32 0, align 4
@seen_errno = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [19 x i8] c"extern int errno;\0A\00", align 1
@seen_EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [24 x i8] c"#define EXIT_FAILURE 1\0A\00", align 1
@seen_EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [24 x i8] c"#define EXIT_SUCCESS 0\0A\00", align 1
@seen_S_ISBLK = common dso_local global i32 0, align 4
@seen_S_IFBLK = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [54 x i8] c"#define S_ISBLK(mode) (((mode) & S_IFMT) == S_IFBLK)\0A\00", align 1
@seen_S_ISCHR = common dso_local global i32 0, align 4
@seen_S_IFCHR = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [54 x i8] c"#define S_ISCHR(mode) (((mode) & S_IFMT) == S_IFCHR)\0A\00", align 1
@seen_S_ISDIR = common dso_local global i32 0, align 4
@seen_S_IFDIR = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [54 x i8] c"#define S_ISDIR(mode) (((mode) & S_IFMT) == S_IFDIR)\0A\00", align 1
@seen_S_ISFIFO = common dso_local global i32 0, align 4
@seen_S_IFIFO = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [55 x i8] c"#define S_ISFIFO(mode) (((mode) & S_IFMT) == S_IFIFO)\0A\00", align 1
@seen_S_ISLNK = common dso_local global i32 0, align 4
@seen_S_IFLNK = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [54 x i8] c"#define S_ISLNK(mode) (((mode) & S_IFMT) == S_IFLNK)\0A\00", align 1
@seen_S_ISREG = common dso_local global i32 0, align 4
@seen_S_IFREG = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [54 x i8] c"#define S_ISREG(mode) (((mode) & S_IFMT) == S_IFREG)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @write_rbrac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_rbrac() #0 {
  %1 = alloca %struct.fn_decl*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.symbol_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i64, i64* @required_unseen_count, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %10

10:                                               ; preds = %9, %0
  %11 = load %struct.symbol_list*, %struct.symbol_list** @symbol_table, align 8
  %12 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %11, i64 0
  store %struct.symbol_list* %12, %struct.symbol_list** %3, align 8
  br label %13

13:                                               ; preds = %188, %10
  %14 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %15 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %191

18:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  %19 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %20 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %2, align 8
  br label %22

22:                                               ; preds = %175, %18
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @strlen(i8* %23)
  store i32 %24, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %181

26:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  %27 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %28 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MACRO_SYMBOL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %175

34:                                               ; preds = %26
  %35 = load i8*, i8** %2, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call %struct.fn_decl* @lookup_std_proto(i8* %35, i32 %36)
  store %struct.fn_decl* %37, %struct.fn_decl** %1, align 8
  %38 = load %struct.fn_decl*, %struct.fn_decl** %1, align 8
  %39 = icmp eq %struct.fn_decl* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %34
  %41 = load %struct.fn_decl*, %struct.fn_decl** %1, align 8
  %42 = call i32 @REQUIRED(%struct.fn_decl* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40, %34
  br label %175

45:                                               ; preds = %40
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %99, label %48

48:                                               ; preds = %45
  %49 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %50 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @ANSI_SYMBOL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = load i32, i32* @outf, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0))
  br label %98

58:                                               ; preds = %48
  %59 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %60 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @POSIX1_SYMBOL, align 4
  %63 = load i32, i32* @POSIX2_SYMBOL, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load i32, i32* @outf, align 4
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([188 x i8], [188 x i8]* @.str.1, i64 0, i64 0))
  br label %97

70:                                               ; preds = %58
  %71 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %72 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @XOPEN_SYMBOL, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load i32, i32* @outf, align 4
  %79 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.2, i64 0, i64 0))
  br label %96

80:                                               ; preds = %70
  %81 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %82 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @XOPEN_EXTENDED_SYMBOL, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i32, i32* @outf, align 4
  %89 = call i32 (i32, i8*, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.3, i64 0, i64 0))
  br label %95

90:                                               ; preds = %80
  %91 = load %struct.fn_decl*, %struct.fn_decl** %1, align 8
  %92 = getelementptr inbounds %struct.fn_decl, %struct.fn_decl* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @fatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %90, %87
  br label %96

96:                                               ; preds = %95, %77
  br label %97

97:                                               ; preds = %96, %67
  br label %98

98:                                               ; preds = %97, %55
  store i32 1, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %45
  %100 = load %struct.fn_decl*, %struct.fn_decl** %1, align 8
  %101 = getelementptr inbounds %struct.fn_decl, %struct.fn_decl* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @strcmp(i8* %102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %147

105:                                              ; preds = %99
  %106 = load %struct.fn_decl*, %struct.fn_decl** %1, align 8
  %107 = getelementptr inbounds %struct.fn_decl, %struct.fn_decl* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @strcmp(i8* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %147

111:                                              ; preds = %105
  %112 = load %struct.fn_decl*, %struct.fn_decl** %1, align 8
  %113 = getelementptr inbounds %struct.fn_decl, %struct.fn_decl* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @strcmp(i8* %114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %147

117:                                              ; preds = %111
  %118 = load %struct.fn_decl*, %struct.fn_decl** %1, align 8
  %119 = getelementptr inbounds %struct.fn_decl, %struct.fn_decl* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @strcmp(i8* %120, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %147

123:                                              ; preds = %117
  %124 = load %struct.fn_decl*, %struct.fn_decl** %1, align 8
  %125 = getelementptr inbounds %struct.fn_decl, %struct.fn_decl* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @strcmp(i8* %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %147

129:                                              ; preds = %123
  %130 = load %struct.fn_decl*, %struct.fn_decl** %1, align 8
  %131 = getelementptr inbounds %struct.fn_decl, %struct.fn_decl* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @strcmp(i8* %132, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %147

135:                                              ; preds = %129
  %136 = load %struct.fn_decl*, %struct.fn_decl** %1, align 8
  %137 = getelementptr inbounds %struct.fn_decl, %struct.fn_decl* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @strcmp(i8* %138, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %135
  %142 = load %struct.fn_decl*, %struct.fn_decl** %1, align 8
  %143 = getelementptr inbounds %struct.fn_decl, %struct.fn_decl* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @strcmp(i8* %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %141, %135, %129, %123, %117, %111, %105, %99
  store i32 1, i32* %6, align 4
  br label %148

148:                                              ; preds = %147, %141
  %149 = load i32, i32* %6, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %148
  %152 = load i32, i32* @outf, align 4
  %153 = load %struct.fn_decl*, %struct.fn_decl** %1, align 8
  %154 = getelementptr inbounds %struct.fn_decl, %struct.fn_decl* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 (i32, i8*, ...) @fprintf(i32 %152, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i8* %155)
  br label %157

157:                                              ; preds = %151, %148
  %158 = load i32, i32* @outf, align 4
  %159 = load %struct.fn_decl*, %struct.fn_decl** %1, align 8
  %160 = getelementptr inbounds %struct.fn_decl, %struct.fn_decl* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.fn_decl*, %struct.fn_decl** %1, align 8
  %163 = getelementptr inbounds %struct.fn_decl, %struct.fn_decl* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.fn_decl*, %struct.fn_decl** %1, align 8
  %166 = getelementptr inbounds %struct.fn_decl, %struct.fn_decl* %165, i32 0, i32 2
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 (i32, i8*, ...) @fprintf(i32 %158, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i8* %161, i8* %164, i8* %167)
  %169 = load i32, i32* %6, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %157
  %172 = load i32, i32* @outf, align 4
  %173 = call i32 (i32, i8*, ...) @fprintf(i32 %172, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  br label %174

174:                                              ; preds = %171, %157
  br label %175

175:                                              ; preds = %174, %44, %33
  %176 = load i32, i32* %5, align 4
  %177 = add nsw i32 %176, 1
  %178 = load i8*, i8** %2, align 8
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i8, i8* %178, i64 %179
  store i8* %180, i8** %2, align 8
  br label %22

181:                                              ; preds = %22
  %182 = load i32, i32* %4, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i32, i32* @outf, align 4
  %186 = call i32 (i32, i8*, ...) @fprintf(i32 %185, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.16, i64 0, i64 0))
  br label %187

187:                                              ; preds = %184, %181
  br label %188

188:                                              ; preds = %187
  %189 = load %struct.symbol_list*, %struct.symbol_list** %3, align 8
  %190 = getelementptr inbounds %struct.symbol_list, %struct.symbol_list* %189, i32 1
  store %struct.symbol_list* %190, %struct.symbol_list** %3, align 8
  br label %13

191:                                              ; preds = %13
  %192 = load i64, i64* @required_unseen_count, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  br label %195

195:                                              ; preds = %194, %191
  %196 = load i32, i32* @special_file_handling, align 4
  switch i32 %196, label %272 [
    i32 130, label %197
    i32 129, label %204
    i32 128, label %217
  ]

197:                                              ; preds = %195
  %198 = load i32, i32* @seen_errno, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* @outf, align 4
  %202 = call i32 (i32, i8*, ...) @fprintf(i32 %201, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  br label %203

203:                                              ; preds = %200, %197
  br label %273

204:                                              ; preds = %195
  %205 = load i32, i32* @seen_EXIT_FAILURE, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = load i32, i32* @outf, align 4
  %209 = call i32 (i32, i8*, ...) @fprintf(i32 %208, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0))
  br label %210

210:                                              ; preds = %207, %204
  %211 = load i32, i32* @seen_EXIT_SUCCESS, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %210
  %214 = load i32, i32* @outf, align 4
  %215 = call i32 (i32, i8*, ...) @fprintf(i32 %214, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0))
  br label %216

216:                                              ; preds = %213, %210
  br label %273

217:                                              ; preds = %195
  %218 = load i32, i32* @seen_S_ISBLK, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %226, label %220

220:                                              ; preds = %217
  %221 = load i32, i32* @seen_S_IFBLK, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load i32, i32* @outf, align 4
  %225 = call i32 (i32, i8*, ...) @fprintf(i32 %224, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i64 0, i64 0))
  br label %226

226:                                              ; preds = %223, %220, %217
  %227 = load i32, i32* @seen_S_ISCHR, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %235, label %229

229:                                              ; preds = %226
  %230 = load i32, i32* @seen_S_IFCHR, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = load i32, i32* @outf, align 4
  %234 = call i32 (i32, i8*, ...) @fprintf(i32 %233, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.21, i64 0, i64 0))
  br label %235

235:                                              ; preds = %232, %229, %226
  %236 = load i32, i32* @seen_S_ISDIR, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %244, label %238

238:                                              ; preds = %235
  %239 = load i32, i32* @seen_S_IFDIR, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %238
  %242 = load i32, i32* @outf, align 4
  %243 = call i32 (i32, i8*, ...) @fprintf(i32 %242, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i64 0, i64 0))
  br label %244

244:                                              ; preds = %241, %238, %235
  %245 = load i32, i32* @seen_S_ISFIFO, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %253, label %247

247:                                              ; preds = %244
  %248 = load i32, i32* @seen_S_IFIFO, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %247
  %251 = load i32, i32* @outf, align 4
  %252 = call i32 (i32, i8*, ...) @fprintf(i32 %251, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.23, i64 0, i64 0))
  br label %253

253:                                              ; preds = %250, %247, %244
  %254 = load i32, i32* @seen_S_ISLNK, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %262, label %256

256:                                              ; preds = %253
  %257 = load i32, i32* @seen_S_IFLNK, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %256
  %260 = load i32, i32* @outf, align 4
  %261 = call i32 (i32, i8*, ...) @fprintf(i32 %260, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.24, i64 0, i64 0))
  br label %262

262:                                              ; preds = %259, %256, %253
  %263 = load i32, i32* @seen_S_ISREG, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %271, label %265

265:                                              ; preds = %262
  %266 = load i32, i32* @seen_S_IFREG, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %265
  %269 = load i32, i32* @outf, align 4
  %270 = call i32 (i32, i8*, ...) @fprintf(i32 %269, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.25, i64 0, i64 0))
  br label %271

271:                                              ; preds = %268, %265, %262
  br label %273

272:                                              ; preds = %195
  br label %273

273:                                              ; preds = %272, %271, %216, %203
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.fn_decl* @lookup_std_proto(i8*, i32) #1

declare dso_local i32 @REQUIRED(%struct.fn_decl*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fatal(i8*, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
