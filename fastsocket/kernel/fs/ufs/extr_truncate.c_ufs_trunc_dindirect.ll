; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_truncate.c_ufs_trunc_dindirect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_truncate.c_ufs_trunc_dindirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ufs_sb_private_info = type { i64, i64, i32, i32 }
%struct.ufs_buffer_head = type { i32 }
%struct.TYPE_2__ = type { %struct.ufs_sb_private_info* }

@.str = private unnamed_addr constant [16 x i8] c"ENTER: ino %lu\0A\00", align 1
@DIRECT_BLOCK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"EXIT: ino %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i8*)* @ufs_trunc_dindirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_trunc_dindirect(%struct.inode* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.ufs_sb_private_info*, align 8
  %10 = alloca %struct.ufs_buffer_head*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @UFSD(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 1
  %22 = load %struct.super_block*, %struct.super_block** %21, align 8
  store %struct.super_block* %22, %struct.super_block** %8, align 8
  %23 = load %struct.super_block*, %struct.super_block** %8, align 8
  %24 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %25, align 8
  store %struct.ufs_sb_private_info* %26, %struct.ufs_sb_private_info** %9, align 8
  %27 = load i64, i64* @DIRECT_BLOCK, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %3
  %31 = load i64, i64* @DIRECT_BLOCK, align 8
  %32 = load i64, i64* %6, align 8
  %33 = sub nsw i64 %31, %32
  %34 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %35 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = ashr i64 %33, %36
  br label %39

38:                                               ; preds = %3
  br label %39

39:                                               ; preds = %38, %30
  %40 = phi i64 [ %37, %30 ], [ 0, %38 ]
  store i64 %40, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %41 = load %struct.super_block*, %struct.super_block** %8, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %41, i8* %42)
  store i64 %43, i64* %12, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %171

47:                                               ; preds = %39
  %48 = load %struct.super_block*, %struct.super_block** %8, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %51 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.ufs_buffer_head* @ubh_bread(%struct.super_block* %48, i64 %49, i32 %52)
  store %struct.ufs_buffer_head* %53, %struct.ufs_buffer_head** %10, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load %struct.super_block*, %struct.super_block** %8, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %55, i8* %56)
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %47
  %60 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %61 = call i32 @ubh_brelse(%struct.ufs_buffer_head* %60)
  store i32 1, i32* %4, align 4
  br label %171

62:                                               ; preds = %47
  %63 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %64 = icmp ne %struct.ufs_buffer_head* %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @ufs_data_ptr_clear(%struct.ufs_sb_private_info* %66, i8* %67)
  store i32 0, i32* %4, align 4
  br label %171

69:                                               ; preds = %62
  %70 = load i64, i64* %13, align 8
  store i64 %70, i64* %11, align 8
  br label %71

71:                                               ; preds = %103, %69
  %72 = load i64, i64* %11, align 8
  %73 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %74 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %72, %75
  br i1 %76, label %77, label %106

77:                                               ; preds = %71
  %78 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %79 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call i8* @ubh_get_data_ptr(%struct.ufs_sb_private_info* %78, %struct.ufs_buffer_head* %79, i64 %80)
  store i8* %81, i8** %14, align 8
  %82 = load %struct.super_block*, %struct.super_block** %8, align 8
  %83 = load i8*, i8** %14, align 8
  %84 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %82, i8* %83)
  store i64 %84, i64* %12, align 8
  %85 = load i64, i64* %12, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %77
  br label %103

88:                                               ; preds = %77
  %89 = load %struct.inode*, %struct.inode** %5, align 8
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %93 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = shl i64 %91, %94
  %96 = add nsw i64 %90, %95
  %97 = load i8*, i8** %14, align 8
  %98 = call i32 @ufs_trunc_indirect(%struct.inode* %89, i64 %96, i8* %97)
  %99 = load i32, i32* %15, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %15, align 4
  %101 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %102 = call i32 @ubh_mark_buffer_dirty(%struct.ufs_buffer_head* %101)
  br label %103

