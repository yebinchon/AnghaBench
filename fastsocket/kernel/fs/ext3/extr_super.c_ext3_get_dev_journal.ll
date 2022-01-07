; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_ext3_get_dev_journal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_super.c_ext3_get_dev_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32, %struct.super_block* }
%struct.TYPE_10__ = type { i32 }
%struct.super_block = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ext3_super_block = type { i32, i32, i32, i32 }
%struct.block_device = type { i32 }
%struct.TYPE_12__ = type { %struct.block_device*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"error: failed to claim external journal device\00", align 1
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"error: blocksize too small for journal device\00", align 1
@EXT3_MIN_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"error: couldn't read superblock of external journal\00", align 1
@EXT3_SUPER_MAGIC = common dso_local global i64 0, align 8
@EXT3_FEATURE_INCOMPAT_JOURNAL_DEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"error: external journal has bad superblock\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"error: journal UUID does not match\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"error: failed to create device journal\00", align 1
@READ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"I/O error on journal device\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"error: external journal has more than one user (unsupported) - %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (%struct.super_block*, i32)* @ext3_get_dev_journal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @ext3_get_dev_journal(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.ext3_super_block*, align 8
  %15 = alloca %struct.block_device*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.super_block*, %struct.super_block** %4, align 8
  %18 = call %struct.block_device* @ext3_blkdev_get(i32 %16, %struct.super_block* %17)
  store %struct.block_device* %18, %struct.block_device** %15, align 8
  %19 = load %struct.block_device*, %struct.block_device** %15, align 8
  %20 = icmp eq %struct.block_device* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %192

22:                                               ; preds = %2
  %23 = load %struct.block_device*, %struct.block_device** %15, align 8
  %24 = load %struct.super_block*, %struct.super_block** %4, align 8
  %25 = call i64 @bd_claim(%struct.block_device* %23, %struct.super_block* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.super_block*, %struct.super_block** %4, align 8
  %29 = load i32, i32* @KERN_ERR, align 4
  %30 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %28, i32 %29, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.block_device*, %struct.block_device** %15, align 8
  %32 = load i32, i32* @FMODE_READ, align 4
  %33 = load i32, i32* @FMODE_WRITE, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @blkdev_put(%struct.block_device* %31, i32 %34)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %192

36:                                               ; preds = %22
  %37 = load %struct.super_block*, %struct.super_block** %4, align 8
  %38 = getelementptr inbounds %struct.super_block, %struct.super_block* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  %40 = load %struct.block_device*, %struct.block_device** %15, align 8
  %41 = call i32 @bdev_logical_block_size(%struct.block_device* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = load %struct.super_block*, %struct.super_block** %4, align 8
  %47 = load i32, i32* @KERN_ERR, align 4
  %48 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %46, i32 %47, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %189

49:                                               ; preds = %36
  %50 = load i32, i32* @EXT3_MIN_BLOCK_SIZE, align 4
  %51 = load i32, i32* %11, align 4
  %52 = sdiv i32 %50, %51
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* @EXT3_MIN_BLOCK_SIZE, align 4
  %54 = load i32, i32* %11, align 4
  %55 = srem i32 %53, %54
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %13, align 8
  %57 = load %struct.block_device*, %struct.block_device** %15, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @set_blocksize(%struct.block_device* %57, i32 %58)
  %60 = load %struct.block_device*, %struct.block_device** %15, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call %struct.buffer_head* @__bread(%struct.block_device* %60, i32 %61, i32 %62)
  store %struct.buffer_head* %63, %struct.buffer_head** %6, align 8
  %64 = icmp ne %struct.buffer_head* %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %49
  %66 = load %struct.super_block*, %struct.super_block** %4, align 8
  %67 = load i32, i32* @KERN_ERR, align 4
  %68 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %66, i32 %67, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %189

69:                                               ; preds = %49
  %70 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %71 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = load i64, i64* %13, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = bitcast i8* %75 to %struct.ext3_super_block*
  store %struct.ext3_super_block* %76, %struct.ext3_super_block** %14, align 8
  %77 = load %struct.ext3_super_block*, %struct.ext3_super_block** %14, align 8
  %78 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @le16_to_cpu(i32 %79)
  %81 = load i64, i64* @EXT3_SUPER_MAGIC, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %91, label %83

83:                                               ; preds = %69
  %84 = load %struct.ext3_super_block*, %struct.ext3_super_block** %14, align 8
  %85 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le32_to_cpu(i32 %86)
  %88 = load i32, i32* @EXT3_FEATURE_INCOMPAT_JOURNAL_DEV, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %83, %69
  %92 = load %struct.super_block*, %struct.super_block** %4, align 8
  %93 = load i32, i32* @KERN_ERR, align 4
  %94 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %92, i32 %93, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %95 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %96 = call i32 @brelse(%struct.buffer_head* %95)
  br label %189

97:                                               ; preds = %83
  %98 = load %struct.super_block*, %struct.super_block** %4, align 8
  %99 = call %struct.TYPE_12__* @EXT3_SB(%struct.super_block* %98)
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ext3_super_block*, %struct.ext3_super_block** %14, align 8
  %105 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @memcmp(i32 %103, i32 %106, i32 16)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %97
  %110 = load %struct.super_block*, %struct.super_block** %4, align 8
  %111 = load i32, i32* @KERN_ERR, align 4
  %112 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %110, i32 %111, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %113 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %114 = call i32 @brelse(%struct.buffer_head* %113)
  br label %189

115:                                              ; preds = %97
  %116 = load %struct.ext3_super_block*, %struct.ext3_super_block** %14, align 8
  %117 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @le32_to_cpu(i32 %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  %122 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %123 = call i32 @brelse(%struct.buffer_head* %122)
  %124 = load %struct.block_device*, %struct.block_device** %15, align 8
  %125 = load %struct.super_block*, %struct.super_block** %4, align 8
  %126 = getelementptr inbounds %struct.super_block, %struct.super_block* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %11, align 4
  %131 = call %struct.TYPE_11__* @journal_init_dev(%struct.block_device* %124, i32 %127, i32 %128, i32 %129, i32 %130)
  store %struct.TYPE_11__* %131, %struct.TYPE_11__** %7, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %133 = icmp ne %struct.TYPE_11__* %132, null
  br i1 %133, label %138, label %134

134:                                              ; preds = %115
  %135 = load %struct.super_block*, %struct.super_block** %4, align 8
  %136 = load i32, i32* @KERN_ERR, align 4
  %137 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %135, i32 %136, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %189

138:                                              ; preds = %115
  %139 = load %struct.super_block*, %struct.super_block** %4, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 2
  store %struct.super_block* %139, %struct.super_block** %141, align 8
  %142 = load i32, i32* @READ, align 4
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 1
  %145 = call i32 @ll_rw_block(i32 %142, i32 1, i32* %144)
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @wait_on_buffer(i32 %148)
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @buffer_uptodate(i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %138
  %156 = load %struct.super_block*, %struct.super_block** %4, align 8
  %157 = load i32, i32* @KERN_ERR, align 4
  %158 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %156, i32 %157, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %186

159:                                              ; preds = %138
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @be32_to_cpu(i32 %164)
  %166 = icmp ne i32 %165, 1
  br i1 %166, label %167, label %177

167:                                              ; preds = %159
  %168 = load %struct.super_block*, %struct.super_block** %4, align 8
  %169 = load i32, i32* @KERN_ERR, align 4
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @be32_to_cpu(i32 %174)
  %176 = call i32 (%struct.super_block*, i32, i8*, ...) @ext3_msg(%struct.super_block* %168, i32 %169, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0), i32 %175)
  br label %186

177:                                              ; preds = %159
  %178 = load %struct.block_device*, %struct.block_device** %15, align 8
  %179 = load %struct.super_block*, %struct.super_block** %4, align 8
  %180 = call %struct.TYPE_12__* @EXT3_SB(%struct.super_block* %179)
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  store %struct.block_device* %178, %struct.block_device** %181, align 8
  %182 = load %struct.super_block*, %struct.super_block** %4, align 8
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %184 = call i32 @ext3_init_journal_params(%struct.super_block* %182, %struct.TYPE_11__* %183)
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %185, %struct.TYPE_11__** %3, align 8
  br label %192

186:                                              ; preds = %167, %155
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %188 = call i32 @journal_destroy(%struct.TYPE_11__* %187)
  br label %189

189:                                              ; preds = %186, %134, %109, %91, %65, %45
  %190 = load %struct.block_device*, %struct.block_device** %15, align 8
  %191 = call i32 @ext3_blkdev_put(%struct.block_device* %190)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %192

192:                                              ; preds = %189, %177, %27, %21
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %193
}

declare dso_local %struct.block_device* @ext3_blkdev_get(i32, %struct.super_block*) #1

declare dso_local i64 @bd_claim(%struct.block_device*, %struct.super_block*) #1

declare dso_local i32 @ext3_msg(%struct.super_block*, i32, i8*, ...) #1

declare dso_local i32 @blkdev_put(%struct.block_device*, i32) #1

declare dso_local i32 @bdev_logical_block_size(%struct.block_device*) #1

declare dso_local i32 @set_blocksize(%struct.block_device*, i32) #1

declare dso_local %struct.buffer_head* @__bread(%struct.block_device*, i32, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local %struct.TYPE_12__* @EXT3_SB(%struct.super_block*) #1

declare dso_local %struct.TYPE_11__* @journal_init_dev(%struct.block_device*, i32, i32, i32, i32) #1

declare dso_local i32 @ll_rw_block(i32, i32, i32*) #1

declare dso_local i32 @wait_on_buffer(i32) #1

declare dso_local i32 @buffer_uptodate(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ext3_init_journal_params(%struct.super_block*, %struct.TYPE_11__*) #1

declare dso_local i32 @journal_destroy(%struct.TYPE_11__*) #1

declare dso_local i32 @ext3_blkdev_put(%struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
