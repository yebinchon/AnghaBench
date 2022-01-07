; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_balloc.c_udf_table_prealloc_blocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_balloc.c_udf_table_prealloc_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.udf_sb_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kernel_lb_addr = type { i32 }
%struct.extent_position = type { i32, i32*, i32 }
%struct.udf_inode_info = type { i64, i32 }

@ICBTAG_FLAG_AD_SHORT = common dso_local global i64 0, align 8
@ICBTAG_FLAG_AD_LONG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"eloc=%d, elen=%d, first_block=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.inode*, %struct.inode*, i64, i32, i32)* @udf_table_prealloc_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_table_prealloc_blocks(%struct.super_block* %0, %struct.inode* %1, %struct.inode* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.udf_sb_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.kernel_lb_addr, align 4
  %19 = alloca %struct.extent_position, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.udf_inode_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.inode* %2, %struct.inode** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %22 = load %struct.super_block*, %struct.super_block** %8, align 8
  %23 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %22)
  store %struct.udf_sb_info* %23, %struct.udf_sb_info** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 -1, i32* %20, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.udf_sb_info*, %struct.udf_sb_info** %14, align 8
  %26 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sge i32 %24, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %163

34:                                               ; preds = %6
  %35 = load %struct.inode*, %struct.inode** %10, align 8
  %36 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %35)
  store %struct.udf_inode_info* %36, %struct.udf_inode_info** %21, align 8
  %37 = load %struct.udf_inode_info*, %struct.udf_inode_info** %21, align 8
  %38 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ICBTAG_FLAG_AD_SHORT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 4, i32* %17, align 4
  br label %52

43:                                               ; preds = %34
  %44 = load %struct.udf_inode_info*, %struct.udf_inode_info** %21, align 8
  %45 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ICBTAG_FLAG_AD_LONG, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 4, i32* %17, align 4
  br label %51

50:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %163

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51, %42
  %53 = load %struct.udf_sb_info*, %struct.udf_sb_info** %14, align 8
  %54 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %53, i32 0, i32 0
  %55 = call i32 @mutex_lock(i32* %54)
  %56 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %19, i32 0, i32 0
  store i32 4, i32* %56, align 8
  %57 = load %struct.udf_inode_info*, %struct.udf_inode_info** %21, align 8
  %58 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %19, i32 0, i32 2
  store i32 %59, i32* %60, align 8
  %61 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %19, i32 0, i32 1
  store i32* null, i32** %61, align 8
  %62 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %18, i32 0, i32 0
  store i32 -1, i32* %62, align 4
  br label %63

63:                                               ; preds = %74, %52
  %64 = load i32, i32* %12, align 4
  %65 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %18, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %64, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.inode*, %struct.inode** %10, align 8
  %70 = call i32 @udf_next_aext(%struct.inode* %69, %struct.extent_position* %19, %struct.kernel_lb_addr* %18, i32* %16, i32 1)
  store i32 %70, i32* %20, align 4
  %71 = icmp ne i32 %70, -1
  br label %72

72:                                               ; preds = %68, %63
  %73 = phi i1 [ false, %63 ], [ %71, %68 ]
  br i1 %73, label %74, label %80

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %18, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @udf_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77, i32 %78)
  br label %63

80:                                               ; preds = %72
  %81 = load i32, i32* %12, align 4
  %82 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %18, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %145

85:                                               ; preds = %80
  %86 = load i32, i32* %17, align 4
  %87 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %19, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %88, %86
  store i32 %89, i32* %87, align 8
  %90 = load i32, i32* %16, align 4
  %91 = load %struct.super_block*, %struct.super_block** %8, align 8
  %92 = getelementptr inbounds %struct.super_block, %struct.super_block* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = ashr i32 %90, %93
  store i32 %94, i32* %15, align 4
  %95 = load %struct.inode*, %struct.inode** %9, align 8
  %96 = icmp ne %struct.inode* %95, null
  br i1 %96, label %97, label %111

97:                                               ; preds = %85
  %98 = load %struct.inode*, %struct.inode** %9, align 8
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* %13, align 4
  br label %106

104:                                              ; preds = %97
  %105 = load i32, i32* %15, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = call i64 @vfs_dq_prealloc_block(%struct.inode* %98, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 0, i32* %15, align 4
  br label %144

111:                                              ; preds = %106, %85
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %13, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %134

115:                                              ; preds = %111
  %116 = load i32, i32* %13, align 4
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %18, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, %117
  store i32 %120, i32* %118, align 4
  %121 = load i32, i32* %15, align 4
  %122 = load %struct.super_block*, %struct.super_block** %8, align 8
  %123 = getelementptr inbounds %struct.super_block, %struct.super_block* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %121, %124
  %126 = load i32, i32* %16, align 4
  %127 = sub nsw i32 %126, %125
  store i32 %127, i32* %16, align 4
  %128 = load %struct.inode*, %struct.inode** %10, align 8
  %129 = load i32, i32* %20, align 4
  %130 = shl i32 %129, 30
  %131 = load i32, i32* %16, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @udf_write_aext(%struct.inode* %128, %struct.extent_position* %19, %struct.kernel_lb_addr* %18, i32 %132, i32 1)
  br label %143

134:                                              ; preds = %111
  %135 = load %struct.inode*, %struct.inode** %10, align 8
  %136 = load i32, i32* %20, align 4
  %137 = shl i32 %136, 30
  %138 = load i32, i32* %16, align 4
  %139 = or i32 %137, %138
  %140 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %18, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @udf_delete_aext(%struct.inode* %135, %struct.extent_position* byval(%struct.extent_position) align 8 %19, i32 %141, i32 %139)
  br label %143

143:                                              ; preds = %134, %115
  br label %144

144:                                              ; preds = %143, %110
  br label %146

145:                                              ; preds = %80
  store i32 0, i32* %15, align 4
  br label %146

146:                                              ; preds = %145, %144
  %147 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %19, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @brelse(i32* %148)
  %150 = load i32, i32* %15, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %146
  %153 = load %struct.super_block*, %struct.super_block** %8, align 8
  %154 = load i64, i64* %11, align 8
  %155 = load i32, i32* %15, align 4
  %156 = sub nsw i32 0, %155
  %157 = call i32 @udf_add_free_space(%struct.super_block* %153, i64 %154, i32 %156)
  br label %158

158:                                              ; preds = %152, %146
  %159 = load %struct.udf_sb_info*, %struct.udf_sb_info** %14, align 8
  %160 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %159, i32 0, i32 0
  %161 = call i32 @mutex_unlock(i32* %160)
  %162 = load i32, i32* %15, align 4
  store i32 %162, i32* %7, align 4
  br label %163

163:                                              ; preds = %158, %50, %33
  %164 = load i32, i32* %7, align 4
  ret i32 %164
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @udf_next_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32) #1

declare dso_local i32 @udf_debug(i8*, i32, i32, i32) #1

declare dso_local i64 @vfs_dq_prealloc_block(%struct.inode*, i32) #1

declare dso_local i32 @udf_write_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i32) #1

declare dso_local i32 @udf_delete_aext(%struct.inode*, %struct.extent_position* byval(%struct.extent_position) align 8, i32, i32) #1

declare dso_local i32 @brelse(i32*) #1

declare dso_local i32 @udf_add_free_space(%struct.super_block*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