103:                                              ; preds = %88, %87
  %104 = load i64, i64* %11, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %11, align 8
  br label %71

106:                                              ; preds = %71
  store i64 0, i64* %11, align 8
  br label %107

107:                                              ; preds = %123, %106
  %108 = load i64, i64* %11, align 8
  %109 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %110 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp slt i64 %108, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %107
  %114 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %115 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %116 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %117 = load i64, i64* %11, align 8
  %118 = call i8* @ubh_get_data_ptr(%struct.ufs_sb_private_info* %115, %struct.ufs_buffer_head* %116, i64 %117)
  %119 = call i32 @ufs_is_data_ptr_zero(%struct.ufs_sb_private_info* %114, i8* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %113
  br label %126

122:                                              ; preds = %113
  br label %123

123:                                              ; preds = %122
  %124 = load i64, i64* %11, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %11, align 8
  br label %107

126:                                              ; preds = %121, %107
  %127 = load i64, i64* %11, align 8
  %128 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %129 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp sge i64 %127, %130
  br i1 %131, label %132, label %149

132:                                              ; preds = %126
  %133 = load %struct.super_block*, %struct.super_block** %8, align 8
  %134 = load i8*, i8** %7, align 8
  %135 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %133, i8* %134)
  store i64 %135, i64* %12, align 8
  %136 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %137 = load i8*, i8** %7, align 8
  %138 = call i32 @ufs_data_ptr_clear(%struct.ufs_sb_private_info* %136, i8* %137)
  %139 = load %struct.inode*, %struct.inode** %5, align 8
  %140 = load i64, i64* %12, align 8
  %141 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %9, align 8
  %142 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @ufs_free_blocks(%struct.inode* %139, i64 %140, i32 %143)
  %145 = load %struct.inode*, %struct.inode** %5, align 8
  %146 = call i32 @mark_inode_dirty(%struct.inode* %145)
  %147 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %148 = call i32 @ubh_bforget(%struct.ufs_buffer_head* %147)
  store %struct.ufs_buffer_head* null, %struct.ufs_buffer_head** %10, align 8
  br label %149

149:                                              ; preds = %132, %126
  %150 = load %struct.inode*, %struct.inode** %5, align 8
  %151 = call i64 @IS_SYNC(%struct.inode* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %149
  %154 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %155 = icmp ne %struct.ufs_buffer_head* %154, null
  br i1 %155, label %156, label %163

156:                                              ; preds = %153
  %157 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %158 = call i64 @ubh_buffer_dirty(%struct.ufs_buffer_head* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %162 = call i32 @ubh_sync_block(%struct.ufs_buffer_head* %161)
  br label %163

163:                                              ; preds = %160, %156, %153, %149
  %164 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %10, align 8
  %165 = call i32 @ubh_brelse(%struct.ufs_buffer_head* %164)
  %166 = load %struct.inode*, %struct.inode** %5, align 8
  %167 = getelementptr inbounds %struct.inode, %struct.inode* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @UFSD(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %15, align 4
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %163, %65, %59, %46
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i32 @UFSD(i8*, i32) #1

declare dso_local %struct.TYPE_2__* @UFS_SB(%struct.super_block*) #1

declare dso_local i64 @ufs_data_ptr_to_cpu(%struct.super_block*, i8*) #1

declare dso_local %struct.ufs_buffer_head* @ubh_bread(%struct.super_block*, i64, i32) #1

declare dso_local i32 @ubh_brelse(%struct.ufs_buffer_head*) #1

declare dso_local i32 @ufs_data_ptr_clear(%struct.ufs_sb_private_info*, i8*) #1

declare dso_local i8* @ubh_get_data_ptr(%struct.ufs_sb_private_info*, %struct.ufs_buffer_head*, i64) #1

declare dso_local i32 @ufs_trunc_indirect(%struct.inode*, i64, i8*) #1

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
