; ModuleID = '/home/carl/AnghaBench/freebsd/bin/df/extr_df.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/df/extr_df.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.stat = type { i32 }
%struct.statfs = type { i8*, i32, i32, i32, i32 }
%struct.maxwidths = type { i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"ufs\00", align 1
@LC_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DEV_BSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@MNAMELEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"+abcgHhiklmnPt:T,\00", align 1
@long_options = common dso_local global i32 0, align 4
@aflag = common dso_local global i32 0, align 4
@kflag = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"BLOCKSIZE\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"512\00", align 1
@hflag = common dso_local global i32 0, align 4
@cflag = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"1g\00", align 1
@UNITS_SI = common dso_local global i32 0, align 4
@UNITS_2 = common dso_local global i32 0, align 4
@iflag = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"1024\00", align 1
@lflag = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"-l and -t are mutually exclusive.\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"1m\00", align 1
@nflag = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"only one -t option may be specified\00", align 1
@optarg = common dso_local global i8* null, align 8
@Tflag = common dso_local global i32 0, align 4
@thousands = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@MNT_NOWAIT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"malloc()\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"storage-system-information\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"filesystem\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"%s: not mounted\00", align 1
@MNT_IGNORE = common dso_local global i32 0, align 4
@MNT_NOEXEC = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@mdev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca %struct.statfs, align 8
  %8 = alloca %struct.statfs, align 8
  %9 = alloca %struct.maxwidths, align 8
  %10 = alloca %struct.statfs*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %18 = load i32, i32* @LC_ALL, align 4
  %19 = call i32 @setlocale(i32 %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %20 = bitcast %struct.maxwidths* %9 to %struct.statfs*
  %21 = call i32 @memset(%struct.statfs* %20, i32 0, i32 24)
  %22 = call i32 @memset(%struct.statfs* %8, i32 0, i32 24)
  %23 = load i32, i32* @DEV_BSIZE, align 4
  %24 = getelementptr inbounds %struct.statfs, %struct.statfs* %8, i32 0, i32 4
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.statfs, %struct.statfs* %8, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @MNAMELEN, align 4
  %28 = call i32 @strlcpy(i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  store i8** null, i8*** %13, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = call i32 @xo_parse_args(i32 %29, i8** %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = call i32 @exit(i32 1) #4
  unreachable

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %98, %36
  %38 = load i32, i32* %4, align 4
  %39 = load i8**, i8*** %5, align 8
  %40 = load i32, i32* @long_options, align 4
  %41 = call i32 @getopt_long(i32 %38, i8** %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %40, i32* null)
  store i32 %41, i32* %16, align 4
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %99

43:                                               ; preds = %37
  %44 = load i32, i32* %16, align 4
  switch i32 %44, label %96 [
    i32 97, label %45
    i32 98, label %46
    i32 80, label %46
    i32 99, label %52
    i32 103, label %53
    i32 72, label %55
    i32 104, label %57
    i32 105, label %59
    i32 107, label %60
    i32 108, label %64
    i32 109, label %76
    i32 110, label %78
    i32 116, label %79
    i32 84, label %93
    i32 44, label %94
    i32 63, label %95
  ]

45:                                               ; preds = %43
  store i32 1, i32* @aflag, align 4
  br label %98

46:                                               ; preds = %43, %43
  %47 = load i32, i32* @kflag, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %98

50:                                               ; preds = %46
  %51 = call i32 @setenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 1)
  store i32 0, i32* @hflag, align 4
  br label %98

52:                                               ; preds = %43
  store i32 1, i32* @cflag, align 4
  br label %98

53:                                               ; preds = %43
  %54 = call i32 @setenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 1)
  store i32 0, i32* @hflag, align 4
  br label %98

55:                                               ; preds = %43
  %56 = load i32, i32* @UNITS_SI, align 4
  store i32 %56, i32* @hflag, align 4
  br label %98

57:                                               ; preds = %43
  %58 = load i32, i32* @UNITS_2, align 4
  store i32 %58, i32* @hflag, align 4
  br label %98

59:                                               ; preds = %43
  store i32 1, i32* @iflag, align 4
  br label %98

60:                                               ; preds = %43
  %61 = load i32, i32* @kflag, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* @kflag, align 4
  %63 = call i32 @setenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 1)
  store i32 0, i32* @hflag, align 4
  br label %98

64:                                               ; preds = %43
  %65 = load i32, i32* @lflag, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %98

68:                                               ; preds = %64
  %69 = load i8**, i8*** %13, align 8
  %70 = icmp ne i8** %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = call i32 @xo_errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %68
  %74 = call i8* (...) @makenetvfslist()
  %75 = call i8** @makevfslist(i8* %74)
  store i8** %75, i8*** %13, align 8
  store i32 1, i32* @lflag, align 4
  br label %98

76:                                               ; preds = %43
  %77 = call i32 @setenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 1)
  store i32 0, i32* @hflag, align 4
  br label %98

