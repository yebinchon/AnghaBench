; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_inode.c_ecryptfs_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_inode.c_ecryptfs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.ecryptfs_mount_crypt_stat = type { i32 }
%struct.TYPE_2__ = type { %struct.ecryptfs_mount_crypt_stat }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @ecryptfs_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ecryptfs_mount_crypt_stat*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i8* %2, i8** %6, align 8
  store %struct.ecryptfs_mount_crypt_stat* null, %struct.ecryptfs_mount_crypt_stat** %12, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = call %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry* %13)
  store %struct.dentry* %14, %struct.dentry** %8, align 8
  %15 = load %struct.dentry*, %struct.dentry** %8, align 8
  %16 = call i32 @dget(%struct.dentry* %15)
  %17 = load %struct.dentry*, %struct.dentry** %8, align 8
  %18 = call %struct.dentry* @lock_parent(%struct.dentry* %17)
  store %struct.dentry* %18, %struct.dentry** %9, align 8
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_2__* @ecryptfs_superblock_to_private(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store %struct.ecryptfs_mount_crypt_stat* %23, %struct.ecryptfs_mount_crypt_stat** %12, align 8
  %24 = load %struct.ecryptfs_mount_crypt_stat*, %struct.ecryptfs_mount_crypt_stat** %12, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = call i32 @ecryptfs_encrypt_and_encode_filename(i8** %10, i64* %11, i32* null, %struct.ecryptfs_mount_crypt_stat* %24, i8* %25, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %70

32:                                               ; preds = %3
  %33 = load %struct.dentry*, %struct.dentry** %9, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dentry*, %struct.dentry** %8, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @vfs_symlink(i32 %35, %struct.dentry* %36, i8* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 @kfree(i8* %39)
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %32
  %44 = load %struct.dentry*, %struct.dentry** %8, align 8
  %45 = getelementptr inbounds %struct.dentry, %struct.dentry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43, %32
  br label %70

49:                                               ; preds = %43
  %50 = load %struct.dentry*, %struct.dentry** %8, align 8
  %51 = load %struct.dentry*, %struct.dentry** %5, align 8
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ecryptfs_interpose(%struct.dentry* %50, %struct.dentry* %51, i32 %54, i32 0)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %70

59:                                               ; preds = %49
  %60 = load %struct.inode*, %struct.inode** %4, align 8
  %61 = load %struct.dentry*, %struct.dentry** %9, align 8
  %62 = getelementptr inbounds %struct.dentry, %struct.dentry* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @fsstack_copy_attr_times(%struct.inode* %60, i32 %63)
  %65 = load %struct.inode*, %struct.inode** %4, align 8
  %66 = load %struct.dentry*, %struct.dentry** %9, align 8
  %67 = getelementptr inbounds %struct.dentry, %struct.dentry* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @fsstack_copy_inode_size(%struct.inode* %65, i32 %68)
  br label %70

70:                                               ; preds = %59, %58, %48, %31
  %71 = load %struct.dentry*, %struct.dentry** %9, align 8
  %72 = call i32 @unlock_dir(%struct.dentry* %71)
  %73 = load %struct.dentry*, %struct.dentry** %8, align 8
  %74 = call i32 @dput(%struct.dentry* %73)
  %75 = load %struct.dentry*, %struct.dentry** %5, align 8
  %76 = getelementptr inbounds %struct.dentry, %struct.dentry* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %70
  %80 = load %struct.dentry*, %struct.dentry** %5, align 8
  %81 = call i32 @d_drop(%struct.dentry* %80)
  br label %82

82:                                               ; preds = %79, %70
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local %struct.dentry* @lock_parent(%struct.dentry*) #1

declare dso_local %struct.TYPE_2__* @ecryptfs_superblock_to_private(i32) #1

declare dso_local i32 @ecryptfs_encrypt_and_encode_filename(i8**, i64*, i32*, %struct.ecryptfs_mount_crypt_stat*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @vfs_symlink(i32, %struct.dentry*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @ecryptfs_interpose(%struct.dentry*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @fsstack_copy_attr_times(%struct.inode*, i32) #1

declare dso_local i32 @fsstack_copy_inode_size(%struct.inode*, i32) #1

declare dso_local i32 @unlock_dir(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
