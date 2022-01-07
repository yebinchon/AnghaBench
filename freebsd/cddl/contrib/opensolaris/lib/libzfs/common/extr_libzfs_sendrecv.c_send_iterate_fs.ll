; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_send_iterate_fs.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_send_iterate_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i64, i64, i64* }
%struct.TYPE_15__ = type { i64, i64, i64, i64, i32*, i32*, i32*, i32, i32*, i32, i64, i32* }

@stderr = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"skipping dataset %s: snapshot %s does not exist\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"cannot send %s@%s%s: snapshot %s@%s does not exist\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" recursively\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"parentfromsnap\00", align 1
@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"props\00", align 1
@send_iterate_snap = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"snaps\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"snapprops\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*)* @send_iterate_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_iterate_fs(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca [64 x i8], align 16
  %19 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i8* %1, i8** %4, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %5, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %11, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %12, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %13, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %14, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %15, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 11
  %47 = load i32*, i32** %46, align 8
  %48 = call i64 @get_snap_txg(i32 %41, i32 %44, i32* %47)
  store i64 %48, i64* %16, align 8
  %49 = load i64, i64* %16, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %2
  %52 = load i64, i64* %16, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %51, %2
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 8
  %64 = load i32*, i32** %63, align 8
  %65 = call i64 @get_snap_txg(i32 %58, i32 %61, i32* %64)
  store i64 %65, i64* %17, align 8
  %66 = load i64, i64* %17, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %55
  %69 = load i64, i64* %17, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %68, %55
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 8
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %136

77:                                               ; preds = %72
  %78 = load i64, i64* %17, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %136

80:                                               ; preds = %77
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %108

85:                                               ; preds = %80
  %86 = load i64, i64* %14, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %86, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %85
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 10
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %91
  %97 = load i32, i32* @stderr, align 4
  %98 = load i32, i32* @TEXT_DOMAIN, align 4
  %99 = call i8* @dgettext(i32 %98, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 8
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 (i32, i8*, i32, i32*, ...) @fprintf(i32 %97, i8* %99, i32 %102, i32* %105)
  br label %107

107:                                              ; preds = %96, %91
  br label %135

108:                                              ; preds = %85, %80
  %109 = load i32, i32* @stderr, align 4
  %110 = load i32, i32* @TEXT_DOMAIN, align 4
  %111 = call i8* @dgettext(i32 %110, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 9
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 8
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %108
  %123 = load i32, i32* @TEXT_DOMAIN, align 4
  %124 = call i8* @dgettext(i32 %123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %126

125:                                              ; preds = %108
  br label %126

126:                                              ; preds = %125, %122
  %127 = phi i8* [ %124, %122 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %125 ]
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 8
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 (i32, i8*, i32, i32*, ...) @fprintf(i32 %109, i8* %111, i32 %114, i32* %117, i8* %127, i32 %130, i32* %133)
  store i32 -1, i32* %8, align 4
  br label %135

135:                                              ; preds = %126, %107
  br label %285

136:                                              ; preds = %77, %72
  %137 = call i32* (...) @fnvlist_alloc()
  store i32* %137, i32** %6, align 8
  %138 = load i32*, i32** %6, align 8
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @fnvlist_add_string(i32* %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %141)
  %143 = load i32*, i32** %6, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @fnvlist_add_uint64(i32* %143, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i64 %146)
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 2
  %151 = load i64*, i64** %150, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %178

155:                                              ; preds = %136
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 2
  %162 = load i64*, i64** %161, align 8
  %163 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %164 = call %struct.TYPE_14__* @zfs_open(i32 %158, i64* %162, i32 %163)
  store %struct.TYPE_14__* %164, %struct.TYPE_14__** %19, align 8
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %166 = icmp eq %struct.TYPE_14__* %165, null
  br i1 %166, label %167, label %168

167:                                              ; preds = %155
  store i32 -1, i32* %8, align 4
  br label %285

168:                                              ; preds = %155
  %169 = load i32*, i32** %6, align 8
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = call i64 @nvlist_add_uint64(i32* %169, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64 %173)
  %175 = icmp eq i64 0, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 @VERIFY(i32 %176)
  br label %178

178:                                              ; preds = %168, %136
  %179 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %180 = call i64 @nvlist_alloc(i32** %7, i32 %179, i32 0)
  %181 = icmp eq i64 0, %180
  %182 = zext i1 %181 to i32
  %183 = call i32 @VERIFY(i32 %182)
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %185 = load i32*, i32** %7, align 8
  %186 = call i32 @send_iterate_prop(%struct.TYPE_14__* %184, i32* %185)
  %187 = load i32*, i32** %6, align 8
  %188 = load i32*, i32** %7, align 8
  %189 = call i64 @nvlist_add_nvlist(i32* %187, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32* %188)
  %190 = icmp eq i64 0, %189
  %191 = zext i1 %190 to i32
  %192 = call i32 @VERIFY(i32 %191)
  %193 = load i32*, i32** %7, align 8
  %194 = call i32 @nvlist_free(i32* %193)
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %178
  %200 = load i64, i64* %16, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %199
  %203 = load i64, i64* %16, align 8
  store i64 %203, i64* %9, align 8
  br label %204

204:                                              ; preds = %202, %199, %178
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 7
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %214, label %209

209:                                              ; preds = %204
  %210 = load i64, i64* %17, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %209
  %213 = load i64, i64* %17, align 8
  store i64 %213, i64* %10, align 8
  br label %214

214:                                              ; preds = %212, %209, %204
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 0
  store i64 0, i64* %216, align 8
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 6
  %219 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %220 = call i64 @nvlist_alloc(i32** %218, i32 %219, i32 0)
  %221 = icmp eq i64 0, %220
  %222 = zext i1 %221 to i32
  %223 = call i32 @VERIFY(i32 %222)
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 5
  %226 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %227 = call i64 @nvlist_alloc(i32** %225, i32 %226, i32 0)
  %228 = icmp eq i64 0, %227
  %229 = zext i1 %228 to i32
  %230 = call i32 @VERIFY(i32 %229)
  %231 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %232 = load i32, i32* @send_iterate_snap, align 4
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %234 = load i64, i64* %9, align 8
  %235 = load i64, i64* %10, align 8
  %236 = call i32 @zfs_iter_snapshots_sorted(%struct.TYPE_14__* %231, i32 %232, %struct.TYPE_15__* %233, i64 %234, i64 %235)
  %237 = load i32*, i32** %6, align 8
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 6
  %240 = load i32*, i32** %239, align 8
  %241 = call i64 @nvlist_add_nvlist(i32* %237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32* %240)
  %242 = icmp eq i64 0, %241
  %243 = zext i1 %242 to i32
  %244 = call i32 @VERIFY(i32 %243)
  %245 = load i32*, i32** %6, align 8
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 5
  %248 = load i32*, i32** %247, align 8
  %249 = call i64 @nvlist_add_nvlist(i32* %245, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32* %248)
  %250 = icmp eq i64 0, %249
  %251 = zext i1 %250 to i32
  %252 = call i32 @VERIFY(i32 %251)
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i32 0, i32 6
  %255 = load i32*, i32** %254, align 8
  %256 = call i32 @fnvlist_free(i32* %255)
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 5
  %259 = load i32*, i32** %258, align 8
  %260 = call i32 @fnvlist_free(i32* %259)
  %261 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %262 = load i64, i64* %15, align 8
  %263 = trunc i64 %262 to i32
  %264 = call i32 @snprintf(i8* %261, i32 64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %263)
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 4
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds [64 x i8], [64 x i8]* %18, i64 0, i64 0
  %269 = load i32*, i32** %6, align 8
  %270 = call i64 @nvlist_add_nvlist(i32* %267, i8* %268, i32* %269)
  %271 = icmp eq i64 0, %270
  %272 = zext i1 %271 to i32
  %273 = call i32 @VERIFY(i32 %272)
  %274 = load i32*, i32** %6, align 8
  %275 = call i32 @nvlist_free(i32* %274)
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 3
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %214
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %283 = call i32 @zfs_iter_filesystems(%struct.TYPE_14__* %281, i32 (%struct.TYPE_14__*, i8*)* @send_iterate_fs, %struct.TYPE_15__* %282)
  store i32 %283, i32* %8, align 4
  br label %284

284:                                              ; preds = %280, %214
  br label %285

285:                                              ; preds = %284, %167, %135
  %286 = load i64, i64* %11, align 8
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 0
  store i64 %286, i64* %288, align 8
  %289 = load i64, i64* %12, align 8
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 1
  store i64 %289, i64* %291, align 8
  %292 = load i64, i64* %13, align 8
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 2
  store i64 %292, i64* %294, align 8
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %296 = call i32 @zfs_close(%struct.TYPE_14__* %295)
  %297 = load i32, i32* %8, align 4
  ret i32 %297
}

declare dso_local i64 @get_snap_txg(i32, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32*, ...) #1

declare dso_local i8* @dgettext(i32, i8*) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_string(i32*, i8*, i32) #1

declare dso_local i32 @fnvlist_add_uint64(i32*, i8*, i64) #1

declare dso_local %struct.TYPE_14__* @zfs_open(i32, i64*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i8*, i64) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32 @send_iterate_prop(%struct.TYPE_14__*, i32*) #1

declare dso_local i64 @nvlist_add_nvlist(i32*, i8*, i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @zfs_iter_snapshots_sorted(%struct.TYPE_14__*, i32, %struct.TYPE_15__*, i64, i64) #1

declare dso_local i32 @fnvlist_free(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @zfs_iter_filesystems(%struct.TYPE_14__*, i32 (%struct.TYPE_14__*, i8*)*, %struct.TYPE_15__*) #1

declare dso_local i32 @zfs_close(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
