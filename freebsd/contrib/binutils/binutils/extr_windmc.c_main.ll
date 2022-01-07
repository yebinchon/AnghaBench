; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_windmc.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_windmc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PACKAGE = common dso_local global i32 0, align 4
@LOCALEDIR = common dso_local global i32 0, align 4
@program_name = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"C:F:O:h:e:m:r:x:aAbcdHunoUvV\00", align 1
@long_options = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@mcset_prefix_bin = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@mcset_header_ext = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c".%s\00", align 1
@mcset_header_dir = common dso_local global i32* null, align 8
@mcset_rc_dir = common dso_local global i32* null, align 8
@mcset_text_in_is_unicode = common dso_local global i32 0, align 4
@mcset_dbg_dir = common dso_local global i32* null, align 8
@mcset_bin_out_is_unicode = common dso_local global i32 0, align 4
@mcset_out_values_are_decimal = common dso_local global i32 0, align 4
@mcset_custom_bit = common dso_local global i32 0, align 4
@mcset_automatic_null_termination = common dso_local global i32 0, align 4
@mcset_use_hresult = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"option -o is not implemented until yet.\0A\00", align 1
@mcset_max_message_length = common dso_local global i8* null, align 8
@mcset_codepage_in = common dso_local global i8* null, align 8
@mcset_codepage_out = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"windmc\00", align 1
@stderr = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Error: No input file was specified.\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"codepage_in\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Code page 0x%x is unknown.\00", align 1
@CP_UTF16 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"UTF16 is no valid text output code page.\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"// Default target is %s and it is %s endian.\0A\00", align 1
@def_target_arch = common dso_local global i8* null, align 8
@target_is_bigendian = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"big\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"little\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"// Input codepage: 0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"// Output codepage: 0x%x\0A\00", align 1
@mcset_mc_basename = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"unable to open file ,%s' for input.\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [34 x i8] c"Failed to convert input to UFT16\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"input file does not seems to be UFT16.\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c".rc\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c".dbg\00", align 1
@mc_nodes_lang = common dso_local global i8* null, align 8
@mc_severity_codes = common dso_local global i8* null, align 8
@mc_facility_codes = common dso_local global i8* null, align 8
@LC_CTYPE = common dso_local global i32 0, align 4
@LC_MESSAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
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
  %31 = call i32 (...) @bfd_init()
  %32 = call i32 (...) @set_default_bfd_target()
  store i8* null, i8** %8, align 8
  store i32 0, i32* %10, align 4
  store i8* null, i8** %9, align 8
  %33 = call i32 (...) @res_init()
  br label %34

34:                                               ; preds = %114, %2
  %35 = load i32, i32* %4, align 4
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32, i32* @long_options, align 4
  %38 = call i32 @getopt_long(i32 %35, i8** %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %37, i32* null)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @EOF, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %115

41:                                               ; preds = %34
  %42 = load i32, i32* %7, align 4
  switch i32 %42, label %111 [
    i32 98, label %43
    i32 101, label %44
    i32 104, label %67
    i32 114, label %70
    i32 97, label %73
    i32 120, label %74
    i32 65, label %83
    i32 100, label %84
    i32 117, label %85
    i32 85, label %86
    i32 99, label %87
    i32 110, label %88
    i32 111, label %89
    i32 70, label %91
    i32 118, label %93
    i32 109, label %96
    i32 67, label %99
    i32 79, label %102
    i32 63, label %106
    i32 72, label %106
    i32 86, label %109
  ]

43:                                               ; preds = %41
  store i32 1, i32* @mcset_prefix_bin, align 4
  br label %114

44:                                               ; preds = %41
  %45 = load i8*, i8** @optarg, align 8
  store i8* %45, i8** @mcset_header_ext, align 8
  %46 = load i8*, i8** @mcset_header_ext, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 46
  br i1 %50, label %51, label %66

51:                                               ; preds = %44
  %52 = load i8*, i8** @mcset_header_ext, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load i8*, i8** @mcset_header_ext, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = add nsw i32 %59, 2
  %61 = call i8* @xmalloc(i32 %60)
  store i8* %61, i8** %11, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = load i8*, i8** @mcset_header_ext, align 8
  %64 = call i32 @sprintf(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %63)
  %65 = load i8*, i8** %11, align 8
  store i8* %65, i8** @mcset_header_ext, align 8
  br label %66

