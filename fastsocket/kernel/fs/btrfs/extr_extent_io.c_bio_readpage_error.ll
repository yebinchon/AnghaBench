; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent_io.c_bio_readpage_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent_io.c_bio_readpage_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, i32, i64, i32, i32, %struct.extent_state* }
%struct.page = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.extent_state = type { i64 }
%struct.io_failure_record = type { i64, i32, i32, i32, i32, i32, i64 }
%struct.extent_map = type { i64, i64, i64, i32, i32 }
%struct.extent_io_tree = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 (%struct.inode*, i32, %struct.bio*, i64, i64, i32)* }
%struct.extent_map_tree = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.extent_map_tree, %struct.extent_io_tree, %struct.extent_io_tree }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }

@REQ_WRITE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EXTENT_FLAG_COMPRESSED = common dso_local global i32 0, align 4
@EXTENT_BIO_COMPRESSED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"bio_readpage_error: (new) logical=%llu, start=%llu, len=%llu\0A\00", align 1
@EXTENT_LOCKED = common dso_local global i32 0, align 4
@EXTENT_DIRTY = common dso_local global i32 0, align 4
@EXTENT_DAMAGED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"bio_readpage_error: (found) logical=%llu, start=%llu, len=%llu, validation=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [111 x i8] c"bio_readpage_error: cannot repair, num_copies == 1. state=%p, num_copies=%d, next_mirror %d, failed_mirror %d\0A\00", align 1
@READ_SYNC = common dso_local global i32 0, align 4
@REQ_FAILFAST_DEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [86 x i8] c"bio_readpage_error: (fail) state=%p, num_copies=%d, next_mirror %d, failed_mirror %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [97 x i8] c"bio_readpage_error: submitting new read[%#x] to this_mirror=%d, num_copies=%d, in_validation=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bio*, %struct.page*, i64, i64, i32, %struct.extent_state*)* @bio_readpage_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bio_readpage_error(%struct.bio* %0, %struct.page* %1, i64 %2, i64 %3, i32 %4, %struct.extent_state* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bio*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.extent_state*, align 8
  %14 = alloca %struct.io_failure_record*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.extent_map*, align 8
  %17 = alloca %struct.inode*, align 8
  %18 = alloca %struct.extent_io_tree*, align 8
  %19 = alloca %struct.extent_io_tree*, align 8
  %20 = alloca %struct.extent_map_tree*, align 8
  %21 = alloca %struct.bio*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  store %struct.bio* %0, %struct.bio** %8, align 8
  store %struct.page* %1, %struct.page** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.extent_state* %5, %struct.extent_state** %13, align 8
  store %struct.io_failure_record* null, %struct.io_failure_record** %14, align 8
  %26 = load %struct.page*, %struct.page** %9, align 8
  %27 = getelementptr inbounds %struct.page, %struct.page* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.inode*, %struct.inode** %29, align 8
  store %struct.inode* %30, %struct.inode** %17, align 8
  %31 = load %struct.inode*, %struct.inode** %17, align 8
  %32 = call %struct.TYPE_12__* @BTRFS_I(%struct.inode* %31)
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 3
  store %struct.extent_io_tree* %33, %struct.extent_io_tree** %18, align 8
  %34 = load %struct.inode*, %struct.inode** %17, align 8
  %35 = call %struct.TYPE_12__* @BTRFS_I(%struct.inode* %34)
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  store %struct.extent_io_tree* %36, %struct.extent_io_tree** %19, align 8
  %37 = load %struct.inode*, %struct.inode** %17, align 8
  %38 = call %struct.TYPE_12__* @BTRFS_I(%struct.inode* %37)
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  store %struct.extent_map_tree* %39, %struct.extent_map_tree** %20, align 8
  %40 = load %struct.bio*, %struct.bio** %8, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @REQ_WRITE, align 4
  %44 = and i32 %42, %43
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load %struct.extent_io_tree*, %struct.extent_io_tree** %18, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @get_state_private(%struct.extent_io_tree* %46, i64 %47, i64* %15)
  store i32 %48, i32* %23, align 4
  %49 = load i32, i32* %23, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %205

51:                                               ; preds = %6
  %52 = load i32, i32* @GFP_NOFS, align 4
  %53 = call %struct.io_failure_record* @kzalloc(i32 40, i32 %52)
  store %struct.io_failure_record* %53, %struct.io_failure_record** %14, align 8
  %54 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %55 = icmp ne %struct.io_failure_record* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %432

59:                                               ; preds = %51
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %62 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %10, align 8
  %65 = sub nsw i64 %63, %64
  %66 = add nsw i64 %65, 1
  %67 = trunc i64 %66 to i32
  %68 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %69 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %71 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %70, i32 0, i32 2
  store i32 0, i32* %71, align 4
  %72 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %73 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %72, i32 0, i32 6
  store i64 0, i64* %73, align 8
  %74 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %75 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %74, i32 0, i32 3
  store i32 0, i32* %75, align 8
  %76 = load %struct.extent_map_tree*, %struct.extent_map_tree** %20, align 8
  %77 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %76, i32 0, i32 0
  %78 = call i32 @read_lock(i32* %77)
  %79 = load %struct.extent_map_tree*, %struct.extent_map_tree** %20, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %82 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree* %79, i64 %80, i32 %83)
  store %struct.extent_map* %84, %struct.extent_map** %16, align 8
  %85 = load %struct.extent_map*, %struct.extent_map** %16, align 8
  %86 = icmp ne %struct.extent_map* %85, null
  br i1 %86, label %95, label %87

