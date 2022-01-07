; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_fatent.c_fat_ent_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_fatent.c_fat_ent_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.fat_entry = type { i32 }
%struct.msdos_sb_info = type { i32, %struct.fatent_operations* }
%struct.fatent_operations = type { i32 (%struct.super_block*, %struct.fat_entry.0*, i32, i32)*, i32 (%struct.fat_entry.1*)*, i32 (%struct.super_block*, i32, i32*, i32*)* }
%struct.fat_entry.0 = type opaque
%struct.fat_entry.1 = type opaque

@FAT_START_ENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"invalid access to FAT (entry 0x%08x)\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fat_ent_read(%struct.inode* %0, %struct.fat_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.fat_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.msdos_sb_info*, align 8
  %10 = alloca %struct.fatent_operations*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.fat_entry* %1, %struct.fat_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %8, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load %struct.super_block*, %struct.super_block** %18, align 8
  %20 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %19)
  store %struct.msdos_sb_info* %20, %struct.msdos_sb_info** %9, align 8
  %21 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %22 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %21, i32 0, i32 1
  %23 = load %struct.fatent_operations*, %struct.fatent_operations** %22, align 8
  store %struct.fatent_operations* %23, %struct.fatent_operations** %10, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @FAT_START_ENT, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %3
  %28 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %9, align 8
  %29 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27, %3
  %34 = load %struct.fat_entry*, %struct.fat_entry** %6, align 8
  %35 = call i32 @fatent_brelse(%struct.fat_entry* %34)
  %36 = load %struct.super_block*, %struct.super_block** %8, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @fat_fs_error(%struct.super_block* %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %81

41:                                               ; preds = %27
  %42 = load %struct.fat_entry*, %struct.fat_entry** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @fatent_set_entry(%struct.fat_entry* %42, i32 %43)
  %45 = load %struct.fatent_operations*, %struct.fatent_operations** %10, align 8
  %46 = getelementptr inbounds %struct.fatent_operations, %struct.fatent_operations* %45, i32 0, i32 2
  %47 = load i32 (%struct.super_block*, i32, i32*, i32*)*, i32 (%struct.super_block*, i32, i32*, i32*)** %46, align 8
  %48 = load %struct.super_block*, %struct.super_block** %8, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 %47(%struct.super_block* %48, i32 %49, i32* %12, i32* %13)
  %51 = load %struct.super_block*, %struct.super_block** %8, align 8
  %52 = load %struct.fat_entry*, %struct.fat_entry** %6, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @fat_ent_update_ptr(%struct.super_block* %51, %struct.fat_entry* %52, i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %74, label %57

57:                                               ; preds = %41
  %58 = load %struct.fat_entry*, %struct.fat_entry** %6, align 8
  %59 = call i32 @fatent_brelse(%struct.fat_entry* %58)
  %60 = load %struct.fatent_operations*, %struct.fatent_operations** %10, align 8
  %61 = getelementptr inbounds %struct.fatent_operations, %struct.fatent_operations* %60, i32 0, i32 0
  %62 = load i32 (%struct.super_block*, %struct.fat_entry.0*, i32, i32)*, i32 (%struct.super_block*, %struct.fat_entry.0*, i32, i32)** %61, align 8
  %63 = load %struct.super_block*, %struct.super_block** %8, align 8
  %64 = load %struct.fat_entry*, %struct.fat_entry** %6, align 8
  %65 = bitcast %struct.fat_entry* %64 to %struct.fat_entry.0*
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 %62(%struct.super_block* %63, %struct.fat_entry.0* %65, i32 %66, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %57
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %4, align 4
  br label %81

73:                                               ; preds = %57
  br label %74

74:                                               ; preds = %73, %41
  %75 = load %struct.fatent_operations*, %struct.fatent_operations** %10, align 8
  %76 = getelementptr inbounds %struct.fatent_operations, %struct.fatent_operations* %75, i32 0, i32 1
  %77 = load i32 (%struct.fat_entry.1*)*, i32 (%struct.fat_entry.1*)** %76, align 8
  %78 = load %struct.fat_entry*, %struct.fat_entry** %6, align 8
  %79 = bitcast %struct.fat_entry* %78 to %struct.fat_entry.1*
  %80 = call i32 %77(%struct.fat_entry.1* %79)
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %74, %71, %33
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

declare dso_local i32 @fatent_brelse(%struct.fat_entry*) #1

declare dso_local i32 @fat_fs_error(%struct.super_block*, i8*, i32) #1

declare dso_local i32 @fatent_set_entry(%struct.fat_entry*, i32) #1

declare dso_local i32 @fat_ent_update_ptr(%struct.super_block*, %struct.fat_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
