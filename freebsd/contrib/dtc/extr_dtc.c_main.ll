; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dtc/extr_dtc.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dtc/extr_dtc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dt_info = type { i8*, i64, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@DEFAULT_FDT_VERSION = common dso_local global i32 0, align 4
@quiet = common dso_local global i64 0, align 8
@reservenum = common dso_local global i8* null, align 8
@minsize = common dso_local global i8* null, align 8
@padsize = common dso_local global i8* null, align 8
@alignsize = common dso_local global i8* null, align 8
@EOF = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Invalid argument \22%d\22 to -a option\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"legacy\00", align 1
@PHANDLE_LEGACY = common dso_local global i32 0, align 4
@phandle_format = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"epapr\00", align 1
@PHANDLE_EPAPR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@PHANDLE_BOTH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Invalid argument \22%s\22 to -H option\0A\00", align 1
@generate_symbols = common dso_local global i32 0, align 4
@auto_label_aliases = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"unknown option\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"missing files\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Can't set both -p and -S\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@depfile = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [38 x i8] c"Couldn't open dependency file %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"dts\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"dtb\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Unknown input format \22%s\22\0A\00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DTSF_PLUGIN = common dso_local global i32 0, align 4
@generate_fixups = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [8 x i8] c"aliases\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"__symbols__\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"__fixups__\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"__local_fixups__\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.21 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"Couldn't open output file %s: %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"asm\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.25 = private unnamed_addr constant [28 x i8] c"Unknown output format \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.dt_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32* null, i32** %15, align 8
  %18 = load i32, i32* @DEFAULT_FDT_VERSION, align 4
  store i32 %18, i32* %16, align 4
  store i64 -1, i64* %17, align 8
  store i64 0, i64* @quiet, align 8
  store i8* null, i8** @reservenum, align 8
  store i8* null, i8** @minsize, align 8
  store i8* null, i8** @padsize, align 8
  store i8* null, i8** @alignsize, align 8
  br label %19

19:                                               ; preds = %105, %2
  %20 = call i32 (...) @util_getopt_long()
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* @EOF, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %106

23:                                               ; preds = %19
  %24 = load i32, i32* %14, align 4
  switch i32 %24, label %103 [
    i32 73, label %25
    i32 79, label %27
    i32 111, label %29
    i32 86, label %31
    i32 100, label %35
    i32 82, label %37
    i32 83, label %40
    i32 112, label %43
    i32 97, label %46
    i32 102, label %56
    i32 113, label %57
    i32 98, label %60
    i32 105, label %63
    i32 118, label %66
    i32 72, label %68
    i32 115, label %92
    i32 87, label %93
    i32 69, label %96
    i32 64, label %99
    i32 65, label %100
    i32 104, label %101
  ]

25:                                               ; preds = %23
  %26 = load i8*, i8** @optarg, align 8
  store i8* %26, i8** %7, align 8
  br label %105

27:                                               ; preds = %23
  %28 = load i8*, i8** @optarg, align 8
  store i8* %28, i8** %8, align 8
  br label %105

29:                                               ; preds = %23
  %30 = load i8*, i8** @optarg, align 8
  store i8* %30, i8** %9, align 8
  br label %105

31:                                               ; preds = %23
  %32 = load i8*, i8** @optarg, align 8
  %33 = call i8* @strtol(i8* %32, i32* null, i32 0)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %16, align 4
  br label %105

35:                                               ; preds = %23
  %36 = load i8*, i8** @optarg, align 8
  store i8* %36, i8** %10, align 8
  br label %105

37:                                               ; preds = %23
  %38 = load i8*, i8** @optarg, align 8
  %39 = call i8* @strtol(i8* %38, i32* null, i32 0)
  store i8* %39, i8** @reservenum, align 8
  br label %105

40:                                               ; preds = %23
  %41 = load i8*, i8** @optarg, align 8
  %42 = call i8* @strtol(i8* %41, i32* null, i32 0)
  store i8* %42, i8** @minsize, align 8
  br label %105

43:                                               ; preds = %23
  %44 = load i8*, i8** @optarg, align 8
  %45 = call i8* @strtol(i8* %44, i32* null, i32 0)
  store i8* %45, i8** @padsize, align 8
  br label %105

46:                                               ; preds = %23
  %47 = load i8*, i8** @optarg, align 8
  %48 = call i8* @strtol(i8* %47, i32* null, i32 0)
  store i8* %48, i8** @alignsize, align 8
  %49 = load i8*, i8** @alignsize, align 8
  %50 = call i32 @is_power_of_2(i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load i8*, i8** @alignsize, align 8
  %54 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  br label %55

55:                                               ; preds = %52, %46
  br label %105

56:                                               ; preds = %23
  store i32 1, i32* %11, align 4
  br label %105

57:                                               ; preds = %23
  %58 = load i64, i64* @quiet, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* @quiet, align 8
  br label %105

60:                                               ; preds = %23
  %61 = load i8*, i8** @optarg, align 8
  %62 = call i64 @strtoll(i8* %61, i32* null, i32 0)
  store i64 %62, i64* %17, align 8
  br label %105

63:                                               ; preds = %23
  %64 = load i8*, i8** @optarg, align 8
  %65 = call i32 @srcfile_add_search_path(i8* %64)
  br label %105

66:                                               ; preds = %23
  %67 = call i32 (...) @util_version()
  br label %68

68:                                               ; preds = %23, %66
  %69 = load i8*, i8** @optarg, align 8
  %70 = call i64 @streq(i8* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @PHANDLE_LEGACY, align 4
  store i32 %73, i32* @phandle_format, align 4
  br label %91

74:                                               ; preds = %68
  %75 = load i8*, i8** @optarg, align 8
  %76 = call i64 @streq(i8* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* @PHANDLE_EPAPR, align 4
  store i32 %79, i32* @phandle_format, align 4
  br label %90

80:                                               ; preds = %74
  %81 = load i8*, i8** @optarg, align 8
  %82 = call i64 @streq(i8* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* @PHANDLE_BOTH, align 4
  store i32 %85, i32* @phandle_format, align 4
  br label %89

86:                                               ; preds = %80
  %87 = load i8*, i8** @optarg, align 8
  %88 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %86, %84
  br label %90

90:                                               ; preds = %89, %78
  br label %91

91:                                               ; preds = %90, %72
  br label %105

92:                                               ; preds = %23
  store i32 1, i32* %12, align 4
  br label %105

93:                                               ; preds = %23
  %94 = load i8*, i8** @optarg, align 8
  %95 = call i32 @parse_checks_option(i32 1, i32 0, i8* %94)
  br label %105

96:                                               ; preds = %23
  %97 = load i8*, i8** @optarg, align 8
  %98 = call i32 @parse_checks_option(i32 0, i32 1, i8* %97)
  br label %105

99:                                               ; preds = %23
  store i32 1, i32* @generate_symbols, align 4
  br label %105

100:                                              ; preds = %23
  store i32 1, i32* @auto_label_aliases, align 4
  br label %105

101:                                              ; preds = %23
  %102 = call i32 @usage(i8* null)
  br label %103

103:                                              ; preds = %23, %101
  %104 = call i32 @usage(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %100, %99, %96, %93, %92, %91, %63, %60, %57, %56, %55, %43, %40, %37, %35, %31, %29, %27, %25
  br label %19

106:                                              ; preds = %19
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @optind, align 4
  %109 = add nsw i32 %108, 1
  %110 = icmp sgt i32 %107, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = call i32 @usage(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %126

113:                                              ; preds = %106
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @optind, align 4
  %116 = add nsw i32 %115, 1
  %117 = icmp slt i32 %114, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %125

119:                                              ; preds = %113
  %120 = load i8**, i8*** %5, align 8
  %121 = load i32, i32* @optind, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  %124 = load i8*, i8** %123, align 8
  store i8* %124, i8** %13, align 8
  br label %125

125:                                              ; preds = %119, %118
  br label %126

126:                                              ; preds = %125, %111
  %127 = load i8*, i8** @minsize, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load i8*, i8** @padsize, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132, %129, %126
  %135 = load i8*, i8** %10, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %151

137:                                              ; preds = %134
  %138 = load i8*, i8** %10, align 8
  %139 = call i8* @fopen(i8* %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store i8* %139, i8** @depfile, align 8
  %140 = load i8*, i8** @depfile, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %147, label %142

142:                                              ; preds = %137
  %143 = load i8*, i8** %10, align 8
  %144 = load i32, i32* @errno, align 4
  %145 = call i32 @strerror(i32 %144)
  %146 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* %143, i32 %145)
  br label %147

147:                                              ; preds = %142, %137
  %148 = load i8*, i8** @depfile, align 8
  %149 = load i8*, i8** %9, align 8
  %150 = call i32 @fprintf(i8* %148, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %149)
  br label %151

151:                                              ; preds = %147, %134
  %152 = load i8*, i8** %7, align 8
  %153 = icmp eq i8* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i8*, i8** %13, align 8
  %156 = call i8* @guess_input_format(i8* %155, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  store i8* %156, i8** %7, align 8
  br label %157

157:                                              ; preds = %154, %151
  %158 = load i8*, i8** %8, align 8
  %159 = icmp eq i8* %158, null
  br i1 %159, label %160, label %173

160:                                              ; preds = %157
  %161 = load i8*, i8** %9, align 8
  %162 = call i8* @guess_type_by_name(i8* %161, i32* null)
  store i8* %162, i8** %8, align 8
  %163 = load i8*, i8** %8, align 8
  %164 = icmp eq i8* %163, null
  br i1 %164, label %165, label %172

165:                                              ; preds = %160
  %166 = load i8*, i8** %7, align 8
  %167 = call i64 @streq(i8* %166, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8** %8, align 8
  br label %171

170:                                              ; preds = %165
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8** %8, align 8
  br label %171

171:                                              ; preds = %170, %169
  br label %172

172:                                              ; preds = %171, %160
  br label %173

173:                                              ; preds = %172, %157
  %174 = load i8*, i8** %7, align 8
  %175 = call i64 @streq(i8* %174, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load i8*, i8** %13, align 8
  %179 = call %struct.dt_info* @dt_from_source(i8* %178)
  store %struct.dt_info* %179, %struct.dt_info** %6, align 8
  br label %199

180:                                              ; preds = %173
  %181 = load i8*, i8** %7, align 8
  %182 = call i64 @streq(i8* %181, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = load i8*, i8** %13, align 8
  %186 = call %struct.dt_info* @dt_from_fs(i8* %185)
  store %struct.dt_info* %186, %struct.dt_info** %6, align 8
  br label %198

187:                                              ; preds = %180
  %188 = load i8*, i8** %7, align 8
  %189 = call i64 @streq(i8* %188, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %187
  %192 = load i8*, i8** %13, align 8
  %193 = call %struct.dt_info* @dt_from_blob(i8* %192)
  store %struct.dt_info* %193, %struct.dt_info** %6, align 8
  br label %197

194:                                              ; preds = %187
  %195 = load i8*, i8** %7, align 8
  %196 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i8* %195)
  br label %197

197:                                              ; preds = %194, %191
  br label %198

198:                                              ; preds = %197, %184
  br label %199

199:                                              ; preds = %198, %177
  %200 = load i8*, i8** %9, align 8
  %201 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %202 = getelementptr inbounds %struct.dt_info, %struct.dt_info* %201, i32 0, i32 0
  store i8* %200, i8** %202, align 8
  %203 = load i8*, i8** @depfile, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %210

205:                                              ; preds = %199
  %206 = load i8*, i8** @depfile, align 8
  %207 = call i32 @fputc(i8 signext 10, i8* %206)
  %208 = load i8*, i8** @depfile, align 8
  %209 = call i32 @fclose(i8* %208)
  br label %210

210:                                              ; preds = %205, %199
  %211 = load i64, i64* %17, align 8
  %212 = icmp ne i64 %211, -1
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = load i64, i64* %17, align 8
  %215 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %216 = getelementptr inbounds %struct.dt_info, %struct.dt_info* %215, i32 0, i32 1
  store i64 %214, i64* %216, align 8
  br label %217

217:                                              ; preds = %213, %210
  %218 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %219 = getelementptr inbounds %struct.dt_info, %struct.dt_info* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @fill_fullpaths(i32 %220, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i64 0, i64 0))
  %222 = load i32, i32* %11, align 4
  %223 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %224 = call i32 @process_checks(i32 %222, %struct.dt_info* %223)
  %225 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %226 = getelementptr inbounds %struct.dt_info, %struct.dt_info* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @DTSF_PLUGIN, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %217
  store i32 1, i32* @generate_fixups, align 4
  br label %232

232:                                              ; preds = %231, %217
  %233 = load i32, i32* @auto_label_aliases, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %232
  %236 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %237 = call i32 @generate_label_tree(%struct.dt_info* %236, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i32 0)
  br label %238

238:                                              ; preds = %235, %232
  %239 = load i32, i32* @generate_symbols, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %238
  %242 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %243 = call i32 @generate_label_tree(%struct.dt_info* %242, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 1)
  br label %244

244:                                              ; preds = %241, %238
  %245 = load i32, i32* @generate_fixups, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %252

247:                                              ; preds = %244
  %248 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %249 = call i32 @generate_fixups_tree(%struct.dt_info* %248, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0))
  %250 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %251 = call i32 @generate_local_fixups_tree(%struct.dt_info* %250, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0))
  br label %252

252:                                              ; preds = %247, %244
  %253 = load i32, i32* %12, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %252
  %256 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %257 = call i32 @sort_tree(%struct.dt_info* %256)
  br label %258

258:                                              ; preds = %255, %252
  %259 = load i8*, i8** %9, align 8
  %260 = call i64 @streq(i8* %259, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %258
  %263 = load i32*, i32** @stdout, align 8
  store i32* %263, i32** %15, align 8
  br label %276

264:                                              ; preds = %258
  %265 = load i8*, i8** %9, align 8
  %266 = call i8* @fopen(i8* %265, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0))
  %267 = bitcast i8* %266 to i32*
  store i32* %267, i32** %15, align 8
  %268 = load i32*, i32** %15, align 8
  %269 = icmp ne i32* %268, null
  br i1 %269, label %275, label %270

270:                                              ; preds = %264
  %271 = load i8*, i8** %9, align 8
  %272 = load i32, i32* @errno, align 4
  %273 = call i32 @strerror(i32 %272)
  %274 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0), i8* %271, i32 %273)
  br label %275

275:                                              ; preds = %270, %264
  br label %276

276:                                              ; preds = %275, %262
  %277 = load i8*, i8** %8, align 8
  %278 = call i64 @streq(i8* %277, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %276
  %281 = load i32*, i32** %15, align 8
  %282 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %283 = call i32 @dt_to_source(i32* %281, %struct.dt_info* %282)
  br label %313

284:                                              ; preds = %276
  %285 = load i8*, i8** %8, align 8
  %286 = call i64 @streq(i8* %285, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %284
  %289 = load i32*, i32** %15, align 8
  %290 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %291 = load i32, i32* %16, align 4
  %292 = call i32 @dt_to_blob(i32* %289, %struct.dt_info* %290, i32 %291)
  br label %312

293:                                              ; preds = %284
  %294 = load i8*, i8** %8, align 8
  %295 = call i64 @streq(i8* %294, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0))
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %302

297:                                              ; preds = %293
  %298 = load i32*, i32** %15, align 8
  %299 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %300 = load i32, i32* %16, align 4
  %301 = call i32 @dt_to_asm(i32* %298, %struct.dt_info* %299, i32 %300)
  br label %311

302:                                              ; preds = %293
  %303 = load i8*, i8** %8, align 8
  %304 = call i64 @streq(i8* %303, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0))
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %302
  br label %310

307:                                              ; preds = %302
  %308 = load i8*, i8** %8, align 8
  %309 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0), i8* %308)
  br label %310

310:                                              ; preds = %307, %306
  br label %311

311:                                              ; preds = %310, %297
  br label %312

312:                                              ; preds = %311, %288
  br label %313

313:                                              ; preds = %312, %280
  %314 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @util_getopt_long(...) #1

declare dso_local i8* @strtol(i8*, i32*, i32) #1

declare dso_local i32 @is_power_of_2(i8*) #1

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i64 @strtoll(i8*, i32*, i32) #1

declare dso_local i32 @srcfile_add_search_path(i8*) #1

declare dso_local i32 @util_version(...) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @parse_checks_option(i32, i32, i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i8* @fopen(i8*, i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @fprintf(i8*, i8*, i8*) #1

declare dso_local i8* @guess_input_format(i8*, i8*) #1

declare dso_local i8* @guess_type_by_name(i8*, i32*) #1

declare dso_local %struct.dt_info* @dt_from_source(i8*) #1

declare dso_local %struct.dt_info* @dt_from_fs(i8*) #1

declare dso_local %struct.dt_info* @dt_from_blob(i8*) #1

declare dso_local i32 @fputc(i8 signext, i8*) #1

declare dso_local i32 @fclose(i8*) #1

declare dso_local i32 @fill_fullpaths(i32, i8*) #1

declare dso_local i32 @process_checks(i32, %struct.dt_info*) #1

declare dso_local i32 @generate_label_tree(%struct.dt_info*, i8*, i32) #1

declare dso_local i32 @generate_fixups_tree(%struct.dt_info*, i8*) #1

declare dso_local i32 @generate_local_fixups_tree(%struct.dt_info*, i8*) #1

declare dso_local i32 @sort_tree(%struct.dt_info*) #1

declare dso_local i32 @dt_to_source(i32*, %struct.dt_info*) #1

declare dso_local i32 @dt_to_blob(i32*, %struct.dt_info*, i32) #1

declare dso_local i32 @dt_to_asm(i32*, %struct.dt_info*, i32) #1

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