66:                                               ; preds = %57, %51, %44
  br label %114

67:                                               ; preds = %41
  %68 = load i8*, i8** @optarg, align 8
  %69 = call i32* @mc_unify_path(i8* %68)
  store i32* %69, i32** @mcset_header_dir, align 8
  br label %114

70:                                               ; preds = %41
  %71 = load i8*, i8** @optarg, align 8
  %72 = call i32* @mc_unify_path(i8* %71)
  store i32* %72, i32** @mcset_rc_dir, align 8
  br label %114

73:                                               ; preds = %41
  store i32 0, i32* @mcset_text_in_is_unicode, align 4
  br label %114

74:                                               ; preds = %41
  %75 = load i8*, i8** @optarg, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i8*, i8** @optarg, align 8
  %81 = call i32* @mc_unify_path(i8* %80)
  store i32* %81, i32** @mcset_dbg_dir, align 8
  br label %82

82:                                               ; preds = %79, %74
  br label %114

83:                                               ; preds = %41
  store i32 0, i32* @mcset_bin_out_is_unicode, align 4
  br label %114

84:                                               ; preds = %41
  store i32 1, i32* @mcset_out_values_are_decimal, align 4
  br label %114

85:                                               ; preds = %41
  store i32 1, i32* @mcset_text_in_is_unicode, align 4
  br label %114

86:                                               ; preds = %41
  store i32 1, i32* @mcset_bin_out_is_unicode, align 4
  br label %114

87:                                               ; preds = %41
  store i32 1, i32* @mcset_custom_bit, align 4
  br label %114

88:                                               ; preds = %41
  store i32 1, i32* @mcset_automatic_null_termination, align 4
  br label %114

89:                                               ; preds = %41
  store i32 1, i32* @mcset_use_hresult, align 4
  %90 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %114

91:                                               ; preds = %41
  %92 = load i8*, i8** @optarg, align 8
  store i8* %92, i8** %8, align 8
  br label %114

93:                                               ; preds = %41
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %114

96:                                               ; preds = %41
  %97 = load i8*, i8** @optarg, align 8
  %98 = call i8* @strtol(i8* %97, i8** null, i32 10)
  store i8* %98, i8** @mcset_max_message_length, align 8
  br label %114

99:                                               ; preds = %41
  %100 = load i8*, i8** @optarg, align 8
  %101 = call i8* @strtol(i8* %100, i8** null, i32 10)
  store i8* %101, i8** @mcset_codepage_in, align 8
  br label %114

102:                                              ; preds = %41
  %103 = load i8*, i8** @optarg, align 8
  %104 = call i8* @strtol(i8* %103, i8** null, i32 10)
  %105 = ptrtoint i8* %104 to i32
  store i32 %105, i32* @mcset_codepage_out, align 4
  br label %114

106:                                              ; preds = %41, %41
  %107 = load i32, i32* @stdout, align 4
  %108 = call i32 @usage(i32 %107, i32 0)
  br label %114