78:                                               ; preds = %43
  store i32 1, i32* @nflag, align 4
  br label %98

79:                                               ; preds = %43
  %80 = load i32, i32* @lflag, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 @xo_errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %79
  %85 = load i8**, i8*** %13, align 8
  %86 = icmp ne i8** %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = call i32 @xo_errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %84
  %90 = load i8*, i8** @optarg, align 8
  store i8* %90, i8** %11, align 8
  %91 = load i8*, i8** @optarg, align 8
  %92 = call i8** @makevfslist(i8* %91)
  store i8** %92, i8*** %13, align 8
  br label %98

93:                                               ; preds = %43
  store i32 1, i32* @Tflag, align 4
  br label %98

94:                                               ; preds = %43
  store i32 1, i32* @thousands, align 4
  br label %98

95:                                               ; preds = %43
  br label %96

96:                                               ; preds = %43, %95
  %97 = call i32 (...) @usage()
  br label %98

98:                                               ; preds = %96, %94, %93, %89, %78, %76, %73, %67, %60, %59, %57, %55, %53, %52, %50, %49, %45
  br label %37

99:                                               ; preds = %37
  %100 = load i64, i64* @optind, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = sub nsw i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %4, align 4
  %105 = load i64, i64* @optind, align 8
  %106 = load i8**, i8*** %5, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 %105
  store i8** %107, i8*** %5, align 8
  store i32 0, i32* %17, align 4
  %108 = load i8**, i8*** %5, align 8
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %117, label %111

111:                                              ; preds = %99
  %112 = load i32, i32* @MNT_NOWAIT, align 4
  %113 = call i32 @getmntinfo(%struct.statfs** %10, i32 %112)
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %15, align 4
  %115 = load i8**, i8*** %13, align 8
  %116 = call i32 @regetmntinfo(%struct.statfs** %10, i32 %114, i8** %115)
  store i32 %116, i32* %15, align 4
  br label %128

117:                                              ; preds = %99
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = mul i64 %119, 24
  %121 = trunc i64 %120 to i32
  %122 = call %struct.statfs* @malloc(i32 %121)
  store %struct.statfs* %122, %struct.statfs** %10, align 8
  %123 = load %struct.statfs*, %struct.statfs** %10, align 8
  %124 = icmp eq %struct.statfs* %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %117
  %126 = call i32 @xo_err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %117
  store i32 0, i32* %15, align 4
  br label %128

