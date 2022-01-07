; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_options.c_tar_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_options.c_tar_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.incfile = type { i8*, i8* }
%struct.incfile.0 = type opaque

@rmleadslash = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"b:cef:hjmopqruts:vwxyzBC:HI:LOPXZ014578\00", align 1
@optarg = common dso_local global i8* null, align 8
@wrblksz = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid block size %s\00", align 1
@act = common dso_local global i32 0, align 4
@maxflt = common dso_local global i32 0, align 4
@arcname = common dso_local global i8* null, align 8
@Lflag = common dso_local global i32 0, align 4
@BZIP2_CMD = common dso_local global i32 0, align 4
@gzip_program = common dso_local global i32 0, align 4
@pmtime = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"write_opt=nodir\00", align 1
@pmode = common dso_local global i32 0, align 4
@pids = common dso_local global i32 0, align 4
@nflag = common dso_local global i32 0, align 4
@vflag = common dso_local global i32 0, align 4
@iflag = common dso_local global i32 0, align 4
@GZIP_CMD = common dso_local global i32 0, align 4
@chdname = common dso_local global i8* null, align 8
@Hflag = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Unable to allocate space for option list\00", align 1
@Xflag = common dso_local global i32 0, align 4
@COMPRESS_CMD = common dso_local global i32 0, align 4
@DEV_0 = common dso_local global i8* null, align 8
@DEV_1 = common dso_local global i8* null, align 8
@DEV_4 = common dso_local global i8* null, align 8
@DEV_5 = common dso_local global i8* null, align 8
@DEV_7 = common dso_local global i8* null, align 8
@DEV_8 = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@listf = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@fsub = common dso_local global i32* null, align 8
@F_OTAR = common dso_local global i64 0, align 8
@F_TAR = common dso_local global i64 0, align 8
@frmt = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [57 x i8] c"The -O/-o options are only valid when writing an archive\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-I\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Unable to open file '%s' for read\00", align 1
@get_line_error = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"Problem with file '%s'\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-C\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"TAPE\00", align 1
@_PATH_DEFTAPE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @tar_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tar_options(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.incfile*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store %struct.incfile* null, %struct.incfile** %10, align 8
  store i32 1, i32* @rmleadslash, align 4
  br label %20

20:                                               ; preds = %145, %2
  %21 = load i32, i32* %3, align 4
  %22 = load i8**, i8*** %4, align 8
  %23 = call i32 @getoldopt(i32 %21, i8** %22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %5, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %146

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %143 [
    i32 98, label %27
    i32 99, label %39
    i32 101, label %40
    i32 102, label %41
    i32 104, label %56
    i32 106, label %57
    i32 121, label %57
    i32 109, label %59
    i32 111, label %60
    i32 79, label %66
    i32 112, label %67
    i32 113, label %68
    i32 114, label %69
    i32 117, label %69
    i32 115, label %70
    i32 116, label %77
    i32 118, label %78
    i32 119, label %81
    i32 120, label %82
    i32 122, label %83
    i32 66, label %85
    i32 67, label %86
    i32 72, label %88
    i32 73, label %89
    i32 76, label %126
    i32 80, label %127
    i32 88, label %128
    i32 90, label %129
    i32 48, label %131
    i32 49, label %133
    i32 52, label %135
    i32 53, label %137
    i32 55, label %139
    i32 56, label %141
  ]

27:                                               ; preds = %25
  %28 = load i8*, i8** @optarg, align 8
  %29 = call i64 @str_offt(i8* %28)
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* @wrblksz, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i8*, i8** @optarg, align 8
  %34 = call i32 (i32, i8*, ...) @paxwarn(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = call i32 (...) @tar_usage()
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* @wrblksz, align 4
  %38 = mul nsw i32 %37, 512
  store i32 %38, i32* @wrblksz, align 4
  br label %145

39:                                               ; preds = %25
  store i32 130, i32* @act, align 4
  br label %145

40:                                               ; preds = %25
  store i32 0, i32* @maxflt, align 4
  br label %145

41:                                               ; preds = %25
  %42 = load i8*, i8** @optarg, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load i8*, i8** @optarg, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 1, i32* %6, align 4
  store i8* null, i8** @arcname, align 8
  br label %145

54:                                               ; preds = %47, %41
  store i32 0, i32* %6, align 4
  %55 = load i8*, i8** @optarg, align 8
  store i8* %55, i8** @arcname, align 8
  br label %145

56:                                               ; preds = %25
  store i32 1, i32* @Lflag, align 4
  br label %145

57:                                               ; preds = %25, %25
  %58 = load i32, i32* @BZIP2_CMD, align 4
  store i32 %58, i32* @gzip_program, align 4
  br label %145

59:                                               ; preds = %25
  store i32 0, i32* @pmtime, align 4
  br label %145

60:                                               ; preds = %25
  %61 = call i32 @opt_add(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 (...) @tar_usage()
  br label %65

65:                                               ; preds = %63, %60
  br label %66

66:                                               ; preds = %25, %65
  store i32 1, i32* %7, align 4
  br label %145

67:                                               ; preds = %25
  store i32 1, i32* @pmode, align 4
  store i32 1, i32* @pids, align 4
  br label %145

68:                                               ; preds = %25
  store i32 1, i32* @nflag, align 4
  br label %145

69:                                               ; preds = %25, %25
  store i32 131, i32* @act, align 4
  br label %145

70:                                               ; preds = %25
  %71 = load i8*, i8** @optarg, align 8
  %72 = call i32 @rep_add(i8* %71)
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call i32 (...) @tar_usage()
  br label %145

76:                                               ; preds = %70
  br label %145

77:                                               ; preds = %25
  store i32 128, i32* @act, align 4
  br label %145

78:                                               ; preds = %25
  %79 = load i32, i32* @vflag, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* @vflag, align 4
  br label %145

81:                                               ; preds = %25
  store i32 1, i32* @iflag, align 4
  br label %145

82:                                               ; preds = %25
  store i32 129, i32* @act, align 4
  store i32 1, i32* @pmtime, align 4
  br label %145

83:                                               ; preds = %25
  %84 = load i32, i32* @GZIP_CMD, align 4
  store i32 %84, i32* @gzip_program, align 4
  br label %145

85:                                               ; preds = %25
  br label %145

86:                                               ; preds = %25
  %87 = load i8*, i8** @optarg, align 8
  store i8* %87, i8** @chdname, align 8
  br label %145

88:                                               ; preds = %25
  store i32 1, i32* @Hflag, align 4
  br label %145

89:                                               ; preds = %25
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %89
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 3
  store i32 %96, i32* %9, align 4
  %97 = load %struct.incfile*, %struct.incfile** %10, align 8
  %98 = bitcast %struct.incfile* %97 to %struct.incfile.0*
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = mul i64 16, %100
  %102 = trunc i64 %101 to i32
  %103 = call %struct.incfile.0* @realloc(%struct.incfile.0* %98, i32 %102)
  %104 = bitcast %struct.incfile.0* %103 to %struct.incfile*
  store %struct.incfile* %104, %struct.incfile** %10, align 8
  %105 = load %struct.incfile*, %struct.incfile** %10, align 8
  %106 = icmp eq %struct.incfile* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %94
  %108 = call i32 (i32, i8*, ...) @paxwarn(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %109 = call i32 @exit(i32 1) #3
  unreachable

110:                                              ; preds = %94
  br label %111

111:                                              ; preds = %110, %89
  %112 = load i8*, i8** @optarg, align 8
  %113 = load %struct.incfile*, %struct.incfile** %10, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.incfile, %struct.incfile* %113, i64 %116
  %118 = getelementptr inbounds %struct.incfile, %struct.incfile* %117, i32 0, i32 0
  store i8* %112, i8** %118, align 8
  %119 = load i8*, i8** @chdname, align 8
  %120 = load %struct.incfile*, %struct.incfile** %10, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.incfile, %struct.incfile* %120, i64 %123
  %125 = getelementptr inbounds %struct.incfile, %struct.incfile* %124, i32 0, i32 1
  store i8* %119, i8** %125, align 8
  br label %145

126:                                              ; preds = %25
  store i32 1, i32* @Lflag, align 4
  br label %145

127:                                              ; preds = %25
  store i32 0, i32* @rmleadslash, align 4
  br label %145

128:                                              ; preds = %25
  store i32 1, i32* @Xflag, align 4
  br label %145

129:                                              ; preds = %25
  %130 = load i32, i32* @COMPRESS_CMD, align 4
  store i32 %130, i32* @gzip_program, align 4
  br label %145

131:                                              ; preds = %25
  %132 = load i8*, i8** @DEV_0, align 8
  store i8* %132, i8** @arcname, align 8
  br label %145

133:                                              ; preds = %25
  %134 = load i8*, i8** @DEV_1, align 8
  store i8* %134, i8** @arcname, align 8
  br label %145

135:                                              ; preds = %25
  %136 = load i8*, i8** @DEV_4, align 8
  store i8* %136, i8** @arcname, align 8
  br label %145

137:                                              ; preds = %25
  %138 = load i8*, i8** @DEV_5, align 8
  store i8* %138, i8** @arcname, align 8
  br label %145

139:                                              ; preds = %25
  %140 = load i8*, i8** @DEV_7, align 8
  store i8* %140, i8** @arcname, align 8
  br label %145

141:                                              ; preds = %25
  %142 = load i8*, i8** @DEV_8, align 8
  store i8* %142, i8** @arcname, align 8
  br label %145

143:                                              ; preds = %25
  %144 = call i32 (...) @tar_usage()
  br label %145

145:                                              ; preds = %143, %141, %139, %137, %135, %133, %131, %129, %128, %127, %126, %111, %88, %86, %85, %83, %82, %81, %78, %77, %76, %74, %69, %68, %67, %66, %59, %57, %56, %54, %53, %40, %39, %36
  br label %20

146:                                              ; preds = %20
  %147 = load i64, i64* @optind, align 8
  %148 = load i32, i32* %3, align 4
  %149 = sext i32 %148 to i64
  %150 = sub nsw i64 %149, %147
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %3, align 4
  %152 = load i64, i64* @optind, align 8
  %153 = load i8**, i8*** %4, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 %152
  store i8** %154, i8*** %4, align 8
  %155 = load i32, i32* %6, align 4
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %162

157:                                              ; preds = %146
  %158 = load i32, i32* @act, align 4
  %159 = icmp eq i32 %158, 130
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = load i32, i32* @stderr, align 4
  store i32 %161, i32* @listf, align 4
  br label %164

162:                                              ; preds = %157, %146
  %163 = load i32, i32* @stdout, align 4
  store i32 %163, i32* @listf, align 4
  br label %164

164:                                              ; preds = %162, %160
  %165 = load i32, i32* @act, align 4
  %166 = icmp eq i32 %165, 130
  br i1 %166, label %170, label %167

167:                                              ; preds = %164
  %168 = load i32, i32* @act, align 4
  %169 = icmp eq i32 %168, 131
  br i1 %169, label %170, label %178

170:                                              ; preds = %167, %164
  %171 = load i32, i32* %3, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %170
  %174 = load i32, i32* %8, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  %177 = call i32 @exit(i32 0) #3
  unreachable

178:                                              ; preds = %173, %170, %167
  %179 = load i32, i32* @act, align 4
  %180 = icmp eq i32 %179, 130
  br i1 %180, label %184, label %181

181:                                              ; preds = %178
  %182 = load i32, i32* @act, align 4
  %183 = icmp eq i32 %182, 131
  br i1 %183, label %184, label %195

184:                                              ; preds = %181, %178
  %185 = load i32*, i32** @fsub, align 8
  %186 = load i32, i32* %7, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = load i64, i64* @F_OTAR, align 8
  br label %192

190:                                              ; preds = %184
  %191 = load i64, i64* @F_TAR, align 8
  br label %192

192:                                              ; preds = %190, %188
  %193 = phi i64 [ %189, %188 ], [ %191, %190 ]
  %194 = getelementptr inbounds i32, i32* %185, i64 %193
  store i32* %194, i32** @frmt, align 8
  br label %202

195:                                              ; preds = %181
  %196 = load i32, i32* %7, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = call i32 (i32, i8*, ...) @paxwarn(i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  %200 = call i32 (...) @tar_usage()
  br label %201

201:                                              ; preds = %198, %195
  br label %202

202:                                              ; preds = %201, %192
  %203 = load i32, i32* @act, align 4
  switch i32 %203, label %205 [
    i32 128, label %204
    i32 129, label %204
    i32 130, label %326
    i32 131, label %326
  ]

204:                                              ; preds = %202, %202
  br label %205

205:                                              ; preds = %202, %204
  store i32 0, i32* %11, align 4
  store i8* null, i8** %13, align 8
  br label %206

206:                                              ; preds = %320, %205
  %207 = load i32, i32* %8, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %213, label %209

209:                                              ; preds = %206
  %210 = load i8**, i8*** %4, align 8
  %211 = load i8*, i8** %210, align 8
  %212 = icmp ne i8* %211, null
  br label %213

213:                                              ; preds = %209, %206
  %214 = phi i1 [ true, %206 ], [ %212, %209 ]
  br i1 %214, label %215, label %321

215:                                              ; preds = %213
  %216 = load i32, i32* %8, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %229

218:                                              ; preds = %215
  %219 = load %struct.incfile*, %struct.incfile** %10, align 8
  %220 = getelementptr inbounds %struct.incfile, %struct.incfile* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  store i8* %221, i8** %12, align 8
  %222 = load %struct.incfile*, %struct.incfile** %10, align 8
  %223 = getelementptr inbounds %struct.incfile, %struct.incfile* %222, i32 0, i32 1
  %224 = load i8*, i8** %223, align 8
  store i8* %224, i8** %13, align 8
  %225 = load %struct.incfile*, %struct.incfile** %10, align 8
  %226 = getelementptr inbounds %struct.incfile, %struct.incfile* %225, i32 1
  store %struct.incfile* %226, %struct.incfile** %10, align 8
  %227 = load i32, i32* %8, align 4
  %228 = add nsw i32 %227, -1
  store i32 %228, i32* %8, align 4
  br label %247

229:                                              ; preds = %215
  %230 = load i8**, i8*** %4, align 8
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 @strcmp(i8* %231, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %245

234:                                              ; preds = %229
  %235 = load i8**, i8*** %4, align 8
  %236 = getelementptr inbounds i8*, i8** %235, i32 1
  store i8** %236, i8*** %4, align 8
  %237 = load i8*, i8** %236, align 8
  %238 = icmp eq i8* %237, null
  br i1 %238, label %239, label %240

239:                                              ; preds = %234
  br label %321

240:                                              ; preds = %234
  %241 = load i8**, i8*** %4, align 8
  %242 = getelementptr inbounds i8*, i8** %241, i32 1
  store i8** %242, i8*** %4, align 8
  %243 = load i8*, i8** %241, align 8
  store i8* %243, i8** %12, align 8
  %244 = load i8*, i8** @chdname, align 8
  store i8* %244, i8** %13, align 8
  br label %246

245:                                              ; preds = %229
  store i8* null, i8** %12, align 8
  br label %246

246:                                              ; preds = %245, %240
  br label %247

247:                                              ; preds = %246, %218
  %248 = load i8*, i8** %12, align 8
  %249 = icmp ne i8* %248, null
  br i1 %249, label %250, label %293

250:                                              ; preds = %247
  %251 = load i8*, i8** %12, align 8
  %252 = call i32 @strcmp(i8* %251, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %250
  %255 = load i32*, i32** @stdin, align 8
  store i32* %255, i32** %14, align 8
  br label %265

256:                                              ; preds = %250
  %257 = load i8*, i8** %12, align 8
  %258 = call i32* @fopen(i8* %257, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %258, i32** %14, align 8
  %259 = icmp eq i32* %258, null
  br i1 %259, label %260, label %264

260:                                              ; preds = %256
  %261 = load i8*, i8** %12, align 8
  %262 = call i32 (i32, i8*, ...) @paxwarn(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8* %261)
  %263 = call i32 (...) @tar_usage()
  br label %264

264:                                              ; preds = %260, %256
  br label %265

265:                                              ; preds = %264, %254
  br label %266

266:                                              ; preds = %277, %265
  %267 = load i32*, i32** %14, align 8
  %268 = call i8* @get_line(i32* %267)
  store i8* %268, i8** %15, align 8
  %269 = icmp ne i8* %268, null
  br i1 %269, label %270, label %278

270:                                              ; preds = %266
  %271 = load i8*, i8** %15, align 8
  %272 = load i8*, i8** %13, align 8
  %273 = call i32 @pat_add(i8* %271, i8* %272)
  %274 = icmp slt i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %270
  %276 = call i32 (...) @tar_usage()
  br label %277

277:                                              ; preds = %275, %270
  store i32 1, i32* %11, align 4
  br label %266

278:                                              ; preds = %266
  %279 = load i8*, i8** %12, align 8
  %280 = call i32 @strcmp(i8* %279, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %278
  %283 = load i32*, i32** %14, align 8
  %284 = call i32 @fclose(i32* %283)
  br label %285

285:                                              ; preds = %282, %278
  %286 = load i32, i32* @get_line_error, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %285
  %289 = load i8*, i8** %12, align 8
  %290 = call i32 (i32, i8*, ...) @paxwarn(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* %289)
  %291 = call i32 (...) @tar_usage()
  br label %292

292:                                              ; preds = %288, %285
  br label %320

293:                                              ; preds = %247
  %294 = load i8**, i8*** %4, align 8
  %295 = load i8*, i8** %294, align 8
  %296 = call i32 @strcmp(i8* %295, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %308

298:                                              ; preds = %293
  %299 = load i8**, i8*** %4, align 8
  %300 = getelementptr inbounds i8*, i8** %299, i32 1
  store i8** %300, i8*** %4, align 8
  %301 = load i8*, i8** %300, align 8
  %302 = icmp eq i8* %301, null
  br i1 %302, label %303, label %304

303:                                              ; preds = %298
  br label %321

304:                                              ; preds = %298
  %305 = load i8**, i8*** %4, align 8
  %306 = getelementptr inbounds i8*, i8** %305, i32 1
  store i8** %306, i8*** %4, align 8
  %307 = load i8*, i8** %305, align 8
  store i8* %307, i8** @chdname, align 8
  br label %319

308:                                              ; preds = %293
  %309 = load i8**, i8*** %4, align 8
  %310 = getelementptr inbounds i8*, i8** %309, i32 1
  store i8** %310, i8*** %4, align 8
  %311 = load i8*, i8** %309, align 8
  %312 = load i8*, i8** @chdname, align 8
  %313 = call i32 @pat_add(i8* %311, i8* %312)
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %308
  %316 = call i32 (...) @tar_usage()
  br label %318

317:                                              ; preds = %308
  store i32 1, i32* %11, align 4
  br label %318

318:                                              ; preds = %317, %315
  br label %319

319:                                              ; preds = %318, %304
  br label %320

320:                                              ; preds = %319, %292
  br label %206

321:                                              ; preds = %303, %239, %213
  %322 = load i32, i32* %11, align 4
  %323 = icmp sgt i32 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %321
  store i8* null, i8** @chdname, align 8
  br label %325

325:                                              ; preds = %324, %321
  br label %464

326:                                              ; preds = %202, %202
  %327 = load i8*, i8** @chdname, align 8
  %328 = icmp ne i8* %327, null
  br i1 %328, label %329, label %336

329:                                              ; preds = %326
  %330 = load i8*, i8** @chdname, align 8
  %331 = call i32 @ftree_add(i8* %330, i32 1)
  %332 = icmp slt i32 %331, 0
  br i1 %332, label %333, label %335

333:                                              ; preds = %329
  %334 = call i32 (...) @tar_usage()
  br label %335

335:                                              ; preds = %333, %329
  br label %336

336:                                              ; preds = %335, %326
  br label %337

337:                                              ; preds = %462, %336
  %338 = load i32, i32* %8, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %344, label %340

340:                                              ; preds = %337
  %341 = load i8**, i8*** %4, align 8
  %342 = load i8*, i8** %341, align 8
  %343 = icmp ne i8* %342, null
  br label %344

344:                                              ; preds = %340, %337
  %345 = phi i1 [ true, %337 ], [ %343, %340 ]
  br i1 %345, label %346, label %463

346:                                              ; preds = %344
  store i8* null, i8** %17, align 8
  %347 = load i32, i32* %8, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %360

349:                                              ; preds = %346
  %350 = load %struct.incfile*, %struct.incfile** %10, align 8
  %351 = getelementptr inbounds %struct.incfile, %struct.incfile* %350, i32 0, i32 0
  %352 = load i8*, i8** %351, align 8
  store i8* %352, i8** %16, align 8
  %353 = load %struct.incfile*, %struct.incfile** %10, align 8
  %354 = getelementptr inbounds %struct.incfile, %struct.incfile* %353, i32 0, i32 1
  %355 = load i8*, i8** %354, align 8
  store i8* %355, i8** %17, align 8
  %356 = load %struct.incfile*, %struct.incfile** %10, align 8
  %357 = getelementptr inbounds %struct.incfile, %struct.incfile* %356, i32 1
  store %struct.incfile* %357, %struct.incfile** %10, align 8
  %358 = load i32, i32* %8, align 4
  %359 = add nsw i32 %358, -1
  store i32 %359, i32* %8, align 4
  br label %377

360:                                              ; preds = %346
  %361 = load i8**, i8*** %4, align 8
  %362 = load i8*, i8** %361, align 8
  %363 = call i32 @strcmp(i8* %362, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %375

365:                                              ; preds = %360
  %366 = load i8**, i8*** %4, align 8
  %367 = getelementptr inbounds i8*, i8** %366, i32 1
  store i8** %367, i8*** %4, align 8
  %368 = load i8*, i8** %367, align 8
  %369 = icmp eq i8* %368, null
  br i1 %369, label %370, label %371

370:                                              ; preds = %365
  br label %463

371:                                              ; preds = %365
  %372 = load i8**, i8*** %4, align 8
  %373 = getelementptr inbounds i8*, i8** %372, i32 1
  store i8** %373, i8*** %4, align 8
  %374 = load i8*, i8** %372, align 8
  store i8* %374, i8** %16, align 8
  store i8* null, i8** %17, align 8
  br label %376

375:                                              ; preds = %360
  store i8* null, i8** %16, align 8
  br label %376

376:                                              ; preds = %375, %371
  br label %377

377:                                              ; preds = %376, %349
  %378 = load i8*, i8** %16, align 8
  %379 = icmp ne i8* %378, null
  br i1 %379, label %380, label %432

380:                                              ; preds = %377
  %381 = load i8*, i8** %17, align 8
  %382 = icmp ne i8* %381, null
  br i1 %382, label %383, label %390

383:                                              ; preds = %380
  %384 = load i8*, i8** %17, align 8
  %385 = call i32 @ftree_add(i8* %384, i32 1)
  %386 = icmp slt i32 %385, 0
  br i1 %386, label %387, label %389

387:                                              ; preds = %383
  %388 = call i32 (...) @tar_usage()
  br label %389

389:                                              ; preds = %387, %383
  br label %390

390:                                              ; preds = %389, %380
  %391 = load i8*, i8** %16, align 8
  %392 = call i32 @strcmp(i8* %391, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %396

394:                                              ; preds = %390
  %395 = load i32*, i32** @stdin, align 8
  store i32* %395, i32** %18, align 8
  br label %405

396:                                              ; preds = %390
  %397 = load i8*, i8** %16, align 8
  %398 = call i32* @fopen(i8* %397, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32* %398, i32** %18, align 8
  %399 = icmp eq i32* %398, null
  br i1 %399, label %400, label %404

400:                                              ; preds = %396
  %401 = load i8*, i8** %16, align 8
  %402 = call i32 (i32, i8*, ...) @paxwarn(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i8* %401)
  %403 = call i32 (...) @tar_usage()
  br label %404

404:                                              ; preds = %400, %396
  br label %405

405:                                              ; preds = %404, %394
  br label %406

406:                                              ; preds = %416, %405
  %407 = load i32*, i32** %18, align 8
  %408 = call i8* @get_line(i32* %407)
  store i8* %408, i8** %19, align 8
  %409 = icmp ne i8* %408, null
  br i1 %409, label %410, label %417

410:                                              ; preds = %406
  %411 = load i8*, i8** %19, align 8
  %412 = call i32 @ftree_add(i8* %411, i32 0)
  %413 = icmp slt i32 %412, 0
  br i1 %413, label %414, label %416

414:                                              ; preds = %410
  %415 = call i32 (...) @tar_usage()
  br label %416

416:                                              ; preds = %414, %410
  br label %406

417:                                              ; preds = %406
  %418 = load i8*, i8** %16, align 8
  %419 = call i32 @strcmp(i8* %418, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %424

421:                                              ; preds = %417
  %422 = load i32*, i32** %18, align 8
  %423 = call i32 @fclose(i32* %422)
  br label %424

424:                                              ; preds = %421, %417
  %425 = load i32, i32* @get_line_error, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %431

427:                                              ; preds = %424
  %428 = load i8*, i8** %16, align 8
  %429 = call i32 (i32, i8*, ...) @paxwarn(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8* %428)
  %430 = call i32 (...) @tar_usage()
  br label %431

431:                                              ; preds = %427, %424
  br label %462

432:                                              ; preds = %377
  %433 = load i8**, i8*** %4, align 8
  %434 = load i8*, i8** %433, align 8
  %435 = call i32 @strcmp(i8* %434, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %452

437:                                              ; preds = %432
  %438 = load i8**, i8*** %4, align 8
  %439 = getelementptr inbounds i8*, i8** %438, i32 1
  store i8** %439, i8*** %4, align 8
  %440 = load i8*, i8** %439, align 8
  %441 = icmp eq i8* %440, null
  br i1 %441, label %442, label %443

442:                                              ; preds = %437
  br label %463

443:                                              ; preds = %437
  %444 = load i8**, i8*** %4, align 8
  %445 = getelementptr inbounds i8*, i8** %444, i32 1
  store i8** %445, i8*** %4, align 8
  %446 = load i8*, i8** %444, align 8
  %447 = call i32 @ftree_add(i8* %446, i32 1)
  %448 = icmp slt i32 %447, 0
  br i1 %448, label %449, label %451

449:                                              ; preds = %443
  %450 = call i32 (...) @tar_usage()
  br label %451

451:                                              ; preds = %449, %443
  br label %461

452:                                              ; preds = %432
  %453 = load i8**, i8*** %4, align 8
  %454 = getelementptr inbounds i8*, i8** %453, i32 1
  store i8** %454, i8*** %4, align 8
  %455 = load i8*, i8** %453, align 8
  %456 = call i32 @ftree_add(i8* %455, i32 0)
  %457 = icmp slt i32 %456, 0
  br i1 %457, label %458, label %460

458:                                              ; preds = %452
  %459 = call i32 (...) @tar_usage()
  br label %460

460:                                              ; preds = %458, %452
  br label %461

461:                                              ; preds = %460, %451
  br label %462

462:                                              ; preds = %461, %431
  br label %337

463:                                              ; preds = %442, %370, %344
  store i32 0, i32* @maxflt, align 4
  br label %464

464:                                              ; preds = %463, %325
  %465 = load i32, i32* %6, align 4
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %487, label %467

467:                                              ; preds = %464
  %468 = load i8*, i8** @arcname, align 8
  %469 = icmp eq i8* %468, null
  br i1 %469, label %475, label %470

470:                                              ; preds = %467
  %471 = load i8*, i8** @arcname, align 8
  %472 = load i8, i8* %471, align 1
  %473 = sext i8 %472 to i32
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %475, label %487

475:                                              ; preds = %470, %467
  %476 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  store i8* %476, i8** @arcname, align 8
  %477 = load i8*, i8** @arcname, align 8
  %478 = icmp eq i8* %477, null
  br i1 %478, label %484, label %479

479:                                              ; preds = %475
  %480 = load i8*, i8** @arcname, align 8
  %481 = load i8, i8* %480, align 1
  %482 = sext i8 %481 to i32
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %486

484:                                              ; preds = %479, %475
  %485 = load i8*, i8** @_PATH_DEFTAPE, align 8
  store i8* %485, i8** @arcname, align 8
  br label %486

486:                                              ; preds = %484, %479
  br label %487

487:                                              ; preds = %486, %470, %464
  ret void
}

declare dso_local i32 @getoldopt(i32, i8**, i8*) #1

declare dso_local i64 @str_offt(i8*) #1

declare dso_local i32 @paxwarn(i32, i8*, ...) #1

declare dso_local i32 @tar_usage(...) #1

declare dso_local i32 @opt_add(i8*) #1

declare dso_local i32 @rep_add(i8*) #1

declare dso_local %struct.incfile.0* @realloc(%struct.incfile.0*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @get_line(i32*) #1

declare dso_local i32 @pat_add(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @ftree_add(i8*, i32) #1

declare dso_local i8* @getenv(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