109:                                              ; preds = %41
  %110 = call i32 @print_version(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %114

111:                                              ; preds = %41
  %112 = load i32, i32* @stderr, align 4
  %113 = call i32 @usage(i32 %112, i32 1)
  br label %114

114:                                              ; preds = %111, %109, %106, %102, %99, %96, %93, %91, %89, %88, %87, %86, %85, %84, %83, %82, %73, %70, %67, %66, %43
  br label %34

115:                                              ; preds = %34
  %116 = load i8*, i8** %9, align 8
  %117 = icmp eq i8* %116, null
  br i1 %117, label %118, label %130

118:                                              ; preds = %115
  %119 = load i32, i32* @optind, align 4
  %120 = load i32, i32* %4, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %118
  %123 = load i8**, i8*** %5, align 8
  %124 = load i32, i32* @optind, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  %127 = load i8*, i8** %126, align 8
  store i8* %127, i8** %9, align 8
  %128 = load i32, i32* @optind, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* @optind, align 4
  br label %130

130:                                              ; preds = %122, %118, %115
  %131 = load i8*, i8** %8, align 8
  %132 = call i32 @set_endianess(i32* null, i8* %131)
  %133 = load i8*, i8** %9, align 8
  %134 = icmp eq i8* %133, null
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load i32, i32* @stderr, align 4
  %137 = call i32 (i32, i8*, ...) @fprintf(i32 %136, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %138 = load i32, i32* @stderr, align 4
  %139 = call i32 @usage(i32 %138, i32 1)
  br label %140

140:                                              ; preds = %135, %130
  %141 = load i8*, i8** %9, align 8
  %142 = call i32 @mc_set_inputfile(i8* %141)
  %143 = call i32 @probe_codepage(i8** @mcset_codepage_in, i32* @mcset_text_in_is_unicode, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 0)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %140
  %146 = load i32, i32* @stderr, align 4
  %147 = call i32 @usage(i32 %146, i32 1)
  br label %148

148:                                              ; preds = %145, %140
  %149 = load i32, i32* @mcset_codepage_out, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  store i32 1252, i32* @mcset_codepage_out, align 4
  br label %152

152:                                              ; preds = %151, %148
  %153 = load i32, i32* @mcset_codepage_out, align 4
  %154 = call i32 @unicode_is_valid_codepage(i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %152
  %157 = load i32, i32* @mcset_codepage_out, align 4
  %158 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %156, %152
  %160 = load i32, i32* @mcset_codepage_out, align 4
  %161 = load i32, i32* @CP_UTF16, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %159
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %183

168:                                              ; preds = %165
  %169 = load i32, i32* @stderr, align 4
  %170 = load i8*, i8** @def_target_arch, align 8
  %171 = load i64, i64* @target_is_bigendian, align 8
  %172 = icmp ne i64 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)
  %175 = call i32 (i32, i8*, ...) @fprintf(i32 %169, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i8* %170, i8* %174)
  %176 = load i32, i32* @stderr, align 4
  %177 = load i8*, i8** @mcset_codepage_in, align 8
  %178 = ptrtoint i8* %177 to i32
  %179 = call i32 (i32, i8*, ...) @fprintf(i32 %176, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %178)
  %180 = load i32, i32* @stderr, align 4
  %181 = load i32, i32* @mcset_codepage_out, align 4
  %182 = call i32 (i32, i8*, ...) @fprintf(i32 %180, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %181)
  br label %183

183:                                              ; preds = %168, %165
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* @optind, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %183
  %188 = load i32, i32* @stderr, align 4
  %189 = call i32 @usage(i32 %188, i32 1)
  br label %190

190:                                              ; preds = %187, %183
  %191 = load i8*, i8** %9, align 8
  %192 = call i8* @strrchr(i8* %191, i8 signext 47)
  store i8* %192, i8** %12, align 8
  %193 = load i8*, i8** %9, align 8
  %194 = call i8* @strrchr(i8* %193, i8 signext 92)
  store i8* %194, i8** %13, align 8
  %195 = load i8*, i8** %12, align 8
  %196 = icmp ne i8* %195, null
  br i1 %196, label %199, label %197

197:                                              ; preds = %190
  %198 = load i8*, i8** %13, align 8
  store i8* %198, i8** %12, align 8
  br label %199

199:                                              ; preds = %197, %190
  %200 = load i8*, i8** %12, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %211

202:                                              ; preds = %199
  %203 = load i8*, i8** %13, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %211

205:                                              ; preds = %202
  %206 = load i8*, i8** %12, align 8
  %207 = load i8*, i8** %13, align 8
  %208 = icmp ult i8* %206, %207
  br i1 %208, label %209, label %211

209:                                              ; preds = %205
  %210 = load i8*, i8** %13, align 8
  store i8* %210, i8** %12, align 8
  br label %211

211:                                              ; preds = %209, %205, %202, %199
  %212 = load i8*, i8** %12, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %216, label %214

214:                                              ; preds = %211
  %215 = load i8*, i8** %9, align 8
  store i8* %215, i8** %12, align 8
  br label %219

216:                                              ; preds = %211
  %217 = load i8*, i8** %12, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %12, align 8
  br label %219

219:                                              ; preds = %216, %214
  %220 = load i8*, i8** %12, align 8
  %221 = call i8* @xstrdup(i8* %220)
  store i8* %221, i8** %14, align 8
  store i8* %221, i8** @mcset_mc_basename, align 8
  %222 = load i8*, i8** %14, align 8
  %223 = call i8* @strrchr(i8* %222, i8 signext 46)
  store i8* %223, i8** %14, align 8
  %224 = icmp ne i8* %223, null
  br i1 %224, label %225, label %227

225:                                              ; preds = %219
  %226 = load i8*, i8** %14, align 8
  store i8 0, i8* %226, align 1
  br label %227

227:                                              ; preds = %225, %219
  %228 = load i8*, i8** %9, align 8
  %229 = call i32* @fopen(i8* %228, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  store i32* %229, i32** %19, align 8
  %230 = load i32*, i32** %19, align 8
  %231 = icmp ne i32* %230, null
  br i1 %231, label %236, label %232

232:                                              ; preds = %227
  %233 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  %234 = load i8*, i8** %9, align 8
  %235 = call i32 (i8*, ...) @fatal(i8* %233, i8* %234)
  br label %236

236:                                              ; preds = %232, %227
  %237 = load i32*, i32** %19, align 8
  %238 = load i32, i32* @SEEK_END, align 4
  %239 = call i32 @fseek(i32* %237, i32 0, i32 %238)
  %240 = load i32*, i32** %19, align 8
  %241 = call i64 @ftell(i32* %240)
  store i64 %241, i64* %18, align 8
  %242 = load i32*, i32** %19, align 8
  %243 = load i32, i32* @SEEK_SET, align 4
  %244 = call i32 @fseek(i32* %242, i32 0, i32 %243)
  %245 = load i64, i64* %18, align 8
  %246 = add nsw i64 %245, 3
  %247 = call i8* @malloc(i64 %246)
  store i8* %247, i8** %17, align 8
  %248 = load i8*, i8** %17, align 8
  %249 = load i64, i64* %18, align 8
  %250 = add nsw i64 %249, 3
  %251 = call i32 @memset(i8* %248, i32 0, i64 %250)
  %252 = load i8*, i8** %17, align 8
  %253 = load i64, i64* %18, align 8
  %254 = load i32*, i32** %19, align 8
  %255 = call i32 @fread(i8* %252, i32 1, i64 %253, i32* %254)
  %256 = load i32*, i32** %19, align 8
  %257 = call i32 @fclose(i32* %256)
  %258 = load i32, i32* @mcset_text_in_is_unicode, align 4
  %259 = icmp ne i32 %258, 1
  br i1 %259, label %260, label %271

260:                                              ; preds = %236
  %261 = load i8*, i8** %17, align 8
  %262 = load i8*, i8** @mcset_codepage_in, align 8
  %263 = call i32 @unicode_from_codepage(i32* %16, i32** %15, i8* %261, i8* %262)
  %264 = load i32*, i32** %15, align 8
  %265 = icmp ne i32* %264, null
  br i1 %265, label %268, label %266

266:                                              ; preds = %260
  %267 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0))
  br label %268

268:                                              ; preds = %266, %260
  %269 = load i32*, i32** %15, align 8
  %270 = call i32 @mc_set_content(i32* %269)
  br label %282

271:                                              ; preds = %236
  %272 = load i64, i64* %18, align 8
  %273 = and i64 %272, 1
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %271
  %276 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0))
  %277 = call i32 (i8*, ...) @fatal(i8* %276)
  br label %278

