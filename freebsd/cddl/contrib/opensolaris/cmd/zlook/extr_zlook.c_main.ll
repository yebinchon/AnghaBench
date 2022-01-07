; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zlook/extr_zlook.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zlook/extr_zlook.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i8*, i8*, i64, i32, i8*, i8*, i8*, i32, i32, i8*, i32, i32, i32, i64, i32 }

@B_FALSE = common dso_local global i64 0, align 8
@BIGBUF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"lisaerb:ASE\00", align 1
@B_TRUE = common dso_local global i64 0, align 8
@ZUT_IGNORECASE = common dso_local global i32 0, align 4
@ZUT_GETSTAT = common dso_local global i32 0, align 4
@ZUT_ACCFILTER = common dso_local global i32 0, align 4
@ZUT_EXTRDDIR = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@LILBUF = common dso_local global i64 0, align 8
@MAXBUF = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"Sorry, buffer size must be >= %d and less than or equal to %d bytes.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"pathconf(2) check for %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"System attributes \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Enabled\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Not enabled\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Exist\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Do not exist\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Access filtering \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Available\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Not available\0A\00", align 1
@ZUT_DEV = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@MAXNAMELEN = common dso_local global i32 0, align 4
@ZUT_XATTR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@ZUT_IOC_READDIR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [22 x i8] c"IOCTL error: %s (%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"readdir result: %s (%d)\0A\00", align 1
@ZUT_IOC_LOOKUP = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"\0ALookup of \00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"extended attribute \22%s\22 of \00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"file \22%s\22 \00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"in directory \22%s\22 \00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"failed: %s (%d)\0A\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"succeeded.\0A\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"----------------------------\0A\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"dirent flags: 0x%0x\0A\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"real name: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca %struct.TYPE_6__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %23 = bitcast %struct.TYPE_6__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 112, i1 false)
  %24 = bitcast %struct.TYPE_6__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 112, i1 false)
  %25 = load i64, i64* @B_FALSE, align 8
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* @B_FALSE, align 8
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* @B_FALSE, align 8
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* @B_FALSE, align 8
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* @BIGBUF, align 8
  store i64 %29, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %82, %2
  %31 = load i32, i32* %4, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = call i32 @getopt(i32 %31, i8** %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32 %33, i32* %16, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %83

35:                                               ; preds = %30
  %36 = load i32, i32* %16, align 4
  switch i32 %36, label %77 [
    i32 108, label %37
    i32 105, label %39
    i32 115, label %45
    i32 97, label %51
    i32 101, label %57
    i32 114, label %63
    i32 98, label %65
    i32 65, label %70
    i32 83, label %72
    i32 69, label %74
    i32 63, label %76
  ]

37:                                               ; preds = %35
  %38 = load i64, i64* @B_TRUE, align 8
  store i64 %38, i64* %9, align 8
  br label %82

39:                                               ; preds = %35
  %40 = load i32, i32* @ZUT_IGNORECASE, align 4
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 8
  %44 = load i64, i64* @B_TRUE, align 8
  store i64 %44, i64* %9, align 8
  br label %82

45:                                               ; preds = %35
  %46 = load i32, i32* @ZUT_GETSTAT, align 4
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 8
  %50 = load i64, i64* @B_TRUE, align 8
  store i64 %50, i64* %9, align 8
  br label %82

51:                                               ; preds = %35
  %52 = load i32, i32* @ZUT_ACCFILTER, align 4
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  %56 = load i64, i64* @B_TRUE, align 8
  store i64 %56, i64* %10, align 8
  br label %82

57:                                               ; preds = %35
  %58 = load i32, i32* @ZUT_EXTRDDIR, align 4
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 4
  %62 = load i64, i64* @B_TRUE, align 8
  store i64 %62, i64* %10, align 8
  br label %82

63:                                               ; preds = %35
  %64 = load i64, i64* @B_TRUE, align 8
  store i64 %64, i64* %10, align 8
  br label %82

65:                                               ; preds = %35
  %66 = load i64, i64* @B_TRUE, align 8
  store i64 %66, i64* %10, align 8
  %67 = load i64, i64* @B_TRUE, align 8
  store i64 %67, i64* %11, align 8
  %68 = load i32, i32* @optarg, align 4
  %69 = call i64 @strtol(i32 %68, i32* null, i32 0)
  store i64 %69, i64* %12, align 8
  br label %82

70:                                               ; preds = %35
  %71 = load i64, i64* @B_TRUE, align 8
  store i64 %71, i64* %8, align 8
  store i32 130, i32* %14, align 4
  br label %82

72:                                               ; preds = %35
  %73 = load i64, i64* @B_TRUE, align 8
  store i64 %73, i64* %8, align 8
  store i32 129, i32* %14, align 4
  br label %82

74:                                               ; preds = %35
  %75 = load i64, i64* @B_TRUE, align 8
  store i64 %75, i64* %8, align 8
  store i32 128, i32* %14, align 4
  br label %82

76:                                               ; preds = %35
  br label %77

77:                                               ; preds = %35, %76
  %78 = load i8**, i8*** %5, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @usage(i8* %80)
  br label %82

82:                                               ; preds = %77, %74, %72, %70, %65, %63, %57, %51, %45, %39, %37
  br label %30

83:                                               ; preds = %30
  %84 = load i64, i64* %8, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i64, i64* %9, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %116, label %89

89:                                               ; preds = %86, %83
  %90 = load i64, i64* %8, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i64, i64* %10, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %116, label %95

95:                                               ; preds = %92, %89
  %96 = load i64, i64* %9, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i64, i64* %10, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %116, label %101

101:                                              ; preds = %98, %95
  %102 = load i64, i64* %10, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load i64, i64* %11, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %104, %101
  %108 = load i64, i64* %8, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %107
  %111 = load i64, i64* %10, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %110
  %114 = load i64, i64* %9, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %113, %104, %98, %92, %86
  %117 = load i8**, i8*** %5, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @usage(i8* %119)
  br label %121

121:                                              ; preds = %116, %113, %110, %107
  %122 = load i64, i64* %12, align 8
  %123 = load i64, i64* @LILBUF, align 8
  %124 = icmp slt i64 %122, %123
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* @MAXBUF, align 8
  %128 = icmp sgt i64 %126, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %125, %121
  %130 = load i32, i32* @stderr, align 4
  %131 = load i64, i64* @LILBUF, align 8
  %132 = trunc i64 %131 to i32
  %133 = load i64, i64* @MAXBUF, align 8
  %134 = call i32 (i32, i8*, ...) @fprintf(i32 %130, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %132, i64 %133)
  %135 = load i32, i32* @EINVAL, align 4
  %136 = call i32 @exit(i32 %135) #5
  unreachable

137:                                              ; preds = %125
  %138 = load i64, i64* %8, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %197

140:                                              ; preds = %137
  %141 = load i32, i32* @MAXPATHLEN, align 4
  %142 = zext i32 %141 to i64
  %143 = call i8* @llvm.stacksave()
  store i8* %143, i8** %17, align 8
  %144 = alloca i8, i64 %142, align 16
  store i64 %142, i64* %18, align 8
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @optind, align 4
  %147 = sub nsw i32 %145, %146
  %148 = icmp slt i32 %147, 1
  br i1 %148, label %149, label %154

149:                                              ; preds = %140
  %150 = load i8**, i8*** %5, align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @usage(i8* %152)
  br label %154

154:                                              ; preds = %149, %140
  %155 = load i8**, i8*** %5, align 8
  %156 = load i32, i32* @optind, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8*, i8** %155, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = load i32, i32* @MAXPATHLEN, align 4
  %161 = call i32 @strlcpy(i8* %144, i8* %159, i32 %160)
  %162 = load i32, i32* %14, align 4
  %163 = call i64 @pathconf(i8* %144, i32 %162)
  store i64 %163, i64* %19, align 8
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %144)
  %165 = load i32, i32* %14, align 4
  switch i32 %165, label %193 [
    i32 129, label %166
    i32 128, label %175
    i32 130, label %184
  ]

