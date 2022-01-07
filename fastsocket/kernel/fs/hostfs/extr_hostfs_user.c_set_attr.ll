; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_user.c_set_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_user.c_set_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostfs_iattr = type { i32, i32, i32, %struct.timespec, %struct.timespec, i32, i32 }
%struct.timespec = type { i32, i32 }
%struct.timeval = type { i32, i32 }

@HOSTFS_ATTR_MODE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@HOSTFS_ATTR_UID = common dso_local global i32 0, align 4
@HOSTFS_ATTR_GID = common dso_local global i32 0, align 4
@HOSTFS_ATTR_SIZE = common dso_local global i32 0, align 4
@HOSTFS_ATTR_ATIME_SET = common dso_local global i32 0, align 4
@HOSTFS_ATTR_MTIME_SET = common dso_local global i32 0, align 4
@HOSTFS_ATTR_ATIME = common dso_local global i32 0, align 4
@HOSTFS_ATTR_MTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_attr(i8* %0, %struct.hostfs_iattr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hostfs_iattr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x %struct.timeval], align 16
  %9 = alloca %struct.timespec, align 4
  %10 = alloca %struct.timespec, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.hostfs_iattr* %1, %struct.hostfs_iattr** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %14 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @HOSTFS_ATTR_MODE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %25 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @fchmod(i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @errno, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %267

32:                                               ; preds = %22
  br label %44

33:                                               ; preds = %19
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %36 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @chmod(i8* %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @errno, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %267

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %32
  br label %45

45:                                               ; preds = %44, %3
  %46 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %47 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @HOSTFS_ATTR_UID, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %58 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @fchown(i32 %56, i32 %59, i32 -1)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* @errno, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %267

65:                                               ; preds = %55
  br label %77

66:                                               ; preds = %52
  %67 = load i8*, i8** %5, align 8
  %68 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %69 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @chown(i8* %67, i32 %70, i32 -1)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* @errno, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %267

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %65
  br label %78

78:                                               ; preds = %77, %45
  %79 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %80 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @HOSTFS_ATTR_GID, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %111

85:                                               ; preds = %78
  %86 = load i32, i32* %7, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %91 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @fchown(i32 %89, i32 -1, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load i32, i32* @errno, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %267

98:                                               ; preds = %88
  br label %110

99:                                               ; preds = %85
  %100 = load i8*, i8** %5, align 8
  %101 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %102 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @chown(i8* %100, i32 -1, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load i32, i32* @errno, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %267

109:                                              ; preds = %99
  br label %110

110:                                              ; preds = %109, %98
  br label %111

111:                                              ; preds = %110, %78
  %112 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %113 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @HOSTFS_ATTR_SIZE, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %144

118:                                              ; preds = %111
  %119 = load i32, i32* %7, align 4
  %120 = icmp sge i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %118
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %124 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @ftruncate(i32 %122, i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load i32, i32* @errno, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %4, align 4
  br label %267

131:                                              ; preds = %121
  br label %143

132:                                              ; preds = %118
  %133 = load i8*, i8** %5, align 8
  %134 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %135 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @truncate(i8* %133, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %132
  %140 = load i32, i32* @errno, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %4, align 4
  br label %267

142:                                              ; preds = %132
  br label %143

143:                                              ; preds = %142, %131
  br label %144

144:                                              ; preds = %143, %111
  %145 = load i32, i32* @HOSTFS_ATTR_ATIME_SET, align 4
  %146 = load i32, i32* @HOSTFS_ATTR_MTIME_SET, align 4
  %147 = or i32 %145, %146
  store i32 %147, i32* %12, align 4
  %148 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %149 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %12, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %244

154:                                              ; preds = %144
  %155 = load i8*, i8** %5, align 8
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @stat_file(i8* %155, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.timespec* %9, %struct.timespec* %10, i32* null, i32* null, i32* null, i32 %156)
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = load i32, i32* %11, align 4
  store i32 %161, i32* %4, align 4
  br label %267

162:                                              ; preds = %154
  %163 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %8, i64 0, i64 0
  %166 = getelementptr inbounds %struct.timeval, %struct.timeval* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = sdiv i32 %168, 1000
  %170 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %8, i64 0, i64 0
  %171 = getelementptr inbounds %struct.timeval, %struct.timeval* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 16
  %172 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %8, i64 0, i64 1
  %175 = getelementptr inbounds %struct.timeval, %struct.timeval* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  %176 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = sdiv i32 %177, 1000
  %179 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %8, i64 0, i64 1
  %180 = getelementptr inbounds %struct.timeval, %struct.timeval* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  %181 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %182 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @HOSTFS_ATTR_ATIME_SET, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %201

187:                                              ; preds = %162
  %188 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %189 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %188, i32 0, i32 4
  %190 = getelementptr inbounds %struct.timespec, %struct.timespec* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %8, i64 0, i64 0
  %193 = getelementptr inbounds %struct.timeval, %struct.timeval* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  %194 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %195 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %194, i32 0, i32 4
  %196 = getelementptr inbounds %struct.timespec, %struct.timespec* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = sdiv i32 %197, 1000
  %199 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %8, i64 0, i64 0
  %200 = getelementptr inbounds %struct.timeval, %struct.timeval* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 16
  br label %201

201:                                              ; preds = %187, %162
  %202 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %203 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @HOSTFS_ATTR_MTIME_SET, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %222

208:                                              ; preds = %201
  %209 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %210 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.timespec, %struct.timespec* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %8, i64 0, i64 1
  %214 = getelementptr inbounds %struct.timeval, %struct.timeval* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 4
  %215 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %216 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.timespec, %struct.timespec* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = sdiv i32 %218, 1000
  %220 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %8, i64 0, i64 1
  %221 = getelementptr inbounds %struct.timeval, %struct.timeval* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 8
  br label %222

222:                                              ; preds = %208, %201
  %223 = load i32, i32* %7, align 4
  %224 = icmp sge i32 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %222
  %226 = load i32, i32* %7, align 4
  %227 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %8, i64 0, i64 0
  %228 = call i64 @futimes(i32 %226, %struct.timeval* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %225
  %231 = load i32, i32* @errno, align 4
  %232 = sub nsw i32 0, %231
  store i32 %232, i32* %4, align 4
  br label %267

233:                                              ; preds = %225
  br label %243

234:                                              ; preds = %222
  %235 = load i8*, i8** %5, align 8
  %236 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %8, i64 0, i64 0
  %237 = call i64 @utimes(i8* %235, %struct.timeval* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %234
  %240 = load i32, i32* @errno, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %4, align 4
  br label %267

242:                                              ; preds = %234
  br label %243

243:                                              ; preds = %242, %233
  br label %244

244:                                              ; preds = %243, %144
  %245 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %246 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @HOSTFS_ATTR_ATIME, align 4
  %249 = load i32, i32* @HOSTFS_ATTR_MTIME, align 4
  %250 = or i32 %248, %249
  %251 = and i32 %247, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %266

253:                                              ; preds = %244
  %254 = load i8*, i8** %5, align 8
  %255 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %256 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %255, i32 0, i32 4
  %257 = load %struct.hostfs_iattr*, %struct.hostfs_iattr** %6, align 8
  %258 = getelementptr inbounds %struct.hostfs_iattr, %struct.hostfs_iattr* %257, i32 0, i32 3
  %259 = load i32, i32* %7, align 4
  %260 = call i32 @stat_file(i8* %254, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.timespec* %256, %struct.timespec* %258, i32* null, i32* null, i32* null, i32 %259)
  store i32 %260, i32* %11, align 4
  %261 = load i32, i32* %11, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %265

263:                                              ; preds = %253
  %264 = load i32, i32* %11, align 4
  store i32 %264, i32* %4, align 4
  br label %267

265:                                              ; preds = %253
  br label %266

266:                                              ; preds = %265, %244
  store i32 0, i32* %4, align 4
  br label %267

267:                                              ; preds = %266, %263, %239, %230, %160, %139, %128, %106, %95, %73, %62, %40, %29
  %268 = load i32, i32* %4, align 4
  ret i32 %268
}

declare dso_local i64 @fchmod(i32, i32) #1

declare dso_local i64 @chmod(i8*, i32) #1

declare dso_local i64 @fchown(i32, i32, i32) #1

declare dso_local i64 @chown(i8*, i32, i32) #1

declare dso_local i64 @ftruncate(i32, i32) #1

declare dso_local i64 @truncate(i8*, i32) #1

declare dso_local i32 @stat_file(i8*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.timespec*, %struct.timespec*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @futimes(i32, %struct.timeval*) #1

declare dso_local i64 @utimes(i8*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
