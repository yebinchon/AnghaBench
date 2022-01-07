; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_super.c_ext4_check_descriptors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_super.c_ext4_check_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_sb_info = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ext4_group_desc = type { i32, i32 }

@EXT4_FEATURE_INCOMPAT_FLEX_BG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Checking group descriptors\00", align 1
@EXT4_BG_INODE_ZEROED = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"ext4_check_descriptors: Block bitmap for group %u not in group (block %llu)!\00", align 1
@.str.2 = private unnamed_addr constant [77 x i8] c"ext4_check_descriptors: Inode bitmap for group %u not in group (block %llu)!\00", align 1
@.str.3 = private unnamed_addr constant [76 x i8] c"ext4_check_descriptors: Inode table for group %u not in group (block %llu)!\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"ext4_check_descriptors: Checksum for group %u failed (%u!=%u)\00", align 1
@MS_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*)* @ext4_check_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_check_descriptors(%struct.super_block* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ext4_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ext4_group_desc*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %16)
  store %struct.ext4_sb_info* %17, %struct.ext4_sb_info** %6, align 8
  %18 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %19 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le32_to_cpu(i32 %22)
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %24 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %25 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %14, align 4
  %27 = load %struct.super_block*, %struct.super_block** %4, align 8
  %28 = load i32, i32* @EXT4_FEATURE_INCOMPAT_FLEX_BG, align 4
  %29 = call i64 @EXT4_HAS_INCOMPAT_FEATURE(%struct.super_block* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 1, i32* %12, align 4
  br label %32

32:                                               ; preds = %31, %2
  %33 = call i32 @ext4_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %183, %32
  %35 = load i32, i32* %13, align 4
  %36 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %37 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %186

40:                                               ; preds = %34
  %41 = load %struct.super_block*, %struct.super_block** %4, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %41, i32 %42, i32* null)
  store %struct.ext4_group_desc* %43, %struct.ext4_group_desc** %15, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %46 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = icmp eq i32 %44, %48
  br i1 %49, label %53, label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50, %40
  %54 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %55 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = call i32 @ext4_blocks_count(%struct.TYPE_3__* %56)
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %65

59:                                               ; preds = %50
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.super_block*, %struct.super_block** %4, align 8
  %62 = call i32 @EXT4_BLOCKS_PER_GROUP(%struct.super_block* %61)
  %63 = sub nsw i32 %62, 1
  %64 = add nsw i32 %60, %63
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %59, %53
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %68 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %15, align 8
  %73 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @EXT4_BG_INODE_ZEROED, align 4
  %76 = call i32 @cpu_to_le16(i32 %75)
  %77 = and i32 %74, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %71
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %14, align 4
  br label %81

81:                                               ; preds = %79, %71, %65
  %82 = load %struct.super_block*, %struct.super_block** %4, align 8
  %83 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %15, align 8
  %84 = call i32 @ext4_block_bitmap(%struct.super_block* %82, %struct.ext4_group_desc* %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %81
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %88, %81
  %93 = load %struct.super_block*, %struct.super_block** %4, align 8
  %94 = load i32, i32* @KERN_ERR, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 (%struct.super_block*, i32, i8*, i32, i32, ...) @ext4_msg(%struct.super_block* %93, i32 %94, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %96)
  store i32 0, i32* %3, align 4
  br label %206

98:                                               ; preds = %88
  %99 = load %struct.super_block*, %struct.super_block** %4, align 8
  %100 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %15, align 8
  %101 = call i32 @ext4_inode_bitmap(%struct.super_block* %99, %struct.ext4_group_desc* %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %109, label %105

105:                                              ; preds = %98
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %105, %98
  %110 = load %struct.super_block*, %struct.super_block** %4, align 8
  %111 = load i32, i32* @KERN_ERR, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 (%struct.super_block*, i32, i8*, i32, i32, ...) @ext4_msg(%struct.super_block* %110, i32 %111, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0), i32 %112, i32 %113)
  store i32 0, i32* %3, align 4
  br label %206

115:                                              ; preds = %105
  %116 = load %struct.super_block*, %struct.super_block** %4, align 8
  %117 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %15, align 8
  %118 = call i32 @ext4_inode_table(%struct.super_block* %116, %struct.ext4_group_desc* %117)
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %131, label %122

122:                                              ; preds = %115
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %125 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %123, %126
  %128 = sub nsw i32 %127, 1
  %129 = load i32, i32* %8, align 4
  %130 = icmp sgt i32 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %122, %115
  %132 = load %struct.super_block*, %struct.super_block** %4, align 8
  %133 = load i32, i32* @KERN_ERR, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %11, align 4
  %136 = call i32 (%struct.super_block*, i32, i8*, i32, i32, ...) @ext4_msg(%struct.super_block* %132, i32 %133, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.3, i64 0, i64 0), i32 %134, i32 %135)
  store i32 0, i32* %3, align 4
  br label %206

