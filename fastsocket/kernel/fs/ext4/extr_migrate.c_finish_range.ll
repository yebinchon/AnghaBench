; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_migrate.c_finish_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_migrate.c_finish_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.list_blocks_struct = type { i32, i64, i64 }
%struct.ext4_extent = type { i32, i32 }
%struct.ext4_ext_path = type { i32 }

@EXT4_RESERVE_TRANS_BLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.list_blocks_struct*)* @finish_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finish_range(i32* %0, %struct.inode* %1, %struct.list_blocks_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.list_blocks_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext4_extent, align 4
  %11 = alloca %struct.ext4_ext_path*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.list_blocks_struct* %2, %struct.list_blocks_struct** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.list_blocks_struct*, %struct.list_blocks_struct** %7, align 8
  %13 = getelementptr inbounds %struct.list_blocks_struct, %struct.list_blocks_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %111

17:                                               ; preds = %3
  %18 = load %struct.list_blocks_struct*, %struct.list_blocks_struct** %7, align 8
  %19 = getelementptr inbounds %struct.list_blocks_struct, %struct.list_blocks_struct* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @cpu_to_le32(i64 %20)
  %22 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %10, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.list_blocks_struct*, %struct.list_blocks_struct** %7, align 8
  %24 = getelementptr inbounds %struct.list_blocks_struct, %struct.list_blocks_struct* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.list_blocks_struct*, %struct.list_blocks_struct** %7, align 8
  %27 = getelementptr inbounds %struct.list_blocks_struct, %struct.list_blocks_struct* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  %30 = add nsw i64 %29, 1
  %31 = call i32 @cpu_to_le16(i64 %30)
  %32 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %10, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.list_blocks_struct*, %struct.list_blocks_struct** %7, align 8
  %34 = getelementptr inbounds %struct.list_blocks_struct, %struct.list_blocks_struct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ext4_ext_store_pblock(%struct.ext4_extent* %10, i32 %35)
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = load %struct.list_blocks_struct*, %struct.list_blocks_struct** %7, align 8
  %39 = getelementptr inbounds %struct.list_blocks_struct, %struct.list_blocks_struct* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call %struct.ext4_ext_path* @ext4_ext_find_extent(%struct.inode* %37, i64 %40, i32* null)
  store %struct.ext4_ext_path* %41, %struct.ext4_ext_path** %11, align 8
  %42 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %43 = call i64 @IS_ERR(%struct.ext4_ext_path* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %17
  %46 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %47 = call i32 @PTR_ERR(%struct.ext4_ext_path* %46)
  store i32 %47, i32* %8, align 4
  store %struct.ext4_ext_path* null, %struct.ext4_ext_path** %11, align 8
  br label %99

48:                                               ; preds = %17
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = load %struct.list_blocks_struct*, %struct.list_blocks_struct** %7, align 8
  %51 = getelementptr inbounds %struct.list_blocks_struct, %struct.list_blocks_struct* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.list_blocks_struct*, %struct.list_blocks_struct** %7, align 8
  %54 = getelementptr inbounds %struct.list_blocks_struct, %struct.list_blocks_struct* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = add nsw i64 %56, 1
  %58 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %59 = call i32 @ext4_ext_calc_credits_for_single_extent(%struct.inode* %49, i64 %57, %struct.ext4_ext_path* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %48
  %63 = load i32*, i32** %5, align 8
  %64 = load i32, i32* @EXT4_RESERVE_TRANS_BLOCKS, align 4
  %65 = call i64 @ext4_handle_has_enough_credits(i32* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @ext4_journal_restart(i32* %68, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %99

74:                                               ; preds = %67
  br label %94

75:                                               ; preds = %62, %48
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %75
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @ext4_journal_extend(i32* %79, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %78
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @ext4_journal_restart(i32* %85, i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %99

91:                                               ; preds = %84
  br label %92

92:                                               ; preds = %91, %78
  br label %93

93:                                               ; preds = %92, %75
  br label %94

94:                                               ; preds = %93, %74
  %95 = load i32*, i32** %5, align 8
  %96 = load %struct.inode*, %struct.inode** %6, align 8
  %97 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %98 = call i32 @ext4_ext_insert_extent(i32* %95, %struct.inode* %96, %struct.ext4_ext_path* %97, %struct.ext4_extent* %10, i32 0)
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %94, %90, %73, %45
  %100 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %101 = icmp ne %struct.ext4_ext_path* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %104 = call i32 @ext4_ext_drop_refs(%struct.ext4_ext_path* %103)
  %105 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %11, align 8
  %106 = call i32 @kfree(%struct.ext4_ext_path* %105)
  br label %107

107:                                              ; preds = %102, %99
  %108 = load %struct.list_blocks_struct*, %struct.list_blocks_struct** %7, align 8
  %109 = getelementptr inbounds %struct.list_blocks_struct, %struct.list_blocks_struct* %108, i32 0, i32 0
  store i32 0, i32* %109, align 8
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %107, %16
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @ext4_ext_store_pblock(%struct.ext4_extent*, i32) #1

declare dso_local %struct.ext4_ext_path* @ext4_ext_find_extent(%struct.inode*, i64, i32*) #1

declare dso_local i64 @IS_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @PTR_ERR(%struct.ext4_ext_path*) #1

declare dso_local i32 @ext4_ext_calc_credits_for_single_extent(%struct.inode*, i64, %struct.ext4_ext_path*) #1

declare dso_local i64 @ext4_handle_has_enough_credits(i32*, i32) #1

declare dso_local i32 @ext4_journal_restart(i32*, i32) #1

declare dso_local i32 @ext4_journal_extend(i32*, i32) #1

declare dso_local i32 @ext4_ext_insert_extent(i32*, %struct.inode*, %struct.ext4_ext_path*, %struct.ext4_extent*, i32) #1

declare dso_local i32 @ext4_ext_drop_refs(%struct.ext4_ext_path*) #1

declare dso_local i32 @kfree(%struct.ext4_ext_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
