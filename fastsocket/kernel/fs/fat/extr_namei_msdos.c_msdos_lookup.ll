; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_msdos.c_msdos_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_msdos.c_msdos_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dentry = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nameidata = type { i32 }
%struct.fat_slot_info = type { i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@msdos_dentry_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @msdos_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @msdos_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nameidata*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.fat_slot_info, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.nameidata* %2, %struct.nameidata** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %8, align 8
  %15 = load %struct.super_block*, %struct.super_block** %8, align 8
  %16 = call i32 @lock_super(%struct.super_block* %15)
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dentry*, %struct.dentry** %6, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @msdos_find(%struct.inode* %17, i32 %21, i32 %25, %struct.fat_slot_info* %9)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %3
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @ENOENT, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store %struct.inode* null, %struct.inode** %10, align 8
  br label %53

35:                                               ; preds = %29
  br label %68

36:                                               ; preds = %3
  %37 = load %struct.super_block*, %struct.super_block** %8, align 8
  %38 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %9, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %9, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.inode* @fat_build_inode(%struct.super_block* %37, i32 %39, i32 %41)
  store %struct.inode* %42, %struct.inode** %10, align 8
  %43 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %9, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @brelse(i32 %44)
  %46 = load %struct.inode*, %struct.inode** %10, align 8
  %47 = call i64 @IS_ERR(%struct.inode* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load %struct.inode*, %struct.inode** %10, align 8
  %51 = call i32 @PTR_ERR(%struct.inode* %50)
  store i32 %51, i32* %11, align 4
  br label %68

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %52, %34
  %54 = load %struct.super_block*, %struct.super_block** %8, align 8
  %55 = call i32 @unlock_super(%struct.super_block* %54)
  %56 = load %struct.dentry*, %struct.dentry** %6, align 8
  %57 = getelementptr inbounds %struct.dentry, %struct.dentry* %56, i32 0, i32 0
  store i32* @msdos_dentry_operations, i32** %57, align 8
  %58 = load %struct.inode*, %struct.inode** %10, align 8
  %59 = load %struct.dentry*, %struct.dentry** %6, align 8
  %60 = call %struct.dentry* @d_splice_alias(%struct.inode* %58, %struct.dentry* %59)
  store %struct.dentry* %60, %struct.dentry** %6, align 8
  %61 = load %struct.dentry*, %struct.dentry** %6, align 8
  %62 = icmp ne %struct.dentry* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load %struct.dentry*, %struct.dentry** %6, align 8
  %65 = getelementptr inbounds %struct.dentry, %struct.dentry* %64, i32 0, i32 0
  store i32* @msdos_dentry_operations, i32** %65, align 8
  br label %66

66:                                               ; preds = %63, %53
  %67 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %67, %struct.dentry** %4, align 8
  br label %73

68:                                               ; preds = %49, %35
  %69 = load %struct.super_block*, %struct.super_block** %8, align 8
  %70 = call i32 @unlock_super(%struct.super_block* %69)
  %71 = load i32, i32* %11, align 4
  %72 = call %struct.dentry* @ERR_PTR(i32 %71)
  store %struct.dentry* %72, %struct.dentry** %4, align 8
  br label %73

73:                                               ; preds = %68, %66
  %74 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %74
}

declare dso_local i32 @lock_super(%struct.super_block*) #1

declare dso_local i32 @msdos_find(%struct.inode*, i32, i32, %struct.fat_slot_info*) #1

declare dso_local %struct.inode* @fat_build_inode(%struct.super_block*, i32, i32) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @unlock_super(%struct.super_block*) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