87:                                               ; preds = %59
  %88 = load %struct.extent_map_tree*, %struct.extent_map_tree** %20, align 8
  %89 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %88, i32 0, i32 0
  %90 = call i32 @read_unlock(i32* %89)
  %91 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %92 = call i32 @kfree(%struct.io_failure_record* %91)
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %7, align 4
  br label %432

95:                                               ; preds = %59
  %96 = load %struct.extent_map*, %struct.extent_map** %16, align 8
  %97 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %10, align 8
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %111, label %101

101:                                              ; preds = %95
  %102 = load %struct.extent_map*, %struct.extent_map** %16, align 8
  %103 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.extent_map*, %struct.extent_map** %16, align 8
  %106 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %104, %107
  %109 = load i64, i64* %10, align 8
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %101, %95
  %112 = load %struct.extent_map*, %struct.extent_map** %16, align 8
  %113 = call i32 @free_extent_map(%struct.extent_map* %112)
  store %struct.extent_map* null, %struct.extent_map** %16, align 8
  br label %114

114:                                              ; preds = %111, %101
  %115 = load %struct.extent_map_tree*, %struct.extent_map_tree** %20, align 8
  %116 = getelementptr inbounds %struct.extent_map_tree, %struct.extent_map_tree* %115, i32 0, i32 0
  %117 = call i32 @read_unlock(i32* %116)
  %118 = load %struct.extent_map*, %struct.extent_map** %16, align 8
  %119 = icmp ne %struct.extent_map* %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %114
  %121 = load %struct.extent_map*, %struct.extent_map** %16, align 8
  %122 = call i64 @IS_ERR(%struct.extent_map* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %120, %114
  %125 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %126 = call i32 @kfree(%struct.io_failure_record* %125)
  %127 = load i32, i32* @EIO, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %7, align 4
  br label %432

129:                                              ; preds = %120
  %130 = load i64, i64* %10, align 8
  %131 = load %struct.extent_map*, %struct.extent_map** %16, align 8
  %132 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = sub nsw i64 %130, %133
  store i64 %134, i64* %25, align 8
  %135 = load %struct.extent_map*, %struct.extent_map** %16, align 8
  %136 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %25, align 8
  %139 = add nsw i64 %137, %138
  store i64 %139, i64* %25, align 8
  %140 = load i32, i32* @EXTENT_FLAG_COMPRESSED, align 4
  %141 = load %struct.extent_map*, %struct.extent_map** %16, align 8
  %142 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %141, i32 0, i32 4
  %143 = call i64 @test_bit(i32 %140, i32* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %129
  %146 = load %struct.extent_map*, %struct.extent_map** %16, align 8
  %147 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %25, align 8
  %149 = load i64, i64* @EXTENT_BIO_COMPRESSED, align 8
  %150 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %151 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %150, i32 0, i32 6
  store i64 %149, i64* %151, align 8
  %152 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %153 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %152, i32 0, i32 6
  %154 = load %struct.extent_map*, %struct.extent_map** %16, align 8
  %155 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @extent_set_compress_type(i64* %153, i32 %156)
  br label %158

158:                                              ; preds = %145, %129
  %159 = load i64, i64* %25, align 8
  %160 = load i64, i64* %10, align 8
  %161 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %162 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %159, i64 %160, i32 %163)
  %165 = load i64, i64* %25, align 8
  %166 = trunc i64 %165 to i32
  %167 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %168 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %167, i32 0, i32 4
  store i32 %166, i32* %168, align 4
  %169 = load %struct.extent_map*, %struct.extent_map** %16, align 8
  %170 = call i32 @free_extent_map(%struct.extent_map* %169)
  %171 = load %struct.extent_io_tree*, %struct.extent_io_tree** %18, align 8
  %172 = load i64, i64* %10, align 8
  %173 = load i64, i64* %11, align 8
  %174 = load i32, i32* @EXTENT_LOCKED, align 4
  %175 = load i32, i32* @EXTENT_DIRTY, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @GFP_NOFS, align 4
  %178 = call i32 @set_extent_bits(%struct.extent_io_tree* %171, i64 %172, i64 %173, i32 %176, i32 %177)
  store i32 %178, i32* %23, align 4
  %179 = load i32, i32* %23, align 4
  %180 = icmp sge i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %158
  %182 = load %struct.extent_io_tree*, %struct.extent_io_tree** %18, align 8
  %183 = load i64, i64* %10, align 8
  %184 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %185 = ptrtoint %struct.io_failure_record* %184 to i64
  %186 = call i32 @set_state_private(%struct.extent_io_tree* %182, i64 %183, i64 %185)
  store i32 %186, i32* %23, align 4
  br label %187

187:                                              ; preds = %181, %158
  %188 = load i32, i32* %23, align 4
  %189 = icmp sge i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %187
  %191 = load %struct.extent_io_tree*, %struct.extent_io_tree** %19, align 8
  %192 = load i64, i64* %10, align 8
  %193 = load i64, i64* %11, align 8
  %194 = load i32, i32* @EXTENT_DAMAGED, align 4
  %195 = load i32, i32* @GFP_NOFS, align 4
  %196 = call i32 @set_extent_bits(%struct.extent_io_tree* %191, i64 %192, i64 %193, i32 %194, i32 %195)
  store i32 %196, i32* %23, align 4
  br label %197

197:                                              ; preds = %190, %187
  %198 = load i32, i32* %23, align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %197
  %201 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %202 = call i32 @kfree(%struct.io_failure_record* %201)
  %203 = load i32, i32* %23, align 4
  store i32 %203, i32* %7, align 4
  br label %432

204:                                              ; preds = %197
  br label %221

205:                                              ; preds = %6
  %206 = load i64, i64* %15, align 8
  %207 = inttoptr i64 %206 to %struct.io_failure_record*
  store %struct.io_failure_record* %207, %struct.io_failure_record** %14, align 8
  %208 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %209 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %212 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %215 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %218 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %210, i64 %213, i32 %216, i32 %219)
  br label %221