166:                                              ; preds = %154
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %168 = load i64, i64* %19, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %174

172:                                              ; preds = %166
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %170
  br label %193

175:                                              ; preds = %154
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %177 = load i64, i64* %19, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %183

181:                                              ; preds = %175
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %183

183:                                              ; preds = %181, %179
  br label %193

184:                                              ; preds = %154
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %186 = load i64, i64* %19, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %192

190:                                              ; preds = %184
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %192

192:                                              ; preds = %190, %188
  br label %193

193:                                              ; preds = %154, %192, %183, %174
  %194 = load i64, i64* %19, align 8
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %3, align 4
  %196 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %196)
  br label %444

197:                                              ; preds = %137
  %198 = load i8*, i8** @ZUT_DEV, align 8
  %199 = load i32, i32* @O_RDONLY, align 4
  %200 = call i32 @open(i8* %198, i32 %199)
  store i32 %200, i32* %15, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %197
  %203 = load i8*, i8** @ZUT_DEV, align 8
  %204 = call i32 @perror(i8* %203)
  %205 = load i32, i32* @ENXIO, align 4
  store i32 %205, i32* %3, align 4
  br label %444

206:                                              ; preds = %197
  %207 = load i64, i64* %10, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %317

209:                                              ; preds = %206
  %210 = load i32, i32* %4, align 4
  %211 = load i32, i32* @optind, align 4
  %212 = sub nsw i32 %210, %211
  %213 = icmp slt i32 %212, 1
  br i1 %213, label %214, label %219

