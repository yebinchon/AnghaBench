; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_catalog.c_hfs_cat_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_catalog.c_hfs_cat_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i32 }
%struct.inode = type { i64, i32, i32, i32, i32, %struct.super_block*, i32 }
%struct.super_block = type { i32 }
%struct.hfs_find_data = type { i32 }
%union.hfs_cat_rec = type { i32 }
%struct.TYPE_2__ = type { i32 }

@DBG_CAT_MOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"create_cat: %s,%u(%d)\0A\00", align 1
@HFS_MAX_VALENCE = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@HFS_CDR_THD = common dso_local global i32 0, align 4
@HFS_CDR_FTH = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_cat_create(i32 %0, %struct.inode* %1, %struct.qstr* %2, %struct.inode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.hfs_find_data, align 4
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca %union.hfs_cat_rec, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.qstr* %2, %struct.qstr** %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  %15 = load i32, i32* @DBG_CAT_MOD, align 4
  %16 = load %struct.qstr*, %struct.qstr** %8, align 8
  %17 = getelementptr inbounds %struct.qstr, %struct.qstr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.inode*, %struct.inode** %9, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dprint(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %22)
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @HFS_MAX_VALENCE, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @ENOSPC, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %138

32:                                               ; preds = %4
  %33 = load %struct.inode*, %struct.inode** %7, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 5
  %35 = load %struct.super_block*, %struct.super_block** %34, align 8
  store %struct.super_block* %35, %struct.super_block** %11, align 8
  %36 = load %struct.super_block*, %struct.super_block** %11, align 8
  %37 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @hfs_find_init(i32 %39, %struct.hfs_find_data* %10)
  %41 = load %struct.super_block*, %struct.super_block** %11, align 8
  %42 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %10, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @hfs_cat_build_key(%struct.super_block* %41, i32 %43, i32 %44, %struct.qstr* null)
  %46 = load %struct.super_block*, %struct.super_block** %11, align 8
  %47 = load %struct.inode*, %struct.inode** %9, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @S_ISDIR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %32
  %53 = load i32, i32* @HFS_CDR_THD, align 4
  br label %56

54:                                               ; preds = %32
  %55 = load i32, i32* @HFS_CDR_FTH, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.qstr*, %struct.qstr** %8, align 8
  %62 = call i32 @hfs_cat_build_thread(%struct.super_block* %46, %union.hfs_cat_rec* %12, i32 %57, i32 %60, %struct.qstr* %61)
  store i32 %62, i32* %13, align 4
  %63 = call i32 @hfs_brec_find(%struct.hfs_find_data* %10)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @ENOENT, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp ne i32 %64, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %56
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* @EEXIST, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %71, %68
  br label %135

75:                                               ; preds = %56
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @hfs_brec_insert(%struct.hfs_find_data* %10, %union.hfs_cat_rec* %12, i32 %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %135

81:                                               ; preds = %75
  %82 = load %struct.super_block*, %struct.super_block** %11, align 8
  %83 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %10, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.inode*, %struct.inode** %7, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.qstr*, %struct.qstr** %8, align 8
  %89 = call i32 @hfs_cat_build_key(%struct.super_block* %82, i32 %84, i32 %87, %struct.qstr* %88)
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.inode*, %struct.inode** %9, align 8
  %92 = call i32 @hfs_cat_build_record(%union.hfs_cat_rec* %12, i32 %90, %struct.inode* %91)
  store i32 %92, i32* %13, align 4
  %93 = call i32 @hfs_brec_find(%struct.hfs_find_data* %10)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* @ENOENT, align 4
  %96 = sub nsw i32 0, %95
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %81
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* @EEXIST, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %14, align 4
  br label %104

104:                                              ; preds = %101, %98
  br label %124

105:                                              ; preds = %81
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @hfs_brec_insert(%struct.hfs_find_data* %10, %union.hfs_cat_rec* %12, i32 %106)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %124

111:                                              ; preds = %105
  %112 = load %struct.inode*, %struct.inode** %7, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %113, align 8
  %116 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %117 = load %struct.inode*, %struct.inode** %7, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  %119 = load %struct.inode*, %struct.inode** %7, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 2
  store i32 %116, i32* %120, align 4
  %121 = load %struct.inode*, %struct.inode** %7, align 8
  %122 = call i32 @mark_inode_dirty(%struct.inode* %121)
  %123 = call i32 @hfs_find_exit(%struct.hfs_find_data* %10)
  store i32 0, i32* %5, align 4
  br label %138

124:                                              ; preds = %110, %104
  %125 = load %struct.super_block*, %struct.super_block** %11, align 8
  %126 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %10, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @hfs_cat_build_key(%struct.super_block* %125, i32 %127, i32 %128, %struct.qstr* null)
  %130 = call i32 @hfs_brec_find(%struct.hfs_find_data* %10)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %124
  %133 = call i32 @hfs_brec_remove(%struct.hfs_find_data* %10)
  br label %134

134:                                              ; preds = %132, %124
  br label %135

135:                                              ; preds = %134, %80, %74
  %136 = call i32 @hfs_find_exit(%struct.hfs_find_data* %10)
  %137 = load i32, i32* %14, align 4
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %135, %111, %29
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @dprint(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local %struct.TYPE_2__* @HFS_SB(%struct.super_block*) #1

declare dso_local i32 @hfs_cat_build_key(%struct.super_block*, i32, i32, %struct.qstr*) #1

declare dso_local i32 @hfs_cat_build_thread(%struct.super_block*, %union.hfs_cat_rec*, i32, i32, %struct.qstr*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @hfs_brec_find(%struct.hfs_find_data*) #1

declare dso_local i32 @hfs_brec_insert(%struct.hfs_find_data*, %union.hfs_cat_rec*, i32) #1

declare dso_local i32 @hfs_cat_build_record(%union.hfs_cat_rec*, i32, %struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

declare dso_local i32 @hfs_brec_remove(%struct.hfs_find_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
