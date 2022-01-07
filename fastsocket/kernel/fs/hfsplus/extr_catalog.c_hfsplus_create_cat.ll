; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_catalog.c_hfsplus_create_cat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfsplus/extr_catalog.c_hfsplus_create_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i32 }
%struct.inode = type { i32, i32, i32, i32, i32, %struct.super_block*, i32 }
%struct.super_block = type { i32 }
%struct.hfs_find_data = type { i32 }
%struct.TYPE_2__ = type { i32 }

@DBG_CAT_MOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"create_cat: %s,%u(%d)\0A\00", align 1
@HFSPLUS_FOLDER_THREAD = common dso_local global i32 0, align 4
@HFSPLUS_FILE_THREAD = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_create_cat(i32 %0, %struct.inode* %1, %struct.qstr* %2, %struct.inode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.hfs_find_data, align 4
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_2__, align 4
  store i32 %0, i32* %6, align 4
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.qstr* %2, %struct.qstr** %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  %16 = load i32, i32* @DBG_CAT_MOD, align 4
  %17 = load %struct.qstr*, %struct.qstr** %8, align 8
  %18 = getelementptr inbounds %struct.qstr, %struct.qstr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dprint(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %23)
  %25 = load %struct.inode*, %struct.inode** %7, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 5
  %27 = load %struct.super_block*, %struct.super_block** %26, align 8
  store %struct.super_block* %27, %struct.super_block** %11, align 8
  %28 = load %struct.super_block*, %struct.super_block** %11, align 8
  %29 = call i32 @HFSPLUS_SB(%struct.super_block* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @hfs_find_init(i32 %32, %struct.hfs_find_data* %10)
  %34 = load %struct.super_block*, %struct.super_block** %11, align 8
  %35 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %10, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @hfsplus_cat_build_key(%struct.super_block* %34, i32 %36, i32 %37, %struct.qstr* null)
  %39 = load %struct.super_block*, %struct.super_block** %11, align 8
  %40 = load %struct.inode*, %struct.inode** %9, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @S_ISDIR(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %4
  %46 = load i32, i32* @HFSPLUS_FOLDER_THREAD, align 4
  br label %49

47:                                               ; preds = %4
  %48 = load i32, i32* @HFSPLUS_FILE_THREAD, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.qstr*, %struct.qstr** %8, align 8
  %55 = call i32 @hfsplus_fill_cat_thread(%struct.super_block* %39, i32* %12, i32 %50, i32 %53, %struct.qstr* %54)
  store i32 %55, i32* %13, align 4
  %56 = call i32 @hfs_brec_find(%struct.hfs_find_data* %10)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @ENOENT, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %49
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* @EEXIST, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %64, %61
  br label %128

68:                                               ; preds = %49
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @hfs_brec_insert(%struct.hfs_find_data* %10, i32* %12, i32 %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %128

74:                                               ; preds = %68
  %75 = load %struct.super_block*, %struct.super_block** %11, align 8
  %76 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %10, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.inode*, %struct.inode** %7, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.qstr*, %struct.qstr** %8, align 8
  %82 = call i32 @hfsplus_cat_build_key(%struct.super_block* %75, i32 %77, i32 %80, %struct.qstr* %81)
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.inode*, %struct.inode** %9, align 8
  %85 = call i32 @hfsplus_cat_build_record(i32* %12, i32 %83, %struct.inode* %84)
  store i32 %85, i32* %13, align 4
  %86 = call i32 @hfs_brec_find(%struct.hfs_find_data* %10)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* @ENOENT, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp ne i32 %87, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %74
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @EEXIST, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %14, align 4
  br label %97

97:                                               ; preds = %94, %91
  br label %117

98:                                               ; preds = %74
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @hfs_brec_insert(%struct.hfs_find_data* %10, i32* %12, i32 %99)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %117

104:                                              ; preds = %98
  %105 = load %struct.inode*, %struct.inode** %7, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 8
  %109 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %110 = load %struct.inode*, %struct.inode** %7, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.inode*, %struct.inode** %7, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 1
  store i32 %109, i32* %113, align 4
  %114 = load %struct.inode*, %struct.inode** %7, align 8
  %115 = call i32 @mark_inode_dirty(%struct.inode* %114)
  %116 = call i32 @hfs_find_exit(%struct.hfs_find_data* %10)
  store i32 0, i32* %5, align 4
  br label %131

117:                                              ; preds = %103, %97
  %118 = load %struct.super_block*, %struct.super_block** %11, align 8
  %119 = getelementptr inbounds %struct.hfs_find_data, %struct.hfs_find_data* %10, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @hfsplus_cat_build_key(%struct.super_block* %118, i32 %120, i32 %121, %struct.qstr* null)
  %123 = call i32 @hfs_brec_find(%struct.hfs_find_data* %10)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %117
  %126 = call i32 @hfs_brec_remove(%struct.hfs_find_data* %10)
  br label %127

127:                                              ; preds = %125, %117
  br label %128

128:                                              ; preds = %127, %73, %67
  %129 = call i32 @hfs_find_exit(%struct.hfs_find_data* %10)
  %130 = load i32, i32* %14, align 4
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %128, %104
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @dprint(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @hfs_find_init(i32, %struct.hfs_find_data*) #1

declare dso_local i32 @HFSPLUS_SB(%struct.super_block*) #1

declare dso_local i32 @hfsplus_cat_build_key(%struct.super_block*, i32, i32, %struct.qstr*) #1

declare dso_local i32 @hfsplus_fill_cat_thread(%struct.super_block*, i32*, i32, i32, %struct.qstr*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @hfs_brec_find(%struct.hfs_find_data*) #1

declare dso_local i32 @hfs_brec_insert(%struct.hfs_find_data*, i32*, i32) #1

declare dso_local i32 @hfsplus_cat_build_record(i32*, i32, %struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @hfs_find_exit(%struct.hfs_find_data*) #1

declare dso_local i32 @hfs_brec_remove(%struct.hfs_find_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
