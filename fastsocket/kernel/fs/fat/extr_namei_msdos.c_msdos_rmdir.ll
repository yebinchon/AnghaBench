; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_msdos.c_msdos_rmdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_msdos.c_msdos_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dentry = type { %struct.TYPE_2__, %struct.inode* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fat_slot_info = type { i32 }

@CURRENT_TIME_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @msdos_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdos_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.fat_slot_info, align 4
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 1
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %5, align 8
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 1
  %14 = load %struct.inode*, %struct.inode** %13, align 8
  store %struct.inode* %14, %struct.inode** %6, align 8
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = call i32 @lock_super(%struct.super_block* %15)
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = call i32 @fat_dir_empty(%struct.inode* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %52

22:                                               ; preds = %2
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dentry*, %struct.dentry** %4, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @msdos_find(%struct.inode* %23, i32 %27, i32 %31, %struct.fat_slot_info* %7)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %52

36:                                               ; preds = %22
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = call i32 @fat_remove_entries(%struct.inode* %37, %struct.fat_slot_info* %7)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %52

42:                                               ; preds = %36
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = call i32 @drop_nlink(%struct.inode* %43)
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = call i32 @clear_nlink(%struct.inode* %45)
  %47 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = call i32 @fat_detach(%struct.inode* %50)
  br label %52

52:                                               ; preds = %42, %41, %35, %21
  %53 = load %struct.super_block*, %struct.super_block** %5, align 8
  %54 = call i32 @unlock_super(%struct.super_block* %53)
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load %struct.super_block*, %struct.super_block** %5, align 8
  %59 = load %struct.inode*, %struct.inode** %3, align 8
  %60 = load %struct.inode*, %struct.inode** %6, align 8
  %61 = call i32 @fat_flush_inodes(%struct.super_block* %58, %struct.inode* %59, %struct.inode* %60)
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %57, %52
  %63 = load i32, i32* %8, align 4
  ret i32 %63
}

declare dso_local i32 @lock_super(%struct.super_block*) #1

declare dso_local i32 @fat_dir_empty(%struct.inode*) #1

declare dso_local i32 @msdos_find(%struct.inode*, i32, i32, %struct.fat_slot_info*) #1

declare dso_local i32 @fat_remove_entries(%struct.inode*, %struct.fat_slot_info*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @fat_detach(%struct.inode*) #1

declare dso_local i32 @unlock_super(%struct.super_block*) #1

declare dso_local i32 @fat_flush_inodes(%struct.super_block*, %struct.inode*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
