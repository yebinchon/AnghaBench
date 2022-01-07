; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_misc.c_fat_chain_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_misc.c_fat_chain_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.msdos_sb_info = type { i32 }
%struct.fat_entry = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@FAT_ENT_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"clusters badly computed (%d != %llu)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fat_chain_add(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.msdos_sb_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.fat_entry, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 2
  %19 = load %struct.super_block*, %struct.super_block** %18, align 8
  store %struct.super_block* %19, %struct.super_block** %8, align 8
  %20 = load %struct.super_block*, %struct.super_block** %8, align 8
  %21 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %20)
  store %struct.msdos_sb_info* %21, %struct.msdos_sb_info** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = call %struct.TYPE_2__* @MSDOS_I(%struct.inode* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %3
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = load i32, i32* @FAT_ENT_EOF, align 4
  %30 = call i32 @fat_get_cluster(%struct.inode* %28, i32 %29, i32* %13, i32* %14)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %129

35:                                               ; preds = %27
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %35, %3
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %39
  %43 = call i32 @fatent_init(%struct.fat_entry* %15)
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @fat_ent_read(%struct.inode* %44, %struct.fat_entry* %15, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = call i32 @inode_needs_sync(%struct.inode* %50)
  store i32 %51, i32* %16, align 4
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %16, align 4
  %55 = call i32 @fat_ent_write(%struct.inode* %52, %struct.fat_entry* %15, i32 %53, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = call i32 @fatent_brelse(%struct.fat_entry* %15)
  br label %57

57:                                               ; preds = %49, %42
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %4, align 4
  br label %129

62:                                               ; preds = %57
  br label %93

63:                                               ; preds = %39
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = call %struct.TYPE_2__* @MSDOS_I(%struct.inode* %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.inode*, %struct.inode** %5, align 8
  %70 = call %struct.TYPE_2__* @MSDOS_I(%struct.inode* %69)
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  %72 = load %struct.inode*, %struct.inode** %5, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @S_ISDIR(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %63
  %78 = load %struct.inode*, %struct.inode** %5, align 8
  %79 = call i64 @IS_DIRSYNC(%struct.inode* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = load %struct.inode*, %struct.inode** %5, align 8
  %83 = call i32 @fat_sync_inode(%struct.inode* %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %4, align 4
  br label %129

88:                                               ; preds = %81
  br label %92

89:                                               ; preds = %77, %63
  %90 = load %struct.inode*, %struct.inode** %5, align 8
  %91 = call i32 @mark_inode_dirty(%struct.inode* %90)
  br label %92

92:                                               ; preds = %89, %88
  br label %93

93:                                               ; preds = %92, %62
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.inode*, %struct.inode** %5, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %99 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %100, 9
  %102 = ashr i32 %97, %101
  %103 = icmp ne i32 %94, %102
  br i1 %103, label %104, label %118

104:                                              ; preds = %93
  %105 = load %struct.super_block*, %struct.super_block** %8, align 8
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.inode*, %struct.inode** %5, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %111 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %112, 9
  %114 = ashr i32 %109, %113
  %115 = call i32 @fat_fs_error(%struct.super_block* %105, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %106, i32 %114)
  %116 = load %struct.inode*, %struct.inode** %5, align 8
  %117 = call i32 @fat_cache_inval_inode(%struct.inode* %116)
  br label %118

118:                                              ; preds = %104, %93
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %121 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %122, 9
  %124 = shl i32 %119, %123
  %125 = load %struct.inode*, %struct.inode** %5, align 8
  %126 = getelementptr inbounds %struct.inode, %struct.inode* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, %124
  store i32 %128, i32* %126, align 8
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %118, %86, %60, %33
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

declare dso_local %struct.TYPE_2__* @MSDOS_I(%struct.inode*) #1

declare dso_local i32 @fat_get_cluster(%struct.inode*, i32, i32*, i32*) #1

declare dso_local i32 @fatent_init(%struct.fat_entry*) #1

declare dso_local i32 @fat_ent_read(%struct.inode*, %struct.fat_entry*, i32) #1

declare dso_local i32 @inode_needs_sync(%struct.inode*) #1

declare dso_local i32 @fat_ent_write(%struct.inode*, %struct.fat_entry*, i32, i32) #1

declare dso_local i32 @fatent_brelse(%struct.fat_entry*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @fat_sync_inode(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @fat_fs_error(%struct.super_block*, i8*, i32, i32) #1

declare dso_local i32 @fat_cache_inval_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