221:                                              ; preds = %205, %204
  %222 = load %struct.inode*, %struct.inode** %17, align 8
  %223 = call %struct.TYPE_12__* @BTRFS_I(%struct.inode* %222)
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 1
  %229 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %230 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %233 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @btrfs_num_copies(i32* %228, i32 %231, i32 %234)
  store i32 %235, i32* %22, align 4
  %236 = load i32, i32* %22, align 4
  %237 = icmp eq i32 %236, 1
  br i1 %237, label %238, label %251

238:                                              ; preds = %221
  %239 = load %struct.extent_state*, %struct.extent_state** %13, align 8
  %240 = load i32, i32* %22, align 4
  %241 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %242 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %12, align 4
  %245 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.2, i64 0, i64 0), %struct.extent_state* %239, i32 %240, i32 %243, i32 %244)
  %246 = load %struct.inode*, %struct.inode** %17, align 8
  %247 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %248 = call i32 @free_io_failure(%struct.inode* %246, %struct.io_failure_record* %247, i32 0)
  %249 = load i32, i32* @EIO, align 4
  %250 = sub nsw i32 0, %249
  store i32 %250, i32* %7, align 4
  br label %432

251:                                              ; preds = %221
  %252 = load %struct.extent_state*, %struct.extent_state** %13, align 8
  %253 = icmp ne %struct.extent_state* %252, null
  br i1 %253, label %279, label %254

