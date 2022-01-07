; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_ialloc.c_ext4_claim_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_ialloc.c_ext4_claim_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ext4_sb_info = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ext4_group_info = type { i32 }
%struct.ext4_group_desc = type { i32, i32 }

@.str = private unnamed_addr constant [69 x i8] c"reserved inode or inode > inodes count - block_group = %u, inode=%lu\00", align 1
@EXT4_FEATURE_RO_COMPAT_GDT_CSUM = common dso_local global i32 0, align 4
@EXT4_BG_INODE_UNINIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.buffer_head*, i64, i64, i32)* @ext4_claim_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_claim_inode(%struct.super_block* %0, %struct.buffer_head* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ext4_sb_info*, align 8
  %16 = alloca %struct.ext4_group_info*, align 8
  %17 = alloca %struct.ext4_group_desc*, align 8
  %18 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.super_block*, %struct.super_block** %7, align 8
  %20 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %19)
  store %struct.ext4_sb_info* %20, %struct.ext4_sb_info** %15, align 8
  %21 = load %struct.super_block*, %struct.super_block** %7, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call %struct.ext4_group_info* @ext4_get_group_info(%struct.super_block* %21, i64 %22)
  store %struct.ext4_group_info* %23, %struct.ext4_group_info** %16, align 8
  %24 = load %struct.super_block*, %struct.super_block** %7, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %24, i64 %25, i32* null)
  store %struct.ext4_group_desc* %26, %struct.ext4_group_desc** %17, align 8
  %27 = load %struct.ext4_group_info*, %struct.ext4_group_info** %16, align 8
  %28 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %27, i32 0, i32 0
  %29 = call i32 @down_read(i32* %28)
  %30 = load %struct.super_block*, %struct.super_block** %7, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @ext4_lock_group(%struct.super_block* %30, i64 %31)
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %35 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ext4_set_bit(i64 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %5
  store i32 1, i32* %13, align 4
  br label %158

40:                                               ; preds = %5
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.super_block*, %struct.super_block** %7, align 8
  %48 = call i64 @EXT4_FIRST_INO(%struct.super_block* %47)
  %49 = icmp ult i64 %46, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %45, %40
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.super_block*, %struct.super_block** %7, align 8
  %53 = call i64 @EXT4_INODES_PER_GROUP(%struct.super_block* %52)
  %54 = icmp ugt i64 %51, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %50, %45
  %56 = load %struct.super_block*, %struct.super_block** %7, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @ext4_unlock_group(%struct.super_block* %56, i64 %57)
  %59 = load %struct.ext4_group_info*, %struct.ext4_group_info** %16, align 8
  %60 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %59, i32 0, i32 0
  %61 = call i32 @up_read(i32* %60)
  %62 = load %struct.super_block*, %struct.super_block** %7, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load %struct.super_block*, %struct.super_block** %7, align 8
  %67 = call i64 @EXT4_INODES_PER_GROUP(%struct.super_block* %66)
  %68 = mul i64 %65, %67
  %69 = add i64 %64, %68
  %70 = call i32 @ext4_error(%struct.super_block* %62, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i64 %63, i64 %69)
  store i32 1, i32* %6, align 4
  br label %166

71:                                               ; preds = %50
  %72 = load %struct.super_block*, %struct.super_block** %7, align 8
  %73 = load i32, i32* @EXT4_FEATURE_RO_COMPAT_GDT_CSUM, align 4
  %74 = call i64 @EXT4_HAS_RO_COMPAT_FEATURE(%struct.super_block* %72, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %114

76:                                               ; preds = %71
  %77 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %17, align 8
  %78 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @EXT4_BG_INODE_UNINIT, align 4
  %81 = call i32 @cpu_to_le16(i32 %80)
  %82 = and i32 %79, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %76
  %85 = load i32, i32* @EXT4_BG_INODE_UNINIT, align 4
  %86 = xor i32 %85, -1
  %87 = call i32 @cpu_to_le16(i32 %86)
  %88 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %17, align 8
  %89 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 4
  store i32 0, i32* %12, align 4
  br label %100

92:                                               ; preds = %76
  %93 = load %struct.super_block*, %struct.super_block** %7, align 8
  %94 = call i64 @EXT4_INODES_PER_GROUP(%struct.super_block* %93)
  %95 = load %struct.super_block*, %struct.super_block** %7, align 8
  %96 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %17, align 8
  %97 = call i64 @ext4_itable_unused_count(%struct.super_block* %95, %struct.ext4_group_desc* %96)
  %98 = sub i64 %94, %97
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %92, %84
  %101 = load i64, i64* %9, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = icmp ugt i64 %101, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load %struct.super_block*, %struct.super_block** %7, align 8
  %107 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %17, align 8
  %108 = load %struct.super_block*, %struct.super_block** %7, align 8
  %109 = call i64 @EXT4_INODES_PER_GROUP(%struct.super_block* %108)
  %110 = load i64, i64* %9, align 8
  %111 = sub i64 %109, %110
  %112 = call i32 @ext4_itable_unused_set(%struct.super_block* %106, %struct.ext4_group_desc* %107, i64 %111)
  br label %113

113:                                              ; preds = %105, %100
  br label %114

114:                                              ; preds = %113, %71
  %115 = load %struct.super_block*, %struct.super_block** %7, align 8
  %116 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %17, align 8
  %117 = call i32 @ext4_free_inodes_count(%struct.super_block* %115, %struct.ext4_group_desc* %116)
  %118 = sub nsw i32 %117, 1
  store i32 %118, i32* %14, align 4
  %119 = load %struct.super_block*, %struct.super_block** %7, align 8
  %120 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %17, align 8
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @ext4_free_inodes_set(%struct.super_block* %119, %struct.ext4_group_desc* %120, i32 %121)
  %123 = load i32, i32* %11, align 4
  %124 = call i64 @S_ISDIR(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %151

126:                                              ; preds = %114
  %127 = load %struct.super_block*, %struct.super_block** %7, align 8
  %128 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %17, align 8
  %129 = call i32 @ext4_used_dirs_count(%struct.super_block* %127, %struct.ext4_group_desc* %128)
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %14, align 4
  %131 = load %struct.super_block*, %struct.super_block** %7, align 8
  %132 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %17, align 8
  %133 = load i32, i32* %14, align 4
  %134 = call i32 @ext4_used_dirs_set(%struct.super_block* %131, %struct.ext4_group_desc* %132, i32 %133)
  %135 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %15, align 8
  %136 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %126
  %140 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %15, align 8
  %141 = load i64, i64* %10, align 8
  %142 = call i64 @ext4_flex_group(%struct.ext4_sb_info* %140, i64 %141)
  store i64 %142, i64* %18, align 8
  %143 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %15, align 8
  %144 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %143, i32 0, i32 0
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = load i64, i64* %18, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = call i32 @atomic_inc(i32* %148)
  br label %150

150:                                              ; preds = %139, %126
  br label %151

151:                                              ; preds = %150, %114
  %152 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %15, align 8
  %153 = load i64, i64* %10, align 8
  %154 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %17, align 8
  %155 = call i32 @ext4_group_desc_csum(%struct.ext4_sb_info* %152, i64 %153, %struct.ext4_group_desc* %154)
  %156 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %17, align 8
  %157 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  br label %158

158:                                              ; preds = %151, %39
  %159 = load %struct.super_block*, %struct.super_block** %7, align 8
  %160 = load i64, i64* %10, align 8
  %161 = call i32 @ext4_unlock_group(%struct.super_block* %159, i64 %160)
  %162 = load %struct.ext4_group_info*, %struct.ext4_group_info** %16, align 8
  %163 = getelementptr inbounds %struct.ext4_group_info, %struct.ext4_group_info* %162, i32 0, i32 0
  %164 = call i32 @up_read(i32* %163)
  %165 = load i32, i32* %13, align 4
  store i32 %165, i32* %6, align 4
  br label %166

166:                                              ; preds = %158, %55
  %167 = load i32, i32* %6, align 4
  ret i32 %167
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local %struct.ext4_group_info* @ext4_get_group_info(%struct.super_block*, i64) #1

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i64, i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @ext4_lock_group(%struct.super_block*, i64) #1

declare dso_local i64 @ext4_set_bit(i64, i32) #1

declare dso_local i64 @EXT4_FIRST_INO(%struct.super_block*) #1

declare dso_local i64 @EXT4_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @ext4_unlock_group(%struct.super_block*, i64) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ext4_error(%struct.super_block*, i8*, i64, i64) #1

declare dso_local i64 @EXT4_HAS_RO_COMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @ext4_itable_unused_count(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @ext4_itable_unused_set(%struct.super_block*, %struct.ext4_group_desc*, i64) #1

declare dso_local i32 @ext4_free_inodes_count(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @ext4_free_inodes_set(%struct.super_block*, %struct.ext4_group_desc*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @ext4_used_dirs_count(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @ext4_used_dirs_set(%struct.super_block*, %struct.ext4_group_desc*, i32) #1

declare dso_local i64 @ext4_flex_group(%struct.ext4_sb_info*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ext4_group_desc_csum(%struct.ext4_sb_info*, i64, %struct.ext4_group_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
