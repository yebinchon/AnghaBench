; ModuleID = '/home/carl/AnghaBench/freebsd/bin/cp/extr_utils.c_setfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/cp/extr_utils.c_setfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.stat = type { i32, i64, i64, i64, %struct.timespec, %struct.timespec }

@setfile.tspec = internal global [2 x %struct.timespec] zeroinitializer, align 4
@S_ISUID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@to = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"utimensat: %s\00", align 1
@errno = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"chown: %s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"chmod: %s\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"chflags: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setfile(%struct.stat* %0, i32 %1) #0 {
  %3 = alloca %struct.stat*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.stat* %0, %struct.stat** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, -1
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.stat*, %struct.stat** %3, align 8
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @S_ISLNK(i32 %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %15, %2
  %22 = phi i1 [ false, %2 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @S_ISUID, align 4
  %25 = load i32, i32* @S_ISGID, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @S_ISVTX, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @S_IRWXU, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @S_IRWXG, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @S_IRWXO, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.stat*, %struct.stat** %3, align 8
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load %struct.stat*, %struct.stat** %3, align 8
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %39, i32 0, i32 5
  %41 = bitcast %struct.timespec* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast ([2 x %struct.timespec]* @setfile.tspec to i8*), i8* align 4 %41, i64 4, i1 false)
  %42 = load %struct.stat*, %struct.stat** %3, align 8
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %42, i32 0, i32 4
  %44 = bitcast %struct.timespec* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.timespec* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @setfile.tspec, i64 0, i64 1) to i8*), i8* align 8 %44, i64 4, i1 false)
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %21
  %48 = load i32, i32* %4, align 4
  %49 = call i64 @futimens(i32 %48, %struct.timespec* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @setfile.tspec, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %63, label %66

51:                                               ; preds = %21
  %52 = load i32, i32* @AT_FDCWD, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @to, i32 0, i32 0), align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @AT_SYMLINK_NOFOLLOW, align 4
  br label %59

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ]
  %61 = call i64 @utimensat(i32 %52, i32 %53, %struct.timespec* getelementptr inbounds ([2 x %struct.timespec], [2 x %struct.timespec]* @setfile.tspec, i64 0, i64 0), i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59, %47
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @to, i32 0, i32 0), align 4
  %65 = call i32 @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %64)
  store i32 1, i32* %6, align 4
  br label %66

66:                                               ; preds = %63, %59, %47
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* %4, align 4
  %71 = call i64 @fstat(i32 %70, %struct.stat* %5)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %84, label %85

73:                                               ; preds = %66
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @to, i32 0, i32 0), align 4
  %78 = call i64 @lstat(i32 %77, %struct.stat* %5)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %84, label %85

80:                                               ; preds = %73
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @to, i32 0, i32 0), align 4
  %82 = call i64 @stat(i32 %81, %struct.stat* %5)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80, %76, %69
  store i32 0, i32* %7, align 4
  br label %100

85:                                               ; preds = %80, %76, %69
  store i32 1, i32* %7, align 4
  %86 = load i32, i32* @S_ISUID, align 4
  %87 = load i32, i32* @S_ISGID, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @S_ISVTX, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @S_IRWXU, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @S_IRWXG, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @S_IRWXO, align 4
  %96 = or i32 %94, %95
  %97 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, %96
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %85, %84
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %100
  %104 = load %struct.stat*, %struct.stat** %3, align 8
  %105 = getelementptr inbounds %struct.stat, %struct.stat* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %106, %108
  br i1 %109, label %117, label %110

110:                                              ; preds = %103
  %111 = load %struct.stat*, %struct.stat** %3, align 8
  %112 = getelementptr inbounds %struct.stat, %struct.stat* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %113, %115
  br i1 %116, label %117, label %170

117:                                              ; preds = %110, %103, %100
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  %121 = load i32, i32* %4, align 4
  %122 = load %struct.stat*, %struct.stat** %3, align 8
  %123 = getelementptr inbounds %struct.stat, %struct.stat* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.stat*, %struct.stat** %3, align 8
  %126 = getelementptr inbounds %struct.stat, %struct.stat* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @fchown(i32 %121, i64 %124, i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %153, label %169

130:                                              ; preds = %117
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %130
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @to, i32 0, i32 0), align 4
  %135 = load %struct.stat*, %struct.stat** %3, align 8
  %136 = getelementptr inbounds %struct.stat, %struct.stat* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.stat*, %struct.stat** %3, align 8
  %139 = getelementptr inbounds %struct.stat, %struct.stat* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = call i64 @lchown(i32 %134, i64 %137, i64 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %153, label %169

143:                                              ; preds = %130
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @to, i32 0, i32 0), align 4
  %145 = load %struct.stat*, %struct.stat** %3, align 8
  %146 = getelementptr inbounds %struct.stat, %struct.stat* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load %struct.stat*, %struct.stat** %3, align 8
  %149 = getelementptr inbounds %struct.stat, %struct.stat* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = call i64 @chown(i32 %144, i64 %147, i64 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %169

153:                                              ; preds = %143, %133, %120
  %154 = load i64, i64* @errno, align 8
  %155 = load i64, i64* @EPERM, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @to, i32 0, i32 0), align 4
  %159 = call i32 @warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %158)
  store i32 1, i32* %6, align 4
  br label %160

