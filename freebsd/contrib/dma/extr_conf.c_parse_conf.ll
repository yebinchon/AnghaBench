; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dma/extr_conf.c_parse_conf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dma/extr_conf.c_parse_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@EX_NOINPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"can not open config `%s'\00", align 1
@EQS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"SMARTHOST\00", align 1
@config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"PORT\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ALIASES\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"SPOOLDIR\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"AUTHPATH\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"CERTFILE\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"MAILNAME\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"MASQUERADE\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"STARTTLS\00", align 1
@STARTTLS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"OPPORTUNISTIC_TLS\00", align 1
@TLS_OPP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [15 x i8] c"SECURETRANSFER\00", align 1
@SECURETRANS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"DEFER\00", align 1
@DEFER = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"INSECURE\00", align 1
@INSECURE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [11 x i8] c"FULLBOUNCE\00", align 1
@FULLBOUNCE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [11 x i8] c"NULLCLIENT\00", align 1
@NULLCLIENT = common dso_local global i32 0, align 4
@EX_CONFIG = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [22 x i8] c"syntax error in %s:%d\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"%s: NULLCLIENT requires SMARTHOST\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_conf(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [2048 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %7, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load i64, i64* @errno, align 8
  %16 = load i64, i64* @ENOENT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %287

19:                                               ; preds = %14
  %20 = load i32, i32* @EX_NOINPUT, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @errlog(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %21)
  br label %23

23:                                               ; preds = %19, %1
  br label %24

24:                                               ; preds = %271, %57, %23
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @feof(i32* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %272

29:                                               ; preds = %24
  %30 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %31 = load i32*, i32** %5, align 8
  %32 = call i32* @fgets(i8* %30, i32 2048, i32* %31)
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %272

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  %38 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %39 = call i32 @chomp(i8* %38)
  %40 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %41 = call i64* @strchr(i8* %40, i8 signext 35)
  %42 = icmp ne i64* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %45 = call i64* @strchr(i8* %44, i8 signext 35)
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %43, %35
  %47 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  store i8* %47, i8** %4, align 8
  %48 = load i32, i32* @EQS, align 4
  %49 = call i8* @strsep(i8** %4, i32 %48)
  store i8* %49, i8** %3, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = load i8*, i8** %3, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52, %46
  br label %24

58:                                               ; preds = %52
  %59 = load i8*, i8** %4, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i8*, i8** %4, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i8*, i8** %4, align 8
  %68 = call i8* @strdup(i8* %67)
  store i8* %68, i8** %4, align 8
  br label %70

69:                                               ; preds = %61, %58
  store i8* null, i8** %4, align 8
  br label %70

70:                                               ; preds = %69, %66
  %71 = load i8*, i8** %3, align 8
  %72 = call i64 @strcmp(i8* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i8*, i8** %4, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i8*, i8** %4, align 8
  store i8* %78, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  br label %271

79:                                               ; preds = %74, %70
  %80 = load i8*, i8** %3, align 8
  %81 = call i64 @strcmp(i8* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i8*, i8** %4, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i8*, i8** %4, align 8
  %88 = call i32 @atoi(i8* %87)
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 9), align 4
  br label %270

89:                                               ; preds = %83, %79
  %90 = load i8*, i8** %3, align 8
  %91 = call i64 @strcmp(i8* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i8*, i8** %4, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = load i8*, i8** %4, align 8
  store i8* %97, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 1), align 8
  br label %269

98:                                               ; preds = %93, %89
  %99 = load i8*, i8** %3, align 8
  %100 = call i64 @strcmp(i8* %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i8*, i8** %4, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i8*, i8** %4, align 8
  store i8* %106, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 2), align 8
  br label %268

107:                                              ; preds = %102, %98
  %108 = load i8*, i8** %3, align 8
  %109 = call i64 @strcmp(i8* %108, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load i8*, i8** %4, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i8*, i8** %4, align 8
  store i8* %115, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 3), align 8
  br label %267

116:                                              ; preds = %111, %107
  %117 = load i8*, i8** %3, align 8
  %118 = call i64 @strcmp(i8* %117, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load i8*, i8** %4, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = load i8*, i8** %4, align 8
  store i8* %124, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 4), align 8
  br label %266

125:                                              ; preds = %120, %116
  %126 = load i8*, i8** %3, align 8
  %127 = call i64 @strcmp(i8* %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load i8*, i8** %4, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = load i8*, i8** %4, align 8
  store i8* %133, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 5), align 8
  br label %265

134:                                              ; preds = %129, %125
  %135 = load i8*, i8** %3, align 8
  %136 = call i64 @strcmp(i8* %135, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %175

138:                                              ; preds = %134
  %139 = load i8*, i8** %4, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %175

141:                                              ; preds = %138
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %142 = load i8*, i8** %4, align 8
  %143 = call i8* @strrchr(i8* %142, i8 signext 64)
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %152

145:                                              ; preds = %141
  %146 = load i8*, i8** %4, align 8
  %147 = call i8* @strrchr(i8* %146, i8 signext 64)
  store i8* %147, i8** %9, align 8
  %148 = load i8*, i8** %9, align 8
  store i8 0, i8* %148, align 1
  %149 = load i8*, i8** %9, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %9, align 8
  %151 = load i8*, i8** %4, align 8
  store i8* %151, i8** %8, align 8
  br label %154

152:                                              ; preds = %141
  %153 = load i8*, i8** %4, align 8
  store i8* %153, i8** %9, align 8
  br label %154

154:                                              ; preds = %152, %145
  %155 = load i8*, i8** %9, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  %158 = load i8*, i8** %9, align 8
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  store i8* null, i8** %9, align 8
  br label %163

163:                                              ; preds = %162, %157, %154
  %164 = load i8*, i8** %8, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = load i8*, i8** %8, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  store i8* null, i8** %8, align 8
  br label %172

172:                                              ; preds = %171, %166, %163
  %173 = load i8*, i8** %9, align 8
  store i8* %173, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 6), align 8
  %174 = load i8*, i8** %8, align 8
  store i8* %174, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 7), align 8
  br label %264

175:                                              ; preds = %138, %134
  %176 = load i8*, i8** %3, align 8
  %177 = call i64 @strcmp(i8* %176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %175
  %180 = load i8*, i8** %4, align 8
  %181 = icmp eq i8* %180, null
  br i1 %181, label %182, label %186

182:                                              ; preds = %179
  %183 = load i32, i32* @STARTTLS, align 4
  %184 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 8), align 8
  %185 = or i32 %184, %183
  store i32 %185, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 8), align 8
  br label %263

186:                                              ; preds = %179, %175
  %187 = load i8*, i8** %3, align 8
  %188 = call i64 @strcmp(i8* %187, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0))
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %186
  %191 = load i8*, i8** %4, align 8
  %192 = icmp eq i8* %191, null
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = load i32, i32* @TLS_OPP, align 4
  %195 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 8), align 8
  %196 = or i32 %195, %194
  store i32 %196, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 8), align 8
  br label %262