214:                                              ; preds = %209
  %215 = load i8**, i8*** %5, align 8
  %216 = getelementptr inbounds i8*, i8** %215, i64 0
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 @usage(i8* %217)
  br label %219

219:                                              ; preds = %214, %209
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %221 = load i8*, i8** %220, align 8
  %222 = load i8**, i8*** %5, align 8
  %223 = load i32, i32* @optind, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8*, i8** %222, i64 %224
  %226 = load i8*, i8** %225, align 8
  %227 = load i32, i32* @MAXPATHLEN, align 4
  %228 = call i32 @strlcpy(i8* %221, i8* %226, i32 %227)
  %229 = load i32, i32* %4, align 4
  %230 = load i32, i32* @optind, align 4
  %231 = sub nsw i32 %229, %230
  %232 = icmp sgt i32 %231, 1
  br i1 %232, label %233, label %248

233:                                              ; preds = %219
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  %235 = load i8*, i8** %234, align 8
  %236 = load i8**, i8*** %5, align 8
  %237 = load i32, i32* @optind, align 4
  %238 = add nsw i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8*, i8** %236, i64 %239
  %241 = load i8*, i8** %240, align 8
  %242 = load i32, i32* @MAXNAMELEN, align 4
  %243 = call i32 @strlcpy(i8* %235, i8* %241, i32 %242)
  %244 = load i32, i32* @ZUT_XATTR, align 4
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = or i32 %246, %244
  store i32 %247, i32* %245, align 4
  br label %248

248:                                              ; preds = %233, %219
  %249 = load i64, i64* %12, align 8
  %250 = call i8* @malloc(i64 %249)
  store i8* %250, i8** %20, align 8
  %251 = icmp eq i8* %250, null
  br i1 %251, label %252, label %258

252:                                              ; preds = %248
  %253 = load i32, i32* @errno, align 4
  store i32 %253, i32* %13, align 4
  %254 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %255 = load i32, i32* %15, align 4
  %256 = call i32 @close(i32 %255)
  %257 = load i32, i32* %13, align 4
  store i32 %257, i32* %3, align 4
  br label %444

258:                                              ; preds = %248
  %259 = load i8*, i8** %20, align 8
  %260 = ptrtoint i8* %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 15
  store i64 %260, i64* %261, align 8
  %262 = load i64, i64* %12, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  store i64 %262, i64* %263, align 8
  br label %264

264:                                              ; preds = %313, %258
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 14
  %266 = load i32, i32* %265, align 8
  %267 = icmp ne i32 %266, 0
  %268 = xor i1 %267, true
  br i1 %268, label %269, label %314