160:                                              ; preds = %157, %153
  %161 = load i32, i32* @S_ISUID, align 4
  %162 = load i32, i32* @S_ISGID, align 4
  %163 = or i32 %161, %162
  %164 = xor i32 %163, -1
  %165 = load %struct.stat*, %struct.stat** %3, align 8
  %166 = getelementptr inbounds %struct.stat, %struct.stat* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = and i32 %167, %164
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %160, %143, %133, %120
  br label %170

170:                                              ; preds = %169, %110
  %171 = load i32, i32* %7, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %170
  %174 = load %struct.stat*, %struct.stat** %3, align 8
  %175 = getelementptr inbounds %struct.stat, %struct.stat* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %176, %178
  br i1 %179, label %180, label %211

180:                                              ; preds = %173, %170
  %181 = load i32, i32* %9, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %180
  %184 = load i32, i32* %4, align 4
  %185 = load %struct.stat*, %struct.stat** %3, align 8
  %186 = getelementptr inbounds %struct.stat, %struct.stat* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i64 @fchmod(i32 %184, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %207, label %210

190:                                              ; preds = %180
  %191 = load i32, i32* %8, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %190
  %194 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @to, i32 0, i32 0), align 4
  %195 = load %struct.stat*, %struct.stat** %3, align 8
  %196 = getelementptr inbounds %struct.stat, %struct.stat* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i64 @lchmod(i32 %194, i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %207, label %210

200:                                              ; preds = %190
  %201 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @to, i32 0, i32 0), align 4
  %202 = load %struct.stat*, %struct.stat** %3, align 8
  %203 = getelementptr inbounds %struct.stat, %struct.stat* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i64 @chmod(i32 %201, i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %200, %193, %183
  %208 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @to, i32 0, i32 0), align 4
  %209 = call i32 @warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %208)
  store i32 1, i32* %6, align 4
  br label %210

210:                                              ; preds = %207, %200, %193, %183
  br label %211

211:                                              ; preds = %210, %173
  %212 = load i32, i32* %7, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %211
  %215 = load %struct.stat*, %struct.stat** %3, align 8
  %216 = getelementptr inbounds %struct.stat, %struct.stat* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  %218 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %217, %219
  br i1 %220, label %221, label %252

221:                                              ; preds = %214, %211
  %222 = load i32, i32* %9, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %221
  %225 = load i32, i32* %4, align 4
  %226 = load %struct.stat*, %struct.stat** %3, align 8
  %227 = getelementptr inbounds %struct.stat, %struct.stat* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = call i64 @fchflags(i32 %225, i64 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %248, label %251

231:                                              ; preds = %221
  %232 = load i32, i32* %8, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %231
  %235 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @to, i32 0, i32 0), align 4
  %236 = load %struct.stat*, %struct.stat** %3, align 8
  %237 = getelementptr inbounds %struct.stat, %struct.stat* %236, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = call i64 @lchflags(i32 %235, i64 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %248, label %251

241:                                              ; preds = %231
  %242 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @to, i32 0, i32 0), align 4
  %243 = load %struct.stat*, %struct.stat** %3, align 8
  %244 = getelementptr inbounds %struct.stat, %struct.stat* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = call i64 @chflags(i32 %242, i64 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %241, %234, %224
  %249 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @to, i32 0, i32 0), align 4
  %250 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %249)
  store i32 1, i32* %6, align 4
  br label %251

251:                                              ; preds = %248, %241, %234, %224
  br label %252

252:                                              ; preds = %251, %214
  %253 = load i32, i32* %6, align 4
  ret i32 %253
}

declare dso_local i64 @S_ISLNK(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @futimens(i32, %struct.timespec*) #1

declare dso_local i64 @utimensat(i32, i32, %struct.timespec*, i32) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @lstat(i32, %struct.stat*) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i64 @fchown(i32, i64, i64) #1

declare dso_local i64 @lchown(i32, i64, i64) #1

declare dso_local i64 @chown(i32, i64, i64) #1

declare dso_local i64 @fchmod(i32, i32) #1

declare dso_local i64 @lchmod(i32, i32) #1

declare dso_local i64 @chmod(i32, i32) #1

declare dso_local i64 @fchflags(i32, i64) #1

declare dso_local i64 @lchflags(i32, i64) #1

declare dso_local i64 @chflags(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
