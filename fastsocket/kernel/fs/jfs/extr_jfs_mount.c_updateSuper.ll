; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_mount.c_updateSuper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_mount.c_updateSuper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.jfs_superblock = type { i32, i32, i32, i32 }
%struct.jfs_sb_info = type { i32, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.buffer_head = type { i64 }

@JFS_NOINTEGRITY = common dso_local global i32 0, align 4
@FM_DIRTY = common dso_local global i64 0, align 8
@FM_MOUNT = common dso_local global i64 0, align 8
@FM_CLEAN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"updateSuper: bad state\00", align 1
@JFS_DASD_ENABLED = common dso_local global i64 0, align 8
@JFS_DASD_PRIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @updateSuper(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.jfs_superblock*, align 8
  %7 = alloca %struct.jfs_sb_info*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = call %struct.jfs_sb_info* @JFS_SBI(%struct.super_block* %10)
  store %struct.jfs_sb_info* %11, %struct.jfs_sb_info** %7, align 8
  %12 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %7, align 8
  %13 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @JFS_NOINTEGRITY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %50

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @FM_DIRTY, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %7, align 8
  %25 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  store i32 0, i32* %3, align 4
  br label %127

26:                                               ; preds = %18
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @FM_MOUNT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %7, align 8
  %32 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %7, align 8
  %35 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* @FM_DIRTY, align 8
  store i64 %36, i64* %5, align 8
  br label %48

37:                                               ; preds = %26
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @FM_CLEAN, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %7, align 8
  %43 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %5, align 8
  br label %47

45:                                               ; preds = %37
  %46 = call i32 @jfs_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %41
  br label %48

48:                                               ; preds = %47, %30
  br label %49

49:                                               ; preds = %48
  br label %58

50:                                               ; preds = %2
  %51 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %7, align 8
  %52 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @FM_DIRTY, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %127

57:                                               ; preds = %50
  br label %58

58:                                               ; preds = %57, %49
  %59 = load %struct.super_block*, %struct.super_block** %4, align 8
  %60 = call i32 @readSuper(%struct.super_block* %59, %struct.buffer_head** %8)
  store i32 %60, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %127

64:                                               ; preds = %58
  %65 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %66 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.jfs_superblock*
  store %struct.jfs_superblock* %68, %struct.jfs_superblock** %6, align 8
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @cpu_to_le32(i64 %69)
  %71 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %72 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load i64, i64* %5, align 8
  %74 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %7, align 8
  %75 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* @FM_MOUNT, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %64
  %80 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %7, align 8
  %81 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %80, i32 0, i32 3
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @new_encode_dev(i32 %86)
  %88 = call i32 @cpu_to_le32(i64 %87)
  %89 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %90 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %7, align 8
  %92 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %91, i32 0, i32 3
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @cpu_to_le32(i64 %95)
  %97 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %98 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 4
  br label %120

99:                                               ; preds = %64
  %100 = load i64, i64* %5, align 8
  %101 = load i64, i64* @FM_CLEAN, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %119

103:                                              ; preds = %99
  %104 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %105 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* @JFS_DASD_ENABLED, align 8
  %108 = call i32 @cpu_to_le32(i64 %107)
  %109 = and i32 %106, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %103
  %112 = load i64, i64* @JFS_DASD_PRIME, align 8
  %113 = call i32 @cpu_to_le32(i64 %112)
  %114 = load %struct.jfs_superblock*, %struct.jfs_superblock** %6, align 8
  %115 = getelementptr inbounds %struct.jfs_superblock, %struct.jfs_superblock* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %111, %103
  br label %119

119:                                              ; preds = %118, %99
  br label %120

120:                                              ; preds = %119, %79
  %121 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %122 = call i32 @mark_buffer_dirty(%struct.buffer_head* %121)
  %123 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %124 = call i32 @sync_dirty_buffer(%struct.buffer_head* %123)
  %125 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %126 = call i32 @brelse(%struct.buffer_head* %125)
  store i32 0, i32* %3, align 4
  br label %127

127:                                              ; preds = %120, %62, %56, %22
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local %struct.jfs_sb_info* @JFS_SBI(%struct.super_block*) #1

declare dso_local i32 @jfs_err(i8*) #1

declare dso_local i32 @readSuper(%struct.super_block*, %struct.buffer_head**) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i64 @new_encode_dev(i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
