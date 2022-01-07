; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_region_dev_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_region_dev_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2hb_region = type { i64, i64, i32, i64, i32*, %struct.task_struct*, i32, %struct.TYPE_4__, i32, i32 }
%struct.task_struct = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.inode = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@O2NM_MAX_NODES = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i64 0, align 8
@FMODE_WRITE = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"blocksize %u incorrect for device, expected %d\00", align 1
@o2hb_write_timeout = common dso_local global i32 0, align 4
@O2HB_LIVE_THRESHOLD = common dso_local global i64 0, align 8
@o2hb_thread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"o2hb-%s\00", align 1
@o2hb_live_lock = common dso_local global i32 0, align 4
@o2hb_steady_queue = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.o2hb_region*, i8*, i64)* @o2hb_region_dev_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @o2hb_region_dev_write(%struct.o2hb_region* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.o2hb_region*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i64, align 8
  store %struct.o2hb_region* %0, %struct.o2hb_region** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %10, align 8
  store %struct.file* null, %struct.file** %11, align 8
  store %struct.inode* null, %struct.inode** %12, align 8
  %15 = load i64, i64* @EINVAL, align 8
  %16 = sub i64 0, %15
  store i64 %16, i64* %13, align 8
  %17 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %18 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %233

22:                                               ; preds = %3
  %23 = call i64 (...) @o2nm_this_node()
  %24 = load i64, i64* @O2NM_MAX_NODES, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %233

27:                                               ; preds = %22
  %28 = load i8*, i8** %10, align 8
  %29 = call i64 @simple_strtol(i8* %28, i8** %10, i32 0)
  store i64 %29, i64* %8, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load i8*, i8** %10, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i8*, i8** %10, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 10
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %27
  br label %233

43:                                               ; preds = %37, %32
  %44 = load i64, i64* %8, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @INT_MAX, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %43
  br label %233

51:                                               ; preds = %46
  %52 = load i64, i64* %8, align 8
  %53 = call %struct.file* @fget(i64 %52)
  store %struct.file* %53, %struct.file** %11, align 8
  %54 = load %struct.file*, %struct.file** %11, align 8
  %55 = icmp eq %struct.file* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %233

57:                                               ; preds = %51
  %58 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %59 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %57
  %63 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %64 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %69 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67, %62, %57
  br label %233

73:                                               ; preds = %67
  %74 = load %struct.file*, %struct.file** %11, align 8
  %75 = getelementptr inbounds %struct.file, %struct.file* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call %struct.inode* @igrab(i32 %78)
  store %struct.inode* %79, %struct.inode** %12, align 8
  %80 = load %struct.inode*, %struct.inode** %12, align 8
  %81 = icmp eq %struct.inode* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  br label %233

83:                                               ; preds = %73
  %84 = load %struct.inode*, %struct.inode** %12, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @S_ISBLK(i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  br label %233

90:                                               ; preds = %83
  %91 = load %struct.file*, %struct.file** %11, align 8
  %92 = getelementptr inbounds %struct.file, %struct.file* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32* @I_BDEV(i32 %95)
  %97 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %98 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %97, i32 0, i32 4
  store i32* %96, i32** %98, align 8
  %99 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %100 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* @FMODE_WRITE, align 4
  %103 = load i32, i32* @FMODE_READ, align 4
  %104 = or i32 %102, %103
  %105 = call i64 @blkdev_get(i32* %101, i32 %104)
  store i64 %105, i64* %13, align 8
  %106 = load i64, i64* %13, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %90
  %109 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %110 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %109, i32 0, i32 4
  store i32* null, i32** %110, align 8
  br label %233

111:                                              ; preds = %90
  store %struct.inode* null, %struct.inode** %12, align 8
  %112 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %113 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %112, i32 0, i32 4
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %116 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %115, i32 0, i32 9
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @bdevname(i32* %114, i32 %117)
  %119 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %120 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @bdev_logical_block_size(i32* %121)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %125 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %123, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %111
  %129 = load i32, i32* @ML_ERROR, align 4
  %130 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %131 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @mlog(i32 %129, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %132, i32 %133)
  %135 = load i64, i64* @EINVAL, align 8
  %136 = sub i64 0, %135
  store i64 %136, i64* %13, align 8
  br label %233

137:                                              ; preds = %111
  %138 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %139 = call i32 @o2hb_init_region_params(%struct.o2hb_region* %138)
  br label %140

140:                                              ; preds = %144, %137
  %141 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %142 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %141, i32 0, i32 3
  %143 = call i32 @get_random_bytes(i64* %142, i32 8)
  br label %144

144:                                              ; preds = %140
  %145 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %146 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %140, label %149

149:                                              ; preds = %144
  %150 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %151 = call i64 @o2hb_map_slot_data(%struct.o2hb_region* %150)
  store i64 %151, i64* %13, align 8
  %152 = load i64, i64* %13, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load i64, i64* %13, align 8
  %156 = call i32 @mlog_errno(i64 %155)
  br label %233

157:                                              ; preds = %149
  %158 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %159 = call i64 @o2hb_populate_slot_data(%struct.o2hb_region* %158)
  store i64 %159, i64* %13, align 8
  %160 = load i64, i64* %13, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %157
  %163 = load i64, i64* %13, align 8
  %164 = call i32 @mlog_errno(i64 %163)
  br label %233

165:                                              ; preds = %157
  %166 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %167 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %166, i32 0, i32 8
  %168 = load i32, i32* @o2hb_write_timeout, align 4
  %169 = call i32 @INIT_DELAYED_WORK(i32* %167, i32 %168)
  %170 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %171 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %170, i32 0, i32 6
  %172 = load i64, i64* @O2HB_LIVE_THRESHOLD, align 8
  %173 = add nsw i64 %172, 1
  %174 = call i32 @atomic_set(i32* %171, i64 %173)
  %175 = load i32, i32* @o2hb_thread, align 4
  %176 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %177 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %178 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %177, i32 0, i32 7
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call %struct.task_struct* @kthread_run(i32 %175, %struct.o2hb_region* %176, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %180)
  store %struct.task_struct* %181, %struct.task_struct** %7, align 8
  %182 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %183 = call i64 @IS_ERR(%struct.task_struct* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %165
  %186 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %187 = call i64 @PTR_ERR(%struct.task_struct* %186)
  store i64 %187, i64* %13, align 8
  %188 = load i64, i64* %13, align 8
  %189 = call i32 @mlog_errno(i64 %188)
  br label %233

190:                                              ; preds = %165
  %191 = call i32 @spin_lock(i32* @o2hb_live_lock)
  %192 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %193 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %194 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %193, i32 0, i32 5
  store %struct.task_struct* %192, %struct.task_struct** %194, align 8
  %195 = call i32 @spin_unlock(i32* @o2hb_live_lock)
  %196 = load i32, i32* @o2hb_steady_queue, align 4
  %197 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %198 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %197, i32 0, i32 6
  %199 = call i64 @atomic_read(i32* %198)
  %200 = icmp eq i64 %199, 0
  %201 = zext i1 %200 to i32
  %202 = call i64 @wait_event_interruptible(i32 %196, i32 %201)
  store i64 %202, i64* %13, align 8
  %203 = load i64, i64* %13, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %219

205:                                              ; preds = %190
  %206 = call i32 @spin_lock(i32* @o2hb_live_lock)
  %207 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %208 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %207, i32 0, i32 5
  %209 = load %struct.task_struct*, %struct.task_struct** %208, align 8
  store %struct.task_struct* %209, %struct.task_struct** %7, align 8
  %210 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %211 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %210, i32 0, i32 5
  store %struct.task_struct* null, %struct.task_struct** %211, align 8
  %212 = call i32 @spin_unlock(i32* @o2hb_live_lock)
  %213 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %214 = icmp ne %struct.task_struct* %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %205
  %216 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %217 = call i32 @kthread_stop(%struct.task_struct* %216)
  br label %218

218:                                              ; preds = %215, %205
  br label %233

219:                                              ; preds = %190
  %220 = call i32 @spin_lock(i32* @o2hb_live_lock)
  %221 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %222 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %221, i32 0, i32 5
  %223 = load %struct.task_struct*, %struct.task_struct** %222, align 8
  store %struct.task_struct* %223, %struct.task_struct** %7, align 8
  %224 = call i32 @spin_unlock(i32* @o2hb_live_lock)
  %225 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %226 = icmp ne %struct.task_struct* %225, null
  br i1 %226, label %227, label %229

227:                                              ; preds = %219
  %228 = load i64, i64* %6, align 8
  store i64 %228, i64* %13, align 8
  br label %232

229:                                              ; preds = %219
  %230 = load i64, i64* @EIO, align 8
  %231 = sub i64 0, %230
  store i64 %231, i64* %13, align 8
  br label %232

232:                                              ; preds = %229, %227
  br label %233

233:                                              ; preds = %232, %218, %185, %162, %154, %128, %108, %89, %82, %72, %56, %50, %42, %26, %21
  %234 = load %struct.file*, %struct.file** %11, align 8
  %235 = icmp ne %struct.file* %234, null
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = load %struct.file*, %struct.file** %11, align 8
  %238 = call i32 @fput(%struct.file* %237)
  br label %239

239:                                              ; preds = %236, %233
  %240 = load %struct.inode*, %struct.inode** %12, align 8
  %241 = icmp ne %struct.inode* %240, null
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = load %struct.inode*, %struct.inode** %12, align 8
  %244 = call i32 @iput(%struct.inode* %243)
  br label %245

245:                                              ; preds = %242, %239
  %246 = load i64, i64* %13, align 8
  %247 = icmp ult i64 %246, 0
  br i1 %247, label %248, label %264

248:                                              ; preds = %245
  %249 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %250 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %249, i32 0, i32 4
  %251 = load i32*, i32** %250, align 8
  %252 = icmp ne i32* %251, null
  br i1 %252, label %253, label %263

253:                                              ; preds = %248
  %254 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %255 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %254, i32 0, i32 4
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* @FMODE_READ, align 4
  %258 = load i32, i32* @FMODE_WRITE, align 4
  %259 = or i32 %257, %258
  %260 = call i32 @blkdev_put(i32* %256, i32 %259)
  %261 = load %struct.o2hb_region*, %struct.o2hb_region** %4, align 8
  %262 = getelementptr inbounds %struct.o2hb_region, %struct.o2hb_region* %261, i32 0, i32 4
  store i32* null, i32** %262, align 8
  br label %263

263:                                              ; preds = %253, %248
  br label %264

264:                                              ; preds = %263, %245
  %265 = load i64, i64* %13, align 8
  ret i64 %265
}

declare dso_local i64 @o2nm_this_node(...) #1

declare dso_local i64 @simple_strtol(i8*, i8**, i32) #1

declare dso_local %struct.file* @fget(i64) #1

declare dso_local %struct.inode* @igrab(i32) #1

declare dso_local i32 @S_ISBLK(i32) #1

declare dso_local i32* @I_BDEV(i32) #1

declare dso_local i64 @blkdev_get(i32*, i32) #1

declare dso_local i32 @bdevname(i32*, i32) #1

declare dso_local i32 @bdev_logical_block_size(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32) #1

declare dso_local i32 @o2hb_init_region_params(%struct.o2hb_region*) #1

declare dso_local i32 @get_random_bytes(i64*, i32) #1

declare dso_local i64 @o2hb_map_slot_data(%struct.o2hb_region*) #1

declare dso_local i32 @mlog_errno(i64) #1

declare dso_local i64 @o2hb_populate_slot_data(%struct.o2hb_region*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

declare dso_local %struct.task_struct* @kthread_run(i32, %struct.o2hb_region*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i64 @PTR_ERR(%struct.task_struct*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @kthread_stop(%struct.task_struct*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @blkdev_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
