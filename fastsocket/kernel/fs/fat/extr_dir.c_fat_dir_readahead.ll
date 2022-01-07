; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_dir.c_fat_dir_readahead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_dir.c_fat_dir_readahead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.msdos_sb_info = type { i32, i32 }
%struct.buffer_head = type { i32 }

@MSDOS_ROOT_INO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32, i32)* @fat_dir_readahead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fat_dir_readahead(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.msdos_sb_info*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 1
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %7, align 8
  %14 = load %struct.super_block*, %struct.super_block** %7, align 8
  %15 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %14)
  store %struct.msdos_sb_info* %15, %struct.msdos_sb_info** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %8, align 8
  %18 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 1
  %21 = and i32 %16, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %8, align 8
  %25 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %3
  br label %71

29:                                               ; preds = %23
  %30 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %8, align 8
  %31 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 32
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MSDOS_ROOT_INO, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %71

41:                                               ; preds = %34, %29
  %42 = load %struct.super_block*, %struct.super_block** %7, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call %struct.buffer_head* @sb_find_get_block(%struct.super_block* %42, i32 %43)
  store %struct.buffer_head* %44, %struct.buffer_head** %9, align 8
  %45 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %46 = icmp eq %struct.buffer_head* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %49 = call i32 @buffer_uptodate(%struct.buffer_head* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %47, %41
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %64, %51
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %8, align 8
  %55 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load %struct.super_block*, %struct.super_block** %7, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %60, %61
  %63 = call i32 @sb_breadahead(%struct.super_block* %59, i32 %62)
  br label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %52

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %67, %47
  %69 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %70 = call i32 @brelse(%struct.buffer_head* %69)
  br label %71

71:                                               ; preds = %68, %40, %28
  ret void
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @sb_find_get_block(%struct.super_block*, i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @sb_breadahead(%struct.super_block*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
