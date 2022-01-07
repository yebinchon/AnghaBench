; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_root.c_autofs_root_rmdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_root.c_autofs_root_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.autofs_sb_info = type { %struct.autofs_dirhash }
%struct.autofs_dirhash = type { i32 }
%struct.autofs_dir_ent = type { %struct.dentry*, i64 }

@EACCES = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@AUTOFS_FIRST_DIR_INO = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"autofs_rmdir: odentry != dentry for entry %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @autofs_root_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_root_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.autofs_sb_info*, align 8
  %7 = alloca %struct.autofs_dirhash*, align 8
  %8 = alloca %struct.autofs_dir_ent*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.autofs_sb_info* @autofs_sbi(i32 %11)
  store %struct.autofs_sb_info* %12, %struct.autofs_sb_info** %6, align 8
  %13 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %14 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %13, i32 0, i32 0
  store %struct.autofs_dirhash* %14, %struct.autofs_dirhash** %7, align 8
  %15 = call i32 (...) @lock_kernel()
  %16 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %17 = call i32 @autofs_oz_mode(%struct.autofs_sb_info* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = call i32 (...) @unlock_kernel()
  %21 = load i32, i32* @EACCES, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %67

23:                                               ; preds = %2
  %24 = load %struct.autofs_dirhash*, %struct.autofs_dirhash** %7, align 8
  %25 = load %struct.dentry*, %struct.dentry** %5, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 1
  %27 = call %struct.autofs_dir_ent* @autofs_hash_lookup(%struct.autofs_dirhash* %24, %struct.TYPE_2__* %26)
  store %struct.autofs_dir_ent* %27, %struct.autofs_dir_ent** %8, align 8
  %28 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %8, align 8
  %29 = icmp ne %struct.autofs_dir_ent* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = call i32 (...) @unlock_kernel()
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %67

34:                                               ; preds = %23
  %35 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %8, align 8
  %36 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @AUTOFS_FIRST_DIR_INO, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = call i32 (...) @unlock_kernel()
  %43 = load i32, i32* @ENOTDIR, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %67

45:                                               ; preds = %34
  %46 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %8, align 8
  %47 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %46, i32 0, i32 0
  %48 = load %struct.dentry*, %struct.dentry** %47, align 8
  %49 = load %struct.dentry*, %struct.dentry** %5, align 8
  %50 = icmp ne %struct.dentry* %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.dentry*, %struct.dentry** %5, align 8
  %53 = getelementptr inbounds %struct.dentry, %struct.dentry* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %51, %45
  %58 = load %struct.dentry*, %struct.dentry** %5, align 8
  %59 = getelementptr inbounds %struct.dentry, %struct.dentry* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %8, align 8
  %61 = call i32 @autofs_hash_delete(%struct.autofs_dir_ent* %60)
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = call i32 @drop_nlink(%struct.inode* %62)
  %64 = load %struct.dentry*, %struct.dentry** %5, align 8
  %65 = call i32 @d_drop(%struct.dentry* %64)
  %66 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %57, %41, %30, %19
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.autofs_sb_info* @autofs_sbi(i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @autofs_oz_mode(%struct.autofs_sb_info*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local %struct.autofs_dir_ent* @autofs_hash_lookup(%struct.autofs_dirhash*, %struct.TYPE_2__*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @autofs_hash_delete(%struct.autofs_dir_ent*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