254:                                              ; preds = %251
  %255 = load %struct.extent_io_tree*, %struct.extent_io_tree** %19, align 8
  %256 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %255, i32 0, i32 1
  %257 = call i32 @spin_lock(i32* %256)
  %258 = load %struct.extent_io_tree*, %struct.extent_io_tree** %19, align 8
  %259 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %260 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i32, i32* @EXTENT_LOCKED, align 4
  %263 = call %struct.extent_state* @find_first_extent_bit_state(%struct.extent_io_tree* %258, i64 %261, i32 %262)
  store %struct.extent_state* %263, %struct.extent_state** %13, align 8
  %264 = load %struct.extent_state*, %struct.extent_state** %13, align 8
  %265 = icmp ne %struct.extent_state* %264, null
  br i1 %265, label %266, label %275

266:                                              ; preds = %254
  %267 = load %struct.extent_state*, %struct.extent_state** %13, align 8
  %268 = getelementptr inbounds %struct.extent_state, %struct.extent_state* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %271 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %269, %272
  br i1 %273, label %274, label %275

274:                                              ; preds = %266
  store %struct.extent_state* null, %struct.extent_state** %13, align 8
  br label %275

275:                                              ; preds = %274, %266, %254
  %276 = load %struct.extent_io_tree*, %struct.extent_io_tree** %19, align 8
  %277 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %276, i32 0, i32 1
  %278 = call i32 @spin_unlock(i32* %277)
  br label %279

279:                                              ; preds = %275, %251
  %280 = load %struct.bio*, %struct.bio** %8, align 8
  %281 = getelementptr inbounds %struct.bio, %struct.bio* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = icmp sgt i32 %282, 1
  br i1 %283, label %284, label %297

284:                                              ; preds = %279
  %285 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %286 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @BUG_ON(i32 %287)
  %289 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %290 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %289, i32 0, i32 3
  store i32 1, i32* %290, align 8
  %291 = load i32, i32* %12, align 4
  %292 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %293 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %292, i32 0, i32 2
  store i32 %291, i32* %293, align 4
  %294 = load i32, i32* @READ_SYNC, align 4
  %295 = load i32, i32* @REQ_FAILFAST_DEV, align 4
  %296 = or i32 %294, %295
  store i32 %296, i32* %24, align 4
  br label %334

297:                                              ; preds = %279
  %298 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %299 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 8
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %314

302:                                              ; preds = %297
  %303 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %304 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %12, align 4
  %307 = icmp ne i32 %305, %306
  %308 = zext i1 %307 to i32
  %309 = call i32 @BUG_ON(i32 %308)
  %310 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %311 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %310, i32 0, i32 3
  store i32 0, i32* %311, align 8
  %312 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %313 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %312, i32 0, i32 2
  store i32 0, i32* %313, align 4
  br label %314