137:                                              ; preds = %122
  %138 = load %struct.super_block*, %struct.super_block** %4, align 8
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @ext4_lock_group(%struct.super_block* %138, i32 %139)
  %141 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %142 = load i32, i32* %13, align 4
  %143 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %15, align 8
  %144 = call i32 @ext4_group_desc_csum_verify(%struct.ext4_sb_info* %141, i32 %142, %struct.ext4_group_desc* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %171, label %146

146:                                              ; preds = %137
  %147 = load %struct.super_block*, %struct.super_block** %4, align 8
  %148 = load i32, i32* @KERN_ERR, align 4
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %151 = load i32, i32* %13, align 4
  %152 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %15, align 8
  %153 = call i32 @ext4_group_desc_csum(%struct.ext4_sb_info* %150, i32 %151, %struct.ext4_group_desc* %152)
  %154 = call i32 @le16_to_cpu(i32 %153)
  %155 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %15, align 8
  %156 = getelementptr inbounds %struct.ext4_group_desc, %struct.ext4_group_desc* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @le16_to_cpu(i32 %157)
  %159 = call i32 (%struct.super_block*, i32, i8*, i32, i32, ...) @ext4_msg(%struct.super_block* %147, i32 %148, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i32 %149, i32 %154, i32 %158)
  %160 = load %struct.super_block*, %struct.super_block** %4, align 8
  %161 = getelementptr inbounds %struct.super_block, %struct.super_block* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @MS_RDONLY, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %146
  %167 = load %struct.super_block*, %struct.super_block** %4, align 8
  %168 = load i32, i32* %13, align 4
  %169 = call i32 @ext4_unlock_group(%struct.super_block* %167, i32 %168)
  store i32 0, i32* %3, align 4
  br label %206

170:                                              ; preds = %146
  br label %171

171:                                              ; preds = %170, %137
  %172 = load %struct.super_block*, %struct.super_block** %4, align 8
  %173 = load i32, i32* %13, align 4
  %174 = call i32 @ext4_unlock_group(%struct.super_block* %172, i32 %173)
  %175 = load i32, i32* %12, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %171
  %178 = load %struct.super_block*, %struct.super_block** %4, align 8
  %179 = call i32 @EXT4_BLOCKS_PER_GROUP(%struct.super_block* %178)
  %180 = load i32, i32* %7, align 4
  %181 = add nsw i32 %180, %179
  store i32 %181, i32* %7, align 4
  br label %182

182:                                              ; preds = %177, %171
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %13, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %13, align 4
  br label %34

186:                                              ; preds = %34
  %187 = load i32*, i32** %5, align 8
  %188 = icmp ne i32* null, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load i32, i32* %14, align 4
  %191 = load i32*, i32** %5, align 8
  store i32 %190, i32* %191, align 4
  br label %192

192:                                              ; preds = %189, %186
  %193 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %194 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %193, i32 0, i32 1
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %194, align 8
  %196 = load %struct.super_block*, %struct.super_block** %4, align 8
  %197 = call i32 @ext4_count_free_blocks(%struct.super_block* %196)
  %198 = call i32 @ext4_free_blocks_count_set(%struct.TYPE_3__* %195, i32 %197)
  %199 = load %struct.super_block*, %struct.super_block** %4, align 8
  %200 = call i32 @ext4_count_free_inodes(%struct.super_block* %199)
  %201 = call i32 @cpu_to_le32(i32 %200)
  %202 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %203 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %202, i32 0, i32 1
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  store i32 %201, i32* %205, align 4
  store i32 1, i32* %3, align 4
  br label %206

206:                                              ; preds = %192, %166, %131, %109, %92
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @EXT4_HAS_INCOMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_debug(i8*) #1

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i32, i32*) #1

declare dso_local i32 @ext4_blocks_count(%struct.TYPE_3__*) #1

declare dso_local i32 @EXT4_BLOCKS_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ext4_block_bitmap(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @ext4_msg(%struct.super_block*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @ext4_inode_bitmap(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @ext4_inode_table(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @ext4_lock_group(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_group_desc_csum_verify(%struct.ext4_sb_info*, i32, %struct.ext4_group_desc*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ext4_group_desc_csum(%struct.ext4_sb_info*, i32, %struct.ext4_group_desc*) #1

declare dso_local i32 @ext4_unlock_group(%struct.super_block*, i32) #1

declare dso_local i32 @ext4_free_blocks_count_set(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @ext4_count_free_blocks(%struct.super_block*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ext4_count_free_inodes(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