278:                                              ; preds = %275, %271
  %279 = load i8*, i8** %17, align 8
  %280 = bitcast i8* %279 to i32*
  %281 = call i32 @mc_set_content(i32* %280)
  br label %282

282:                                              ; preds = %278, %268
  %283 = load i8*, i8** %17, align 8
  %284 = call i32 @free(i8* %283)
  br label %285

285:                                              ; preds = %288, %282
  %286 = call i64 (...) @yyparse()
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %285
  br label %285

289:                                              ; preds = %285
  %290 = call i32 (...) @do_sorts()
  %291 = load i32*, i32** @mcset_header_dir, align 8
  %292 = load i8*, i8** @mcset_header_ext, align 8
  %293 = call i32* @mc_create_path_text_file(i32* %291, i8* %292)
  store i32* %293, i32** %6, align 8
  %294 = load i32*, i32** %6, align 8
  %295 = call i32 @write_header(i32* %294)
  %296 = load i32*, i32** %6, align 8
  %297 = call i32 @fclose(i32* %296)
  %298 = load i32*, i32** @mcset_rc_dir, align 8
  %299 = call i32* @mc_create_path_text_file(i32* %298, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  store i32* %299, i32** %6, align 8
  %300 = load i32*, i32** %6, align 8
  %301 = call i32 @write_rc(i32* %300)
  %302 = load i32*, i32** %6, align 8
  %303 = call i32 @fclose(i32* %302)
  %304 = load i32*, i32** @mcset_dbg_dir, align 8
  %305 = icmp ne i32* %304, null
  br i1 %305, label %306, label %313

306:                                              ; preds = %289
  %307 = load i32*, i32** @mcset_dbg_dir, align 8
  %308 = call i32* @mc_create_path_text_file(i32* %307, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  store i32* %308, i32** %6, align 8
  %309 = load i32*, i32** %6, align 8
  %310 = call i32 @write_dbg(i32* %309)
  %311 = load i32*, i32** %6, align 8
  %312 = call i32 @fclose(i32* %311)
  br label %313

313:                                              ; preds = %306, %289
  %314 = call i32 (...) @write_bin()
  %315 = load i8*, i8** @mc_nodes_lang, align 8
  %316 = icmp ne i8* %315, null
  br i1 %316, label %317, label %320

317:                                              ; preds = %313
  %318 = load i8*, i8** @mc_nodes_lang, align 8
  %319 = call i32 @free(i8* %318)
  br label %320

320:                                              ; preds = %317, %313
  %321 = load i8*, i8** @mc_severity_codes, align 8
  %322 = icmp ne i8* %321, null
  br i1 %322, label %323, label %326

323:                                              ; preds = %320
  %324 = load i8*, i8** @mc_severity_codes, align 8
  %325 = call i32 @free(i8* %324)
  br label %326

326:                                              ; preds = %323, %320
  %327 = load i8*, i8** @mc_facility_codes, align 8
  %328 = icmp ne i8* %327, null
  br i1 %328, label %329, label %332

329:                                              ; preds = %326
  %330 = load i8*, i8** @mc_facility_codes, align 8
  %331 = call i32 @free(i8* %330)
  br label %332

332:                                              ; preds = %329, %326
  %333 = call i32 @xexit(i32 0)
  ret i32 0
}

declare dso_local i32 @bindtextdomain(i32, i32) #1

declare dso_local i32 @textdomain(i32) #1

declare dso_local i32 @xmalloc_set_program_name(i8*) #1

declare dso_local i32 @expandargv(i32*, i8***) #1

declare dso_local i32 @bfd_init(...) #1

declare dso_local i32 @set_default_bfd_target(...) #1

declare dso_local i32 @res_init(...) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32* @mc_unify_path(i8*) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i8* @strtol(i8*, i8**, i32) #1

declare dso_local i32 @usage(i32, i32) #1

declare dso_local i32 @print_version(i8*) #1

declare dso_local i32 @set_endianess(i32*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @mc_set_inputfile(i8*) #1

declare dso_local i32 @probe_codepage(i8**, i32*, i8*, i32) #1

declare dso_local i32 @unicode_is_valid_codepage(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @unicode_from_codepage(i32*, i32**, i8*, i8*) #1

declare dso_local i32 @mc_set_content(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @yyparse(...) #1

declare dso_local i32 @do_sorts(...) #1

declare dso_local i32* @mc_create_path_text_file(i32*, i8*) #1

declare dso_local i32 @write_header(i32*) #1

declare dso_local i32 @write_rc(i32*) #1

declare dso_local i32 @write_dbg(i32*) #1

declare dso_local i32 @write_bin(...) #1

declare dso_local i32 @xexit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