269:                                              ; preds = %264
  %270 = load i32, i32* %15, align 4
  %271 = load i32, i32* @ZUT_IOC_READDIR, align 4
  %272 = call i32 @ioctl(i32 %270, i32 %271, %struct.TYPE_6__* %7)
  store i32 %272, i32* %21, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %285

274:                                              ; preds = %269
  %275 = load i32, i32* @stderr, align 4
  %276 = load i32, i32* %21, align 4
  %277 = call i8* @strerror(i32 %276)
  %278 = load i32, i32* %21, align 4
  %279 = call i32 (i32, i8*, ...) @fprintf(i32 %275, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8* %277, i32 %278)
  %280 = load i8*, i8** %20, align 8
  %281 = call i32 @free(i8* %280)
  %282 = load i32, i32* %15, align 4
  %283 = call i32 @close(i32 %282)
  %284 = load i32, i32* %21, align 4
  store i32 %284, i32* %3, align 4
  br label %444

285:                                              ; preds = %269
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 5
  %287 = load i32, i32* %286, align 8
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %303

289:                                              ; preds = %285
  %290 = load i32, i32* @stderr, align 4
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 5
  %292 = load i32, i32* %291, align 8
  %293 = call i8* @strerror(i32 %292)
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 5
  %295 = load i32, i32* %294, align 8
  %296 = call i32 (i32, i8*, ...) @fprintf(i32 %290, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i8* %293, i32 %295)
  %297 = load i8*, i8** %20, align 8
  %298 = call i32 @free(i8* %297)
  %299 = load i32, i32* %15, align 4
  %300 = call i32 @close(i32 %299)
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 5
  %302 = load i32, i32* %301, align 8
  store i32 %302, i32* %3, align 4
  br label %444

303:                                              ; preds = %285
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @ZUT_EXTRDDIR, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %303
  %310 = call i32 @print_extd_entries(%struct.TYPE_6__* %7)
  br label %313

311:                                              ; preds = %303
  %312 = call i32 @print_entries(%struct.TYPE_6__* %7)
  br label %313

313:                                              ; preds = %311, %309
  br label %264

314:                                              ; preds = %264
  %315 = load i8*, i8** %20, align 8
  %316 = call i32 @free(i8* %315)
  br label %441

317:                                              ; preds = %206
  %318 = load i32, i32* %4, align 4
  %319 = load i32, i32* @optind, align 4
  %320 = sub nsw i32 %318, %319
  %321 = icmp slt i32 %320, 2
  br i1 %321, label %322, label %327

322:                                              ; preds = %317
  %323 = load i8**, i8*** %5, align 8
  %324 = getelementptr inbounds i8*, i8** %323, i64 0
  %325 = load i8*, i8** %324, align 8
  %326 = call i32 @usage(i8* %325)
  br label %327

327:                                              ; preds = %322, %317
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 6
  %329 = load i8*, i8** %328, align 8
  %330 = load i8**, i8*** %5, align 8
  %331 = load i32, i32* @optind, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i8*, i8** %330, i64 %332
  %334 = load i8*, i8** %333, align 8
  %335 = load i32, i32* @MAXPATHLEN, align 4
  %336 = call i32 @strlcpy(i8* %329, i8* %334, i32 %335)
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 7
  %338 = load i8*, i8** %337, align 8
  %339 = load i8**, i8*** %5, align 8
  %340 = load i32, i32* @optind, align 4
  %341 = add nsw i32 %340, 1
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i8*, i8** %339, i64 %342
  %344 = load i8*, i8** %343, align 8
  %345 = load i32, i32* @MAXNAMELEN, align 4
  %346 = call i32 @strlcpy(i8* %338, i8* %344, i32 %345)
  %347 = load i32, i32* %4, align 4
  %348 = load i32, i32* @optind, align 4
  %349 = sub nsw i32 %347, %348
  %350 = icmp sgt i32 %349, 2
  br i1 %350, label %351, label %366