314:                                              ; preds = %302, %297
  %315 = load i32, i32* %12, align 4
  %316 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %317 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %316, i32 0, i32 5
  store i32 %315, i32* %317, align 8
  %318 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %319 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %319, align 4
  %322 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %323 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* %12, align 4
  %326 = icmp eq i32 %324, %325
  br i1 %326, label %327, label %332

327:                                              ; preds = %314
  %328 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %329 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %329, align 4
  br label %332

332:                                              ; preds = %327, %314
  %333 = load i32, i32* @READ_SYNC, align 4
  store i32 %333, i32* %24, align 4
  br label %334

334:                                              ; preds = %332, %284
  %335 = load %struct.extent_state*, %struct.extent_state** %13, align 8
  %336 = icmp ne %struct.extent_state* %335, null
  br i1 %336, label %337, label %343

337:                                              ; preds = %334
  %338 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %339 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* %22, align 4
  %342 = icmp sgt i32 %340, %341
  br i1 %342, label %343, label %356

343:                                              ; preds = %337, %334
  %344 = load %struct.extent_state*, %struct.extent_state** %13, align 8
  %345 = load i32, i32* %22, align 4
  %346 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %347 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %346, i32 0, i32 2
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* %12, align 4
  %350 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.3, i64 0, i64 0), %struct.extent_state* %344, i32 %345, i32 %348, i32 %349)
  %351 = load %struct.inode*, %struct.inode** %17, align 8
  %352 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %353 = call i32 @free_io_failure(%struct.inode* %351, %struct.io_failure_record* %352, i32 0)
  %354 = load i32, i32* @EIO, align 4
  %355 = sub nsw i32 0, %354
  store i32 %355, i32* %7, align 4
  br label %432

356:                                              ; preds = %337
  %357 = load i32, i32* @GFP_NOFS, align 4
  %358 = call %struct.bio* @bio_alloc(i32 %357, i32 1)
  store %struct.bio* %358, %struct.bio** %21, align 8
  %359 = load %struct.bio*, %struct.bio** %21, align 8
  %360 = icmp ne %struct.bio* %359, null
  br i1 %360, label %367, label %361

361:                                              ; preds = %356
  %362 = load %struct.inode*, %struct.inode** %17, align 8
  %363 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %364 = call i32 @free_io_failure(%struct.inode* %362, %struct.io_failure_record* %363, i32 0)
  %365 = load i32, i32* @EIO, align 4
  %366 = sub nsw i32 0, %365
  store i32 %366, i32* %7, align 4
  br label %432

