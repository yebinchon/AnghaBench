; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_namei.c_cachefiles_get_directory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_namei.c_cachefiles_get_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cachefiles_cache = type { i32 }
%struct.dentry = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c",,%s\00", align 1
@jiffies = common dso_local global i64 0, align 8
@cachefiles_lookup_histogram = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"subdir -> %p %s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"positive\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"negative\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"attempt mkdir\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"mkdir -> %p{%p{ino=%lu}}\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"%s is not a directory\00", align 1
@EIO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c" = [%lu]\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c" = %d [check]\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"mkdir %s failed with error %d\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Lookup %s failed with error %d\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c" = -ENOMEM\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @cachefiles_get_directory(%struct.cachefiles_cache* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.cachefiles_cache*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.cachefiles_cache* %0, %struct.cachefiles_cache** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @_enter(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load %struct.dentry*, %struct.dentry** %6, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i64, i64* @jiffies, align 8
  store i64 %18, i64* %9, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load %struct.dentry*, %struct.dentry** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @strlen(i8* %21)
  %23 = call %struct.dentry* @lookup_one_len(i8* %19, %struct.dentry* %20, i32 %22)
  store %struct.dentry* %23, %struct.dentry** %8, align 8
  %24 = load i32, i32* @cachefiles_lookup_histogram, align 4
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @cachefiles_hist(i32 %24, i64 %25)
  %27 = load %struct.dentry*, %struct.dentry** %8, align 8
  %28 = call i64 @IS_ERR(%struct.dentry* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %3
  %31 = load %struct.dentry*, %struct.dentry** %8, align 8
  %32 = call i32 @PTR_ERR(%struct.dentry* %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %227

37:                                               ; preds = %30
  br label %214

38:                                               ; preds = %3
  %39 = load %struct.dentry*, %struct.dentry** %8, align 8
  %40 = load %struct.dentry*, %struct.dentry** %8, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = icmp ne %struct.TYPE_5__* %42, null
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %46 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %39, i8* %45)
  %47 = load %struct.dentry*, %struct.dentry** %8, align 8
  %48 = getelementptr inbounds %struct.dentry, %struct.dentry* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = icmp ne %struct.TYPE_5__* %49, null
  br i1 %50, label %82, label %51

51:                                               ; preds = %38
  %52 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %5, align 8
  %53 = call i32 @cachefiles_has_space(%struct.cachefiles_cache* %52, i32 1, i32 0)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %201

57:                                               ; preds = %51
  %58 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %59 = load %struct.dentry*, %struct.dentry** %6, align 8
  %60 = getelementptr inbounds %struct.dentry, %struct.dentry* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load %struct.dentry*, %struct.dentry** %8, align 8
  %63 = call i32 @vfs_mkdir(%struct.TYPE_5__* %61, %struct.dentry* %62, i32 448)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %201

67:                                               ; preds = %57
  %68 = load %struct.dentry*, %struct.dentry** %8, align 8
  %69 = getelementptr inbounds %struct.dentry, %struct.dentry* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = call i32 @ASSERT(%struct.TYPE_5__* %70)
  %72 = load %struct.dentry*, %struct.dentry** %8, align 8
  %73 = load %struct.dentry*, %struct.dentry** %8, align 8
  %74 = getelementptr inbounds %struct.dentry, %struct.dentry* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load %struct.dentry*, %struct.dentry** %8, align 8
  %77 = getelementptr inbounds %struct.dentry, %struct.dentry* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), %struct.dentry* %72, %struct.TYPE_5__* %75, i32 %80)
  br label %82

82:                                               ; preds = %67, %38
  %83 = load %struct.dentry*, %struct.dentry** %6, align 8
  %84 = getelementptr inbounds %struct.dentry, %struct.dentry* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  %88 = load %struct.dentry*, %struct.dentry** %8, align 8
  %89 = getelementptr inbounds %struct.dentry, %struct.dentry* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = call i32 @ASSERT(%struct.TYPE_5__* %90)
  %92 = load %struct.dentry*, %struct.dentry** %8, align 8
  %93 = getelementptr inbounds %struct.dentry, %struct.dentry* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @S_ISDIR(i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %82
  %100 = load i8*, i8** %7, align 8
  %101 = call i32 (i8*, i8*, ...) @kerror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %100)
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %10, align 4
  br label %194

104:                                              ; preds = %82
  %105 = load i32, i32* @EPERM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %10, align 4
  %107 = load %struct.dentry*, %struct.dentry** %8, align 8
  %108 = getelementptr inbounds %struct.dentry, %struct.dentry* %107, i32 0, i32 0
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = icmp ne %struct.TYPE_4__* %111, null
  br i1 %112, label %113, label %185

113:                                              ; preds = %104
  %114 = load %struct.dentry*, %struct.dentry** %8, align 8
  %115 = getelementptr inbounds %struct.dentry, %struct.dentry* %114, i32 0, i32 0
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %185

122:                                              ; preds = %113
  %123 = load %struct.dentry*, %struct.dentry** %8, align 8
  %124 = getelementptr inbounds %struct.dentry, %struct.dentry* %123, i32 0, i32 0
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %185

131:                                              ; preds = %122
  %132 = load %struct.dentry*, %struct.dentry** %8, align 8
  %133 = getelementptr inbounds %struct.dentry, %struct.dentry* %132, i32 0, i32 0
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %185

140:                                              ; preds = %131
  %141 = load %struct.dentry*, %struct.dentry** %8, align 8
  %142 = getelementptr inbounds %struct.dentry, %struct.dentry* %141, i32 0, i32 0
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %185

149:                                              ; preds = %140
  %150 = load %struct.dentry*, %struct.dentry** %8, align 8
  %151 = getelementptr inbounds %struct.dentry, %struct.dentry* %150, i32 0, i32 0
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %185

158:                                              ; preds = %149
  %159 = load %struct.dentry*, %struct.dentry** %8, align 8
  %160 = getelementptr inbounds %struct.dentry, %struct.dentry* %159, i32 0, i32 0
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %185

167:                                              ; preds = %158
  %168 = load %struct.dentry*, %struct.dentry** %8, align 8
  %169 = getelementptr inbounds %struct.dentry, %struct.dentry* %168, i32 0, i32 0
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %167
  %177 = load %struct.dentry*, %struct.dentry** %8, align 8
  %178 = getelementptr inbounds %struct.dentry, %struct.dentry* %177, i32 0, i32 0
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %176, %167, %158, %149, %140, %131, %122, %113, %104
  br label %194

186:                                              ; preds = %176
  %187 = load %struct.dentry*, %struct.dentry** %8, align 8
  %188 = getelementptr inbounds %struct.dentry, %struct.dentry* %187, i32 0, i32 0
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %191)
  %193 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %193, %struct.dentry** %4, align 8
  br label %237