197:                                              ; preds = %190, %186
  %198 = load i8*, i8** %3, align 8
  %199 = call i64 @strcmp(i8* %198, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %197
  %202 = load i8*, i8** %4, align 8
  %203 = icmp eq i8* %202, null
  br i1 %203, label %204, label %208

204:                                              ; preds = %201
  %205 = load i32, i32* @SECURETRANS, align 4
  %206 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 8), align 8
  %207 = or i32 %206, %205
  store i32 %207, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 8), align 8
  br label %261

208:                                              ; preds = %201, %197
  %209 = load i8*, i8** %3, align 8
  %210 = call i64 @strcmp(i8* %209, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %208
  %213 = load i8*, i8** %4, align 8
  %214 = icmp eq i8* %213, null
  br i1 %214, label %215, label %219

215:                                              ; preds = %212
  %216 = load i32, i32* @DEFER, align 4
  %217 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 8), align 8
  %218 = or i32 %217, %216
  store i32 %218, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 8), align 8
  br label %260

219:                                              ; preds = %212, %208
  %220 = load i8*, i8** %3, align 8
  %221 = call i64 @strcmp(i8* %220, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %219
  %224 = load i8*, i8** %4, align 8
  %225 = icmp eq i8* %224, null
  br i1 %225, label %226, label %230

226:                                              ; preds = %223
  %227 = load i32, i32* @INSECURE, align 4
  %228 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 8), align 8
  %229 = or i32 %228, %227
  store i32 %229, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 8), align 8
  br label %259