367:                                              ; preds = %356
  %368 = load %struct.extent_state*, %struct.extent_state** %13, align 8
  %369 = load %struct.bio*, %struct.bio** %21, align 8
  %370 = getelementptr inbounds %struct.bio, %struct.bio* %369, i32 0, i32 6
  store %struct.extent_state* %368, %struct.extent_state** %370, align 8
  %371 = load %struct.bio*, %struct.bio** %8, align 8
  %372 = getelementptr inbounds %struct.bio, %struct.bio* %371, i32 0, i32 5
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.bio*, %struct.bio** %21, align 8
  %375 = getelementptr inbounds %struct.bio, %struct.bio* %374, i32 0, i32 5
  store i32 %373, i32* %375, align 4
  %376 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %377 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %376, i32 0, i32 4
  %378 = load i32, i32* %377, align 4
  %379 = ashr i32 %378, 9
  %380 = load %struct.bio*, %struct.bio** %21, align 8
  %381 = getelementptr inbounds %struct.bio, %struct.bio* %380, i32 0, i32 2
  store i32 %379, i32* %381, align 8
  %382 = load %struct.inode*, %struct.inode** %17, align 8
  %383 = call %struct.TYPE_12__* @BTRFS_I(%struct.inode* %382)
  %384 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %383, i32 0, i32 0
  %385 = load %struct.TYPE_11__*, %struct.TYPE_11__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %385, i32 0, i32 0
  %387 = load %struct.TYPE_10__*, %struct.TYPE_10__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %387, i32 0, i32 0
  %389 = load %struct.TYPE_7__*, %struct.TYPE_7__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.bio*, %struct.bio** %21, align 8
  %393 = getelementptr inbounds %struct.bio, %struct.bio* %392, i32 0, i32 4
  store i32 %391, i32* %393, align 8
  %394 = load %struct.bio*, %struct.bio** %21, align 8
  %395 = getelementptr inbounds %struct.bio, %struct.bio* %394, i32 0, i32 3
  store i64 0, i64* %395, align 8
  %396 = load %struct.bio*, %struct.bio** %21, align 8
  %397 = load %struct.page*, %struct.page** %9, align 8
  %398 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %399 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 8
  %401 = load i64, i64* %10, align 8
  %402 = load %struct.page*, %struct.page** %9, align 8
  %403 = call i64 @page_offset(%struct.page* %402)
  %404 = sub nsw i64 %401, %403
  %405 = call i32 @bio_add_page(%struct.bio* %396, %struct.page* %397, i32 %400, i64 %404)
  %406 = load i32, i32* %24, align 4
  %407 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %408 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %407, i32 0, i32 2
  %409 = load i32, i32* %408, align 4
  %410 = load i32, i32* %22, align 4
  %411 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %412 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %411, i32 0, i32 3
  %413 = load i32, i32* %412, align 8
  %414 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.4, i64 0, i64 0), i32 %406, i32 %409, i32 %410, i32 %413)
  %415 = load %struct.extent_io_tree*, %struct.extent_io_tree** %19, align 8
  %416 = getelementptr inbounds %struct.extent_io_tree, %struct.extent_io_tree* %415, i32 0, i32 0
  %417 = load %struct.TYPE_8__*, %struct.TYPE_8__** %416, align 8
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i32 0, i32 0
  %419 = load i32 (%struct.inode*, i32, %struct.bio*, i64, i64, i32)*, i32 (%struct.inode*, i32, %struct.bio*, i64, i64, i32)** %418, align 8
  %420 = load %struct.inode*, %struct.inode** %17, align 8
  %421 = load i32, i32* %24, align 4
  %422 = load %struct.bio*, %struct.bio** %21, align 8
  %423 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %424 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %423, i32 0, i32 2
  %425 = load i32, i32* %424, align 4
  %426 = sext i32 %425 to i64
  %427 = load %struct.io_failure_record*, %struct.io_failure_record** %14, align 8
  %428 = getelementptr inbounds %struct.io_failure_record, %struct.io_failure_record* %427, i32 0, i32 6
  %429 = load i64, i64* %428, align 8
  %430 = call i32 %419(%struct.inode* %420, i32 %421, %struct.bio* %422, i64 %426, i64 %429, i32 0)
  store i32 %430, i32* %23, align 4
  %431 = load i32, i32* %23, align 4
  store i32 %431, i32* %7, align 4
  br label %432

432:                                              ; preds = %367, %361, %343, %238, %200, %124, %87, %56
  %433 = load i32, i32* %7, align 4
  ret i32 %433
}

declare dso_local %struct.TYPE_12__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @get_state_private(%struct.extent_io_tree*, i64, i64*) #1

declare dso_local %struct.io_failure_record* @kzalloc(i32, i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.extent_map* @lookup_extent_mapping(%struct.extent_map_tree*, i64, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.io_failure_record*) #1

declare dso_local i32 @free_extent_map(%struct.extent_map*) #1

declare dso_local i64 @IS_ERR(%struct.extent_map*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @extent_set_compress_type(i64*, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @set_extent_bits(%struct.extent_io_tree*, i64, i64, i32, i32) #1

declare dso_local i32 @set_state_private(%struct.extent_io_tree*, i64, i64) #1

declare dso_local i32 @btrfs_num_copies(i32*, i32, i32) #1

declare dso_local i32 @free_io_failure(%struct.inode*, %struct.io_failure_record*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.extent_state* @find_first_extent_bit_state(%struct.extent_io_tree*, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @bio_add_page(%struct.bio*, %struct.page*, i32, i64) #1

declare dso_local i64 @page_offset(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