194:                                              ; preds = %185, %99
  %195 = load %struct.dentry*, %struct.dentry** %8, align 8
  %196 = call i32 @dput(%struct.dentry* %195)
  %197 = load i32, i32* %10, align 4
  %198 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %197)
  %199 = load i32, i32* %10, align 4
  %200 = call %struct.dentry* @ERR_PTR(i32 %199)
  store %struct.dentry* %200, %struct.dentry** %4, align 8
  br label %237

201:                                              ; preds = %66, %56
  %202 = load %struct.dentry*, %struct.dentry** %6, align 8
  %203 = getelementptr inbounds %struct.dentry, %struct.dentry* %202, i32 0, i32 0
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  %206 = call i32 @mutex_unlock(i32* %205)
  %207 = load %struct.dentry*, %struct.dentry** %8, align 8
  %208 = call i32 @dput(%struct.dentry* %207)
  %209 = load i8*, i8** %7, align 8
  %210 = load i32, i32* %10, align 4
  %211 = call i32 (i8*, i8*, ...) @kerror(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %209, i32 %210)
  %212 = load i32, i32* %10, align 4
  %213 = call %struct.dentry* @ERR_PTR(i32 %212)
  store %struct.dentry* %213, %struct.dentry** %4, align 8
  br label %237

214:                                              ; preds = %37
  %215 = load %struct.dentry*, %struct.dentry** %6, align 8
  %216 = getelementptr inbounds %struct.dentry, %struct.dentry* %215, i32 0, i32 0
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 0
  %219 = call i32 @mutex_unlock(i32* %218)
  %220 = load %struct.dentry*, %struct.dentry** %8, align 8
  %221 = call i32 @PTR_ERR(%struct.dentry* %220)
  store i32 %221, i32* %10, align 4
  %222 = load i8*, i8** %7, align 8
  %223 = load i32, i32* %10, align 4
  %224 = call i32 (i8*, i8*, ...) @kerror(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i8* %222, i32 %223)
  %225 = load i32, i32* %10, align 4
  %226 = call %struct.dentry* @ERR_PTR(i32 %225)
  store %struct.dentry* %226, %struct.dentry** %4, align 8
  br label %237

227:                                              ; preds = %36
  %228 = load %struct.dentry*, %struct.dentry** %6, align 8
  %229 = getelementptr inbounds %struct.dentry, %struct.dentry* %228, i32 0, i32 0
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 0
  %232 = call i32 @mutex_unlock(i32* %231)
  %233 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %234 = load i32, i32* @ENOMEM, align 4
  %235 = sub nsw i32 0, %234
  %236 = call %struct.dentry* @ERR_PTR(i32 %235)
  store %struct.dentry* %236, %struct.dentry** %4, align 8
  br label %237

237:                                              ; preds = %227, %214, %201, %194, %186
  %238 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %238
}

declare dso_local i32 @_enter(i8*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.dentry*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cachefiles_hist(i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @_debug(i8*, ...) #1

declare dso_local i32 @cachefiles_has_space(%struct.cachefiles_cache*, i32, i32) #1

declare dso_local i32 @vfs_mkdir(%struct.TYPE_5__*, %struct.dentry*, i32) #1

declare dso_local i32 @ASSERT(%struct.TYPE_5__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @kerror(i8*, i8*, ...) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
