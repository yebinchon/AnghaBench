; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_truncate.c_ufs_trunc_tindirect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_truncate.c_ufs_trunc_tindirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ufs_sb_private_info = type { i64, i64, i64, i32, i32 }
%struct.ufs_inode_info = type { i32 }
%struct.ufs_buffer_head = type { i32 }
%struct.TYPE_2__ = type { %struct.ufs_sb_private_info* }

@.str = private unnamed_addr constant [16 x i8] c"ENTER: ino %lu\0A\00", align 1
@DIRECT_BLOCK = common dso_local global i64 0, align 8
@UFS_NDADDR = common dso_local global i64 0, align 8
@UFS_TIND_BLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"EXIT: ino %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @ufs_trunc_tindirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_trunc_tindirect(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.ufs_sb_private_info*, align 8
  %6 = alloca %struct.ufs_inode_info*, align 8
  %7 = alloca %struct.ufs_buffer_head*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 1
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %4, align 8
  %17 = load %struct.super_block*, %struct.super_block** %4, align 8
  %18 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %19, align 8
  store %struct.ufs_sb_private_info* %20, %struct.ufs_sb_private_info** %5, align 8
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = call %struct.ufs_inode_info* @UFS_I(%struct.inode* %21)
  store %struct.ufs_inode_info* %22, %struct.ufs_inode_info** %6, align 8
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @UFSD(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i32 0, i32* %13, align 4
  %27 = load i64, i64* @DIRECT_BLOCK, align 8
  %28 = load i64, i64* @UFS_NDADDR, align 8
  %29 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %30 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %34 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = icmp sgt i64 %27, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %1
  %39 = load i64, i64* @DIRECT_BLOCK, align 8
  %40 = load i64, i64* @UFS_NDADDR, align 8
  %41 = sub nsw i64 %39, %40
  %42 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %43 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %41, %44
  %46 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %47 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  %50 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %51 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = ashr i64 %49, %52
  br label %55

54:                                               ; preds = %1
  br label %55

55:                                               ; preds = %54, %38
  %56 = phi i64 [ %53, %38 ], [ 0, %54 ]
  store i64 %56, i64* %8, align 8
  %57 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %58 = load %struct.ufs_inode_info*, %struct.ufs_inode_info** %6, align 8
  %59 = load i32, i32* @UFS_TIND_BLOCK, align 4
  %60 = call i8* @ufs_get_direct_data_ptr(%struct.ufs_sb_private_info* %57, %struct.ufs_inode_info* %58, i32 %59)
  store i8* %60, i8** %12, align 8
  %61 = load %struct.super_block*, %struct.super_block** %4, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %61, i8* %62)
  store i64 %63, i64* %9, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %188

66:                                               ; preds = %55
  %67 = load %struct.super_block*, %struct.super_block** %4, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %70 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.ufs_buffer_head* @ubh_bread(%struct.super_block* %67, i64 %68, i32 %71)
  store %struct.ufs_buffer_head* %72, %struct.ufs_buffer_head** %7, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load %struct.super_block*, %struct.super_block** %4, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %74, i8* %75)
  %77 = icmp ne i64 %73, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  %79 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %7, align 8
  %80 = call i32 @ubh_brelse(%struct.ufs_buffer_head* %79)
  store i32 1, i32* %2, align 4
  br label %188

81:                                               ; preds = %66
  %82 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %7, align 8
  %83 = icmp ne %struct.ufs_buffer_head* %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = call i32 @ufs_data_ptr_clear(%struct.ufs_sb_private_info* %85, i8* %86)
  store i32 0, i32* %2, align 4
  br label %188

88:                                               ; preds = %81
  %89 = load i64, i64* %8, align 8
  store i64 %89, i64* %10, align 8
  br label %90

90:                                               ; preds = %120, %88
  %91 = load i64, i64* %10, align 8
  %92 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %93 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %91, %94
  br i1 %95, label %96, label %123

96:                                               ; preds = %90
  %97 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %98 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %7, align 8
  %99 = load i64, i64* %10, align 8
  %100 = call i8* @ubh_get_data_ptr(%struct.ufs_sb_private_info* %97, %struct.ufs_buffer_head* %98, i64 %99)
  store i8* %100, i8** %11, align 8
  %101 = load %struct.inode*, %struct.inode** %3, align 8
  %102 = load i64, i64* @UFS_NDADDR, align 8
  %103 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %104 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %102, %105
  %107 = load i64, i64* %10, align 8
  %108 = add nsw i64 %107, 1
  %109 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %110 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = shl i64 %108, %111
  %113 = add nsw i64 %106, %112
  %114 = load i8*, i8** %11, align 8
  %115 = call i32 @ufs_trunc_dindirect(%struct.inode* %101, i64 %113, i8* %114)
  %116 = load i32, i32* %13, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %13, align 4
  %118 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %7, align 8
  %119 = call i32 @ubh_mark_buffer_dirty(%struct.ufs_buffer_head* %118)
  br label %120

