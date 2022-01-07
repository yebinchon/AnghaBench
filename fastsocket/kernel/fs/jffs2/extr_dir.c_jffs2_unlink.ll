; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_dir.c_jffs2_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_dir.c_jffs2_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32 }
%struct.dentry = type { %struct.inode*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.jffs2_sb_info = type { i32 }
%struct.jffs2_inode_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @jffs2_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.jffs2_sb_info*, align 8
  %6 = alloca %struct.jffs2_inode_info*, align 8
  %7 = alloca %struct.jffs2_inode_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32 %12)
  store %struct.jffs2_sb_info* %13, %struct.jffs2_sb_info** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = call %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode* %14)
  store %struct.jffs2_inode_info* %15, %struct.jffs2_inode_info** %6, align 8
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  %19 = call %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode* %18)
  store %struct.jffs2_inode_info* %19, %struct.jffs2_inode_info** %7, align 8
  %20 = call i32 (...) @get_seconds()
  store i32 %20, i32* %9, align 4
  %21 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %22 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %23 = load %struct.dentry*, %struct.dentry** %4, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.dentry*, %struct.dentry** %4, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @jffs2_do_unlink(%struct.jffs2_sb_info* %21, %struct.jffs2_inode_info* %22, i32 %26, i32 %30, %struct.jffs2_inode_info* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %7, align 8
  %35 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = icmp ne %struct.TYPE_4__* %36, null
  br i1 %37, label %38, label %48

38:                                               ; preds = %2
  %39 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %7, align 8
  %40 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dentry*, %struct.dentry** %4, align 8
  %45 = getelementptr inbounds %struct.dentry, %struct.dentry* %44, i32 0, i32 0
  %46 = load %struct.inode*, %struct.inode** %45, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 2
  store i32 %43, i32* %47, align 4
  br label %48

48:                                               ; preds = %38, %2
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @ITIME(i32 %52)
  %54 = load %struct.inode*, %struct.inode** %3, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.inode*, %struct.inode** %3, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 1
  store i32 %53, i32* %57, align 4
  br label %58

58:                                               ; preds = %51, %48
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32) #1

declare dso_local %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.inode*) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @jffs2_do_unlink(%struct.jffs2_sb_info*, %struct.jffs2_inode_info*, i32, i32, %struct.jffs2_inode_info*, i32) #1

declare dso_local i32 @ITIME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