230:                                              ; preds = %223, %219
  %231 = load i8*, i8** %3, align 8
  %232 = call i64 @strcmp(i8* %231, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %230
  %235 = load i8*, i8** %4, align 8
  %236 = icmp eq i8* %235, null
  br i1 %236, label %237, label %241

237:                                              ; preds = %234
  %238 = load i32, i32* @FULLBOUNCE, align 4
  %239 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 8), align 8
  %240 = or i32 %239, %238
  store i32 %240, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 8), align 8
  br label %258

241:                                              ; preds = %234, %230
  %242 = load i8*, i8** %3, align 8
  %243 = call i64 @strcmp(i8* %242, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0))
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %241
  %246 = load i8*, i8** %4, align 8
  %247 = icmp eq i8* %246, null
  br i1 %247, label %248, label %252

248:                                              ; preds = %245
  %249 = load i32, i32* @NULLCLIENT, align 4
  %250 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 8), align 8
  %251 = or i32 %250, %249
  store i32 %251, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 8), align 8
  br label %257

252:                                              ; preds = %245, %241
  %253 = load i32, i32* @EX_CONFIG, align 4
  %254 = load i8*, i8** %2, align 8
  %255 = load i32, i32* %7, align 4
  %256 = call i32 (i32, i8*, i8*, ...) @errlogx(i32 %253, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8* %254, i32 %255)
  br label %257

257:                                              ; preds = %252, %248
  br label %258

258:                                              ; preds = %257, %237
  br label %259

259:                                              ; preds = %258, %226
  br label %260

260:                                              ; preds = %259, %215
  br label %261

261:                                              ; preds = %260, %204
  br label %262

262:                                              ; preds = %261, %193
  br label %263

263:                                              ; preds = %262, %182
  br label %264

264:                                              ; preds = %263, %172
  br label %265

265:                                              ; preds = %264, %132
  br label %266

266:                                              ; preds = %265, %123
  br label %267

267:                                              ; preds = %266, %114
  br label %268

268:                                              ; preds = %267, %105
  br label %269

269:                                              ; preds = %268, %96
  br label %270

270:                                              ; preds = %269, %86
  br label %271

271:                                              ; preds = %270, %77
  br label %24

272:                                              ; preds = %34, %24
  %273 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 8), align 8
  %274 = load i32, i32* @NULLCLIENT, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %284

277:                                              ; preds = %272
  %278 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @config, i32 0, i32 0), align 8
  %279 = icmp eq i8* %278, null
  br i1 %279, label %280, label %284

280:                                              ; preds = %277
  %281 = load i32, i32* @EX_CONFIG, align 4
  %282 = load i8*, i8** %2, align 8
  %283 = call i32 (i32, i8*, i8*, ...) @errlogx(i32 %281, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0), i8* %282)
  br label %284

284:                                              ; preds = %280, %277, %272
  %285 = load i32*, i32** %5, align 8
  %286 = call i32 @fclose(i32* %285)
  br label %287

287:                                              ; preds = %284, %18
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @errlog(i32, i8*, i8*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @chomp(i8*) #1

declare dso_local i64* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strsep(i8**, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @errlogx(i32, i8*, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
