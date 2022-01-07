; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_namei.c_cachefiles_bury_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_namei.c_cachefiles_bury_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cachefiles_cache = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.dentry = type { %struct.TYPE_9__*, %struct.dentry*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c",'%*.*s','%*.*s'\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"remove %p from %p\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"unlink stale object\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Unlink failed\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"move stale object to graveyard\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%08x%08x\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c" = 0 [culled?]\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Graveyard no longer a directory\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"May not make directory loop\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Mountpoint in cache\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c" = -ENOMEM\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Lookup error %ld\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Mountpoint in graveyard\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Rename failed with error %d\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c" = 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cachefiles_cache*, %struct.dentry*, %struct.dentry*, i32)* @cachefiles_bury_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cachefiles_bury_object(%struct.cachefiles_cache* %0, %struct.dentry* %1, %struct.dentry* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cachefiles_cache*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca [17 x i8], align 16
  %13 = alloca i32, align 4
  store %struct.cachefiles_cache* %0, %struct.cachefiles_cache** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store %struct.dentry* %2, %struct.dentry** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.dentry*, %struct.dentry** %7, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dentry*, %struct.dentry** %7, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dentry*, %struct.dentry** %7, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.dentry*, %struct.dentry** %8, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dentry*, %struct.dentry** %8, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dentry*, %struct.dentry** %8, align 8
  %35 = getelementptr inbounds %struct.dentry, %struct.dentry* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @_enter(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %21, i32 %25, i32 %29, i32 %33, i32 %37)
  %39 = load %struct.dentry*, %struct.dentry** %8, align 8
  %40 = load %struct.dentry*, %struct.dentry** %7, align 8
  %41 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %39, %struct.dentry* %40)
  %42 = load %struct.dentry*, %struct.dentry** %8, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @S_ISDIR(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %79, label %49

49:                                               ; preds = %4
  %50 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.dentry*, %struct.dentry** %7, align 8
  %52 = getelementptr inbounds %struct.dentry, %struct.dentry* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = load %struct.dentry*, %struct.dentry** %8, align 8
  %55 = call i32 @vfs_unlink(%struct.TYPE_9__* %53, %struct.dentry* %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %60 = load %struct.dentry*, %struct.dentry** %8, align 8
  %61 = call i32 @cachefiles_mark_object_buried(%struct.cachefiles_cache* %59, %struct.dentry* %60)
  br label %62

62:                                               ; preds = %58, %49
  %63 = load %struct.dentry*, %struct.dentry** %7, align 8
  %64 = getelementptr inbounds %struct.dentry, %struct.dentry* %63, i32 0, i32 0
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %74 = call i32 (%struct.cachefiles_cache*, i8*, ...) @cachefiles_io_error(%struct.cachefiles_cache* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %62
  %76 = load i32, i32* %13, align 4
  %77 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %5, align 4
  br label %278

79:                                               ; preds = %4
  %80 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %81 = load %struct.dentry*, %struct.dentry** %7, align 8
  %82 = getelementptr inbounds %struct.dentry, %struct.dentry* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  br label %86

86:                                               ; preds = %198, %79
  %87 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %88 = call i64 (...) @get_seconds()
  %89 = trunc i64 %88 to i32
  %90 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %91 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %90, i32 0, i32 1
  %92 = call i64 @atomic_inc_return(i32* %91)
  %93 = trunc i64 %92 to i32
  %94 = call i32 @sprintf(i8* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %89, i32 %93)
  %95 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %96 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %95, i32 0, i32 0
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = load %struct.dentry*, %struct.dentry** %7, align 8
  %99 = call %struct.dentry* @lock_rename(%struct.TYPE_11__* %97, %struct.dentry* %98)
  store %struct.dentry* %99, %struct.dentry** %11, align 8
  %100 = load %struct.dentry*, %struct.dentry** %8, align 8
  %101 = getelementptr inbounds %struct.dentry, %struct.dentry* %100, i32 0, i32 1
  %102 = load %struct.dentry*, %struct.dentry** %101, align 8
  %103 = load %struct.dentry*, %struct.dentry** %7, align 8
  %104 = icmp ne %struct.dentry* %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %86
  %106 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %107 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %106, i32 0, i32 0
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = load %struct.dentry*, %struct.dentry** %7, align 8
  %110 = call i32 @unlock_rename(%struct.TYPE_11__* %108, %struct.dentry* %109)
  %111 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %278

112:                                              ; preds = %86
  %113 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %114 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %113, i32 0, i32 0
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @S_ISDIR(i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %132, label %122

122:                                              ; preds = %112
  %123 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %124 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %123, i32 0, i32 0
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = load %struct.dentry*, %struct.dentry** %7, align 8
  %127 = call i32 @unlock_rename(%struct.TYPE_11__* %125, %struct.dentry* %126)
  %128 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %129 = call i32 (%struct.cachefiles_cache*, i8*, ...) @cachefiles_io_error(%struct.cachefiles_cache* %128, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %130 = load i32, i32* @EIO, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %5, align 4
  br label %278

132:                                              ; preds = %112
  %133 = load %struct.dentry*, %struct.dentry** %11, align 8
  %134 = load %struct.dentry*, %struct.dentry** %8, align 8
  %135 = icmp eq %struct.dentry* %133, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %132
  %137 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %138 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %137, i32 0, i32 0
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = load %struct.dentry*, %struct.dentry** %7, align 8
  %141 = call i32 @unlock_rename(%struct.TYPE_11__* %139, %struct.dentry* %140)
  %142 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %143 = call i32 (%struct.cachefiles_cache*, i8*, ...) @cachefiles_io_error(%struct.cachefiles_cache* %142, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %144 = load i32, i32* @EIO, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %5, align 4
  br label %278

146:                                              ; preds = %132
  %147 = load %struct.dentry*, %struct.dentry** %8, align 8
  %148 = call i64 @d_mountpoint(%struct.dentry* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %146
  %151 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %152 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %151, i32 0, i32 0
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %152, align 8
  %154 = load %struct.dentry*, %struct.dentry** %7, align 8
  %155 = call i32 @unlock_rename(%struct.TYPE_11__* %153, %struct.dentry* %154)
  %156 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %157 = call i32 (%struct.cachefiles_cache*, i8*, ...) @cachefiles_io_error(%struct.cachefiles_cache* %156, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %158 = load i32, i32* @EIO, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %5, align 4
  br label %278

160:                                              ; preds = %146
  %161 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %162 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %163 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %162, i32 0, i32 0
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %163, align 8
  %165 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %166 = call i32 @strlen(i8* %165)
  %167 = call %struct.dentry* @lookup_one_len(i8* %161, %struct.TYPE_11__* %164, i32 %166)
  store %struct.dentry* %167, %struct.dentry** %10, align 8
  %168 = load %struct.dentry*, %struct.dentry** %10, align 8
  %169 = call i64 @IS_ERR(%struct.dentry* %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %193

171:                                              ; preds = %160
  %172 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %173 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %172, i32 0, i32 0
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %173, align 8
  %175 = load %struct.dentry*, %struct.dentry** %7, align 8
  %176 = call i32 @unlock_rename(%struct.TYPE_11__* %174, %struct.dentry* %175)
  %177 = load %struct.dentry*, %struct.dentry** %10, align 8
  %178 = call i32 @PTR_ERR(%struct.dentry* %177)
  %179 = load i32, i32* @ENOMEM, align 4
  %180 = sub nsw i32 0, %179
  %181 = icmp eq i32 %178, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %171
  %183 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %184 = load i32, i32* @ENOMEM, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %5, align 4
  br label %278

186:                                              ; preds = %171
  %187 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %188 = load %struct.dentry*, %struct.dentry** %10, align 8
  %189 = call i32 @PTR_ERR(%struct.dentry* %188)
  %190 = call i32 (%struct.cachefiles_cache*, i8*, ...) @cachefiles_io_error(%struct.cachefiles_cache* %187, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* @EIO, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %5, align 4
  br label %278

193:                                              ; preds = %160
  %194 = load %struct.dentry*, %struct.dentry** %10, align 8
  %195 = getelementptr inbounds %struct.dentry, %struct.dentry* %194, i32 0, i32 0
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %195, align 8
  %197 = icmp ne %struct.TYPE_9__* %196, null
  br i1 %197, label %198, label %207

198:                                              ; preds = %193
  %199 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %200 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %199, i32 0, i32 0
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %200, align 8
  %202 = load %struct.dentry*, %struct.dentry** %7, align 8
  %203 = call i32 @unlock_rename(%struct.TYPE_11__* %201, %struct.dentry* %202)
  %204 = load %struct.dentry*, %struct.dentry** %10, align 8
  %205 = call i32 @dput(%struct.dentry* %204)
  store %struct.dentry* null, %struct.dentry** %10, align 8
  %206 = call i32 (...) @cond_resched()
  br label %86

207:                                              ; preds = %193
  %208 = load %struct.dentry*, %struct.dentry** %10, align 8
  %209 = call i64 @d_mountpoint(%struct.dentry* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %223

211:                                              ; preds = %207
  %212 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %213 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %212, i32 0, i32 0
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %213, align 8
  %215 = load %struct.dentry*, %struct.dentry** %7, align 8
  %216 = call i32 @unlock_rename(%struct.TYPE_11__* %214, %struct.dentry* %215)
  %217 = load %struct.dentry*, %struct.dentry** %10, align 8
  %218 = call i32 @dput(%struct.dentry* %217)
  %219 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %220 = call i32 (%struct.cachefiles_cache*, i8*, ...) @cachefiles_io_error(%struct.cachefiles_cache* %219, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  %221 = load i32, i32* @EIO, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %5, align 4
  br label %278

223:                                              ; preds = %207
  %224 = load %struct.dentry*, %struct.dentry** %11, align 8
  %225 = load %struct.dentry*, %struct.dentry** %10, align 8
  %226 = icmp eq %struct.dentry* %224, %225
  br i1 %226, label %227, label %239

227:                                              ; preds = %223
  %228 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %229 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %228, i32 0, i32 0
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %229, align 8
  %231 = load %struct.dentry*, %struct.dentry** %7, align 8
  %232 = call i32 @unlock_rename(%struct.TYPE_11__* %230, %struct.dentry* %231)
  %233 = load %struct.dentry*, %struct.dentry** %10, align 8
  %234 = call i32 @dput(%struct.dentry* %233)
  %235 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %236 = call i32 (%struct.cachefiles_cache*, i8*, ...) @cachefiles_io_error(%struct.cachefiles_cache* %235, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %237 = load i32, i32* @EIO, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %5, align 4
  br label %278

239:                                              ; preds = %223
  %240 = load %struct.dentry*, %struct.dentry** %7, align 8
  %241 = getelementptr inbounds %struct.dentry, %struct.dentry* %240, i32 0, i32 0
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %241, align 8
  %243 = load %struct.dentry*, %struct.dentry** %8, align 8
  %244 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %245 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %244, i32 0, i32 0
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %247, align 8
  %249 = load %struct.dentry*, %struct.dentry** %10, align 8
  %250 = call i32 @vfs_rename(%struct.TYPE_9__* %242, %struct.dentry* %243, %struct.TYPE_10__* %248, %struct.dentry* %249)
  store i32 %250, i32* %13, align 4
  %251 = load i32, i32* %13, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %262

253:                                              ; preds = %239
  %254 = load i32, i32* %13, align 4
  %255 = load i32, i32* @ENOMEM, align 4
  %256 = sub nsw i32 0, %255
  %257 = icmp ne i32 %254, %256
  br i1 %257, label %258, label %262

258:                                              ; preds = %253
  %259 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %260 = load i32, i32* %13, align 4
  %261 = call i32 (%struct.cachefiles_cache*, i8*, ...) @cachefiles_io_error(%struct.cachefiles_cache* %259, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 %260)
  br label %262

262:                                              ; preds = %258, %253, %239
  %263 = load i32, i32* %9, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %262
  %266 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %267 = load %struct.dentry*, %struct.dentry** %8, align 8
  %268 = call i32 @cachefiles_mark_object_buried(%struct.cachefiles_cache* %266, %struct.dentry* %267)
  br label %269

269:                                              ; preds = %265, %262
  %270 = load %struct.cachefiles_cache*, %struct.cachefiles_cache** %6, align 8
  %271 = getelementptr inbounds %struct.cachefiles_cache, %struct.cachefiles_cache* %270, i32 0, i32 0
  %272 = load %struct.TYPE_11__*, %struct.TYPE_11__** %271, align 8
  %273 = load %struct.dentry*, %struct.dentry** %7, align 8
  %274 = call i32 @unlock_rename(%struct.TYPE_11__* %272, %struct.dentry* %273)
  %275 = load %struct.dentry*, %struct.dentry** %10, align 8
  %276 = call i32 @dput(%struct.dentry* %275)
  %277 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %278

278:                                              ; preds = %269, %227, %211, %186, %182, %150, %136, %122, %105, %75
  %279 = load i32, i32* %5, align 4
  ret i32 %279
}

declare dso_local i32 @_enter(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @_debug(i8*, ...) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @vfs_unlink(%struct.TYPE_9__*, %struct.dentry*) #1

declare dso_local i32 @cachefiles_mark_object_buried(%struct.cachefiles_cache*, %struct.dentry*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cachefiles_io_error(%struct.cachefiles_cache*, i8*, ...) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i64 @get_seconds(...) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local %struct.dentry* @lock_rename(%struct.TYPE_11__*, %struct.dentry*) #1

declare dso_local i32 @unlock_rename(%struct.TYPE_11__*, %struct.dentry*) #1

declare dso_local i64 @d_mountpoint(%struct.dentry*) #1

declare dso_local %struct.dentry* @lookup_one_len(i8*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @vfs_rename(%struct.TYPE_9__*, %struct.dentry*, %struct.TYPE_10__*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