351:                                              ; preds = %327
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 8
  %353 = load i8*, i8** %352, align 8
  %354 = load i8**, i8*** %5, align 8
  %355 = load i32, i32* @optind, align 4
  %356 = add nsw i32 %355, 2
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i8*, i8** %354, i64 %357
  %359 = load i8*, i8** %358, align 8
  %360 = load i32, i32* @MAXNAMELEN, align 4
  %361 = call i32 @strlcpy(i8* %353, i8* %359, i32 %360)
  %362 = load i32, i32* @ZUT_XATTR, align 4
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = or i32 %364, %362
  store i32 %365, i32* %363, align 8
  br label %366

366:                                              ; preds = %351, %327
  %367 = load i32, i32* %15, align 4
  %368 = load i32, i32* @ZUT_IOC_LOOKUP, align 4
  %369 = call i32 @ioctl(i32 %367, i32 %368, %struct.TYPE_6__* %6)
  store i32 %369, i32* %22, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %380

371:                                              ; preds = %366
  %372 = load i32, i32* @stderr, align 4
  %373 = load i32, i32* %22, align 4
  %374 = call i8* @strerror(i32 %373)
  %375 = load i32, i32* %22, align 4
  %376 = call i32 (i32, i8*, ...) @fprintf(i32 %372, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8* %374, i32 %375)
  %377 = load i32, i32* %15, align 4
  %378 = call i32 @close(i32 %377)
  %379 = load i32, i32* %22, align 4
  store i32 %379, i32* %3, align 4
  br label %444

380:                                              ; preds = %366
  %381 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %382 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = load i32, i32* @ZUT_XATTR, align 4
  %385 = and i32 %383, %384
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %391

387:                                              ; preds = %380
  %388 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 8
  %389 = load i8*, i8** %388, align 8
  %390 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i8* %389)
  br label %391

391:                                              ; preds = %387, %380
  %392 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 7
  %393 = load i8*, i8** %392, align 8
  %394 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i8* %393)
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 6
  %396 = load i8*, i8** %395, align 8
  %397 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i8* %396)
  %398 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 9
  %399 = load i32, i32* %398, align 8
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %412

401:                                              ; preds = %391
  %402 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 9
  %403 = load i32, i32* %402, align 8
  %404 = call i8* @strerror(i32 %403)
  %405 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 9
  %406 = load i32, i32* %405, align 8
  %407 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i8* %404, i32 %406)
  %408 = load i32, i32* %15, align 4
  %409 = call i32 @close(i32 %408)
  %410 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 9
  %411 = load i32, i32* %410, align 8
  store i32 %411, i32* %3, align 4
  br label %444

412:                                              ; preds = %391
  %413 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  %414 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = load i32, i32* @ZUT_IGNORECASE, align 4
  %417 = and i32 %415, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %427

419:                                              ; preds = %412
  %420 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0))
  %421 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 10
  %422 = load i32, i32* %421, align 4
  %423 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i32 %422)
  %424 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 11
  %425 = load i8*, i8** %424, align 8
  %426 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), i8* %425)
  br label %427

427:                                              ; preds = %419, %412
  %428 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = load i32, i32* @ZUT_GETSTAT, align 4
  %431 = and i32 %429, %430
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %440

433:                                              ; preds = %427
  %434 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i64 0, i64 0))
  %435 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 13
  %436 = call i32 @print_stats(i32* %435)
  %437 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 12
  %438 = load i32, i32* %437, align 8
  %439 = call i32 @print_xvs(i32 %438)
  br label %440

440:                                              ; preds = %433, %427
  br label %441

441:                                              ; preds = %440, %314
  %442 = load i32, i32* %15, align 4
  %443 = call i32 @close(i32 %442)
  store i32 0, i32* %3, align 4
  br label %444

444:                                              ; preds = %441, %401, %371, %289, %274, %252, %202, %193
  %445 = load i32, i32* %3, align 4
  ret i32 %445
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i64 @strtol(i32, i32*, i32) #2

declare dso_local i32 @usage(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @pathconf(i8*, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #4

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_6__*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @print_extd_entries(%struct.TYPE_6__*) #2

declare dso_local i32 @print_entries(%struct.TYPE_6__*) #2

declare dso_local i32 @print_stats(i32*) #2

declare dso_local i32 @print_xvs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