128:                                              ; preds = %127, %111
  %129 = call i32 @xo_open_container(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %130 = call i32 @xo_open_list(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  br label %131

131:                                              ; preds = %196, %128
  %132 = load i8**, i8*** %5, align 8
  %133 = load i8*, i8** %132, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %199

135:                                              ; preds = %131
  %136 = load i8**, i8*** %5, align 8
  %137 = load i8*, i8** %136, align 8
  %138 = call i64 @stat(i8* %137, %struct.stat* %6)
  %139 = icmp slt i64 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %135
  %141 = load i8**, i8*** %5, align 8
  %142 = load i8*, i8** %141, align 8
  %143 = call i8* @getmntpt(i8* %142)
  store i8* %143, i8** %12, align 8
  %144 = icmp eq i8* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load i8**, i8*** %5, align 8
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 (i8*, ...) @xo_warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %147)
  store i32 1, i32* %17, align 4
  br label %196

149:                                              ; preds = %140
  br label %169

150:                                              ; preds = %135
  %151 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @S_ISCHR(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %150
  %156 = load i8**, i8*** %5, align 8
  %157 = load i8*, i8** %156, align 8
  %158 = call i8* @getmntpt(i8* %157)
  store i8* %158, i8** %12, align 8
  %159 = icmp eq i8* %158, null
  br i1 %159, label %160, label %164

160:                                              ; preds = %155
  %161 = load i8**, i8*** %5, align 8
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 (i8*, ...) @xo_warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* %162)
  store i32 1, i32* %17, align 4
  br label %196

164:                                              ; preds = %155
  br label %168

165:                                              ; preds = %150
  %166 = load i8**, i8*** %5, align 8
  %167 = load i8*, i8** %166, align 8
  store i8* %167, i8** %12, align 8
  br label %168

168:                                              ; preds = %165, %164
  br label %169

169:                                              ; preds = %168, %149
  %170 = load i8*, i8** %12, align 8
  %171 = call i64 @statfs(i8* %170, %struct.statfs* %7)
  %172 = icmp slt i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load i8*, i8** %12, align 8
  %175 = call i32 (i8*, ...) @xo_warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %174)
  store i32 1, i32* %17, align 4
  br label %196

176:                                              ; preds = %169
  %177 = getelementptr inbounds %struct.statfs, %struct.statfs* %7, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load i8**, i8*** %13, align 8
  %180 = call i64 @checkvfsname(i32 %178, i8** %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  store i32 1, i32* %17, align 4
  br label %196

183:                                              ; preds = %176
  %184 = load i32, i32* @MNT_IGNORE, align 4
  %185 = xor i32 %184, -1
  %186 = getelementptr inbounds %struct.statfs, %struct.statfs* %7, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = and i32 %187, %185
  store i32 %188, i32* %186, align 8
  %189 = load %struct.statfs*, %struct.statfs** %10, align 8
  %190 = load i32, i32* %15, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %15, align 4
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds %struct.statfs, %struct.statfs* %189, i64 %192
  %194 = bitcast %struct.statfs* %193 to i8*
  %195 = bitcast %struct.statfs* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %194, i8* align 8 %195, i64 24, i1 false)
  br label %196

196:                                              ; preds = %183, %182, %173, %160, %145
  %197 = load i8**, i8*** %5, align 8
  %198 = getelementptr inbounds i8*, i8** %197, i32 1
  store i8** %198, i8*** %5, align 8
  br label %131

199:                                              ; preds = %131
  %200 = bitcast %struct.maxwidths* %9 to %struct.statfs*
  %201 = call i32 @memset(%struct.statfs* %200, i32 0, i32 24)
  store i32 0, i32* %14, align 4
  br label %202

202:                                              ; preds = %236, %199
  %203 = load i32, i32* %14, align 4
  %204 = load i32, i32* %15, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %239

206:                                              ; preds = %202
  %207 = load i32, i32* @aflag, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %219, label %209

209:                                              ; preds = %206
  %210 = load %struct.statfs*, %struct.statfs** %10, align 8
  %211 = load i32, i32* %14, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.statfs, %struct.statfs* %210, i64 %212
  %214 = getelementptr inbounds %struct.statfs, %struct.statfs* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @MNT_IGNORE, align 4
  %217 = and i32 %215, %216
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %235

