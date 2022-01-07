; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_root.c_autofs_root_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_root.c_autofs_root_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i64, i32 }
%struct.autofs_sb_info = type { %struct.TYPE_2__*, i32, %struct.autofs_dirhash }
%struct.TYPE_2__ = type { i32 }
%struct.autofs_dirhash = type { i32 }
%struct.autofs_dir_ent = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@AUTOFS_FIRST_SYMLINK = common dso_local global i32 0, align 4
@AUTOFS_MAX_SYMLINKS = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @autofs_root_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_root_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.autofs_sb_info*, align 8
  %7 = alloca %struct.autofs_dirhash*, align 8
  %8 = alloca %struct.autofs_dir_ent*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.autofs_sb_info* @autofs_sbi(i32 %12)
  store %struct.autofs_sb_info* %13, %struct.autofs_sb_info** %6, align 8
  %14 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %15 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %14, i32 0, i32 2
  store %struct.autofs_dirhash* %15, %struct.autofs_dirhash** %7, align 8
  %16 = call i32 (...) @lock_kernel()
  %17 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %18 = call i32 @autofs_oz_mode(%struct.autofs_sb_info* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %22 = call i32 @capable(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = call i32 (...) @unlock_kernel()
  %26 = load i32, i32* @EACCES, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %85

28:                                               ; preds = %20, %2
  %29 = load %struct.autofs_dirhash*, %struct.autofs_dirhash** %7, align 8
  %30 = load %struct.dentry*, %struct.dentry** %5, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 1
  %32 = call %struct.autofs_dir_ent* @autofs_hash_lookup(%struct.autofs_dirhash* %29, i32* %31)
  store %struct.autofs_dir_ent* %32, %struct.autofs_dir_ent** %8, align 8
  %33 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %8, align 8
  %34 = icmp ne %struct.autofs_dir_ent* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = call i32 (...) @unlock_kernel()
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %85

39:                                               ; preds = %28
  %40 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %8, align 8
  %41 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AUTOFS_FIRST_SYMLINK, align 4
  %44 = sub i32 %42, %43
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @AUTOFS_MAX_SYMLINKS, align 4
  %47 = icmp uge i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = call i32 (...) @unlock_kernel()
  %50 = load i32, i32* @EISDIR, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %85

52:                                               ; preds = %39
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %55 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @test_bit(i32 %53, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %52
  %60 = call i32 (...) @unlock_kernel()
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %85

63:                                               ; preds = %52
  %64 = load %struct.dentry*, %struct.dentry** %5, align 8
  %65 = getelementptr inbounds %struct.dentry, %struct.dentry* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  %66 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %8, align 8
  %67 = call i32 @autofs_hash_delete(%struct.autofs_dir_ent* %66)
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %70 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @clear_bit(i32 %68, i32 %71)
  %73 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %74 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @kfree(i32 %80)
  %82 = load %struct.dentry*, %struct.dentry** %5, align 8
  %83 = call i32 @d_drop(%struct.dentry* %82)
  %84 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %63, %59, %48, %35, %24
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local %struct.autofs_sb_info* @autofs_sbi(i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @autofs_oz_mode(%struct.autofs_sb_info*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local %struct.autofs_dir_ent* @autofs_hash_lookup(%struct.autofs_dirhash*, i32*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @autofs_hash_delete(%struct.autofs_dir_ent*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