120:                                              ; preds = %96
  %121 = load i64, i64* %10, align 8
  %122 = add nsw i64 %121, 1
  store i64 %122, i64* %10, align 8
  br label %90

123:                                              ; preds = %90
  store i64 0, i64* %10, align 8
  br label %124

124:                                              ; preds = %140, %123
  %125 = load i64, i64* %10, align 8
  %126 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %127 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp slt i64 %125, %128
  br i1 %129, label %130, label %143

130:                                              ; preds = %124
  %131 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %132 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %133 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %7, align 8
  %134 = load i64, i64* %10, align 8
  %135 = call i8* @ubh_get_data_ptr(%struct.ufs_sb_private_info* %132, %struct.ufs_buffer_head* %133, i64 %134)
  %136 = call i32 @ufs_is_data_ptr_zero(%struct.ufs_sb_private_info* %131, i8* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %130
  br label %143

139:                                              ; preds = %130
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %10, align 8
  %142 = add nsw i64 %141, 1
  store i64 %142, i64* %10, align 8
  br label %124

143:                                              ; preds = %138, %124
  %144 = load i64, i64* %10, align 8
  %145 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %146 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp sge i64 %144, %147
  br i1 %148, label %149, label %166

149:                                              ; preds = %143
  %150 = load %struct.super_block*, %struct.super_block** %4, align 8
  %151 = load i8*, i8** %12, align 8
  %152 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %150, i8* %151)
  store i64 %152, i64* %9, align 8
  %153 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %154 = load i8*, i8** %12, align 8
  %155 = call i32 @ufs_data_ptr_clear(%struct.ufs_sb_private_info* %153, i8* %154)
  %156 = load %struct.inode*, %struct.inode** %3, align 8
  %157 = load i64, i64* %9, align 8
  %158 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %5, align 8
  %159 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @ufs_free_blocks(%struct.inode* %156, i64 %157, i32 %160)
  %162 = load %struct.inode*, %struct.inode** %3, align 8
  %163 = call i32 @mark_inode_dirty(%struct.inode* %162)
  %164 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %7, align 8
  %165 = call i32 @ubh_bforget(%struct.ufs_buffer_head* %164)
  store %struct.ufs_buffer_head* null, %struct.ufs_buffer_head** %7, align 8
  br label %166

166:                                              ; preds = %149, %143
  %167 = load %struct.inode*, %struct.inode** %3, align 8
  %168 = call i64 @IS_SYNC(%struct.inode* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %166
  %171 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %7, align 8
  %172 = icmp ne %struct.ufs_buffer_head* %171, null
  br i1 %172, label %173, label %180

173:                                              ; preds = %170
  %174 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %7, align 8
  %175 = call i64 @ubh_buffer_dirty(%struct.ufs_buffer_head* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %7, align 8
  %179 = call i32 @ubh_sync_block(%struct.ufs_buffer_head* %178)
  br label %180

180:                                              ; preds = %177, %173, %170, %166
  %181 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %7, align 8
  %182 = call i32 @ubh_brelse(%struct.ufs_buffer_head* %181)
  %183 = load %struct.inode*, %struct.inode** %3, align 8
  %184 = getelementptr inbounds %struct.inode, %struct.inode* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @UFSD(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %185)
  %187 = load i32, i32* %13, align 4
  store i32 %187, i32* %2, align 4
  br label %188

188:                                              ; preds = %180, %84, %78, %65
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local %struct.TYPE_2__* @UFS_SB(%struct.super_block*) #1

declare dso_local %struct.ufs_inode_info* @UFS_I(%struct.inode*) #1

declare dso_local i32 @UFSD(i8*, i32) #1

declare dso_local i8* @ufs_get_direct_data_ptr(%struct.ufs_sb_private_info*, %struct.ufs_inode_info*, i32) #1

declare dso_local i64 @ufs_data_ptr_to_cpu(%struct.super_block*, i8*) #1

declare dso_local %struct.ufs_buffer_head* @ubh_bread(%struct.super_block*, i64, i32) #1

declare dso_local i32 @ubh_brelse(%struct.ufs_buffer_head*) #1

declare dso_local i32 @ufs_data_ptr_clear(%struct.ufs_sb_private_info*, i8*) #1

declare dso_local i8* @ubh_get_data_ptr(%struct.ufs_sb_private_info*, %struct.ufs_buffer_head*, i64) #1

declare dso_local i32 @ufs_trunc_dindirect(%struct.inode*, i64, i8*) #1

declare dso_local i32 @ubh_mark_buffer_dirty(%struct.ufs_buffer_head*) #1

declare dso_local i32 @ufs_is_data_ptr_zero(%struct.ufs_sb_private_info*, i8*) #1

declare dso_local i32 @ufs_free_blocks(%struct.inode*, i64, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @ubh_bforget(%struct.ufs_buffer_head*) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i64 @ubh_buffer_dirty(%struct.ufs_buffer_head*) #1

declare dso_local i32 @ubh_sync_block(%struct.ufs_buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