219:                                              ; preds = %209, %206
  %220 = bitcast %struct.maxwidths* %9 to %struct.statfs*
  %221 = load %struct.statfs*, %struct.statfs** %10, align 8
  %222 = load i32, i32* %14, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.statfs, %struct.statfs* %221, i64 %223
  %225 = call i32 @update_maxwidths(%struct.statfs* %220, %struct.statfs* %224)
  %226 = load i32, i32* @cflag, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %219
  %229 = load %struct.statfs*, %struct.statfs** %10, align 8
  %230 = load i32, i32* %14, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.statfs, %struct.statfs* %229, i64 %231
  %233 = call i32 @addstat(%struct.statfs* %8, %struct.statfs* %232)
  br label %234

234:                                              ; preds = %228, %219
  br label %235

235:                                              ; preds = %234, %209
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %14, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %14, align 4
  br label %202

239:                                              ; preds = %202
  store i32 0, i32* %14, align 4
  br label %240

240:                                              ; preds = %265, %239
  %241 = load i32, i32* %14, align 4
  %242 = load i32, i32* %15, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %268

244:                                              ; preds = %240
  %245 = load i32, i32* @aflag, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %257, label %247

247:                                              ; preds = %244
  %248 = load %struct.statfs*, %struct.statfs** %10, align 8
  %249 = load i32, i32* %14, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.statfs, %struct.statfs* %248, i64 %250
  %252 = getelementptr inbounds %struct.statfs, %struct.statfs* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @MNT_IGNORE, align 4
  %255 = and i32 %253, %254
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %264

257:                                              ; preds = %247, %244
  %258 = load %struct.statfs*, %struct.statfs** %10, align 8
  %259 = load i32, i32* %14, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.statfs, %struct.statfs* %258, i64 %260
  %262 = bitcast %struct.maxwidths* %9 to %struct.statfs*
  %263 = call i32 @prtstat(%struct.statfs* %261, %struct.statfs* %262)
  br label %264

264:                                              ; preds = %257, %247
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %14, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %14, align 4
  br label %240

268:                                              ; preds = %240
  %269 = call i32 @xo_close_list(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %270 = load i32, i32* @cflag, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %268
  %273 = bitcast %struct.maxwidths* %9 to %struct.statfs*
  %274 = call i32 @prtstat(%struct.statfs* %8, %struct.statfs* %273)
  br label %275

275:                                              ; preds = %272, %268
  %276 = call i32 @xo_close_container(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %277 = call i32 (...) @xo_finish()
  %278 = load i32, i32* %17, align 4
  %279 = call i32 @exit(i32 %278) #4
  unreachable
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @memset(%struct.statfs*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @xo_parse_args(i32, i8**) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @xo_errx(i32, i8*) #1

declare dso_local i8** @makevfslist(i8*) #1

declare dso_local i8* @makenetvfslist(...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @getmntinfo(%struct.statfs**, i32) #1

declare dso_local i32 @regetmntinfo(%struct.statfs**, i32, i8**) #1

declare dso_local %struct.statfs* @malloc(i32) #1

declare dso_local i32 @xo_err(i32, i8*) #1

declare dso_local i32 @xo_open_container(i8*) #1

declare dso_local i32 @xo_open_list(i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i8* @getmntpt(i8*) #1

declare dso_local i32 @xo_warn(i8*, ...) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @xo_warnx(i8*, ...) #1

declare dso_local i64 @statfs(i8*, %struct.statfs*) #1

declare dso_local i64 @checkvfsname(i32, i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @update_maxwidths(%struct.statfs*, %struct.statfs*) #1

declare dso_local i32 @addstat(%struct.statfs*, %struct.statfs*) #1

declare dso_local i32 @prtstat(%struct.statfs*, %struct.statfs*) #1

declare dso_local i32 @xo_close_list(i8*) #1

declare dso_local i32 @xo_close_container(i8*) #1

declare dso_local i32 @xo_finish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
