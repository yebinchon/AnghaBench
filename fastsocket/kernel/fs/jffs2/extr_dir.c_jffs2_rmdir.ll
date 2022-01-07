; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_dir.c_jffs2_rmdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_dir.c_jffs2_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.dentry = type { %struct.inode*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.jffs2_sb_info = type { i32 }
%struct.jffs2_inode_info = type { %struct.jffs2_full_dirent* }
%struct.jffs2_full_dirent = type { i64, %struct.jffs2_full_dirent* }

@ENOTEMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @jffs2_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.jffs2_sb_info*, align 8
  %7 = alloca %struct.jffs2_inode_info*, align 8
  %8 = alloca %struct.jffs2_inode_info*, align 8
  %9 = alloca %struct.jffs2_full_dirent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32 %14)
  store %struct.jffs2_sb_info* %15, %struct.jffs2_sb_info** %6, align 8
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = call %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode* %16)
  store %struct.jffs2_inode_info* %17, %struct.jffs2_inode_info** %7, align 8
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  %21 = call %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode* %20)
  store %struct.jffs2_inode_info* %21, %struct.jffs2_inode_info** %8, align 8
  %22 = call i32 (...) @get_seconds()
  store i32 %22, i32* %11, align 4
  %23 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %24 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %23, i32 0, i32 0
  %25 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %24, align 8
  store %struct.jffs2_full_dirent* %25, %struct.jffs2_full_dirent** %9, align 8
  br label %26

26:                                               ; preds = %38, %2
  %27 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %9, align 8
  %28 = icmp ne %struct.jffs2_full_dirent* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %9, align 8
  %31 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOTEMPTY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %73

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %9, align 8
  %40 = getelementptr inbounds %struct.jffs2_full_dirent, %struct.jffs2_full_dirent* %39, i32 0, i32 1
  %41 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %40, align 8
  store %struct.jffs2_full_dirent* %41, %struct.jffs2_full_dirent** %9, align 8
  br label %26

42:                                               ; preds = %26
  %43 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %6, align 8
  %44 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %7, align 8
  %45 = load %struct.dentry*, %struct.dentry** %5, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dentry*, %struct.dentry** %5, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @jffs2_do_unlink(%struct.jffs2_sb_info* %43, %struct.jffs2_inode_info* %44, i32 %48, i32 %52, %struct.jffs2_inode_info* %53, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %42
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @ITIME(i32 %59)
  %61 = load %struct.inode*, %struct.inode** %4, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 1
  store i32 %60, i32* %64, align 4
  %65 = load %struct.dentry*, %struct.dentry** %5, align 8
  %66 = getelementptr inbounds %struct.dentry, %struct.dentry* %65, i32 0, i32 0
  %67 = load %struct.inode*, %struct.inode** %66, align 8
  %68 = call i32 @clear_nlink(%struct.inode* %67)
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = call i32 @drop_nlink(%struct.inode* %69)
  br label %71

71:                                               ; preds = %58, %42
  %72 = load i32, i32* %10, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %34
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32) #1

declare dso_local %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode*) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @jffs2_do_unlink(%struct.jffs2_sb_info*, %struct.jffs2_inode_info*, i32, i32, %struct.jffs2_inode_info*, i32) #1

declare dso_local i32 @ITIME(i32) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
