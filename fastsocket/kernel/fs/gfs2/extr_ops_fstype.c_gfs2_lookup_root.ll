; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_fstype.c_gfs2_lookup_root.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_fstype.c_gfs2_lookup_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32 }
%struct.dentry = type { i32* }
%struct.inode = type { i32 }

@DT_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"can't read in %s inode: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"can't alloc %s dentry\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@gfs2_dops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.dentry**, i32, i8*)* @gfs2_lookup_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_lookup_root(%struct.super_block* %0, %struct.dentry** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.dentry**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.gfs2_sbd*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.dentry** %1, %struct.dentry*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %14, align 8
  store %struct.gfs2_sbd* %15, %struct.gfs2_sbd** %10, align 8
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = load i32, i32* @DT_DIR, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.inode* @gfs2_inode_lookup(%struct.super_block* %16, i32 %17, i32 %18, i32 0, i32 0)
  store %struct.inode* %19, %struct.inode** %12, align 8
  %20 = load %struct.inode*, %struct.inode** %12, align 8
  %21 = call i64 @IS_ERR(%struct.inode* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  %24 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load %struct.inode*, %struct.inode** %12, align 8
  %27 = call i32 @PTR_ERR(%struct.inode* %26)
  %28 = call i32 (%struct.gfs2_sbd*, i8*, i8*, ...) @fs_err(%struct.gfs2_sbd* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %27)
  %29 = load %struct.inode*, %struct.inode** %12, align 8
  %30 = call i32 @PTR_ERR(%struct.inode* %29)
  store i32 %30, i32* %5, align 4
  br label %49

31:                                               ; preds = %4
  %32 = load %struct.inode*, %struct.inode** %12, align 8
  %33 = call %struct.dentry* @d_alloc_root(%struct.inode* %32)
  store %struct.dentry* %33, %struct.dentry** %11, align 8
  %34 = load %struct.dentry*, %struct.dentry** %11, align 8
  %35 = icmp ne %struct.dentry* %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  %37 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 (%struct.gfs2_sbd*, i8*, i8*, ...) @fs_err(%struct.gfs2_sbd* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = load %struct.inode*, %struct.inode** %12, align 8
  %41 = call i32 @iput(%struct.inode* %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %49

44:                                               ; preds = %31
  %45 = load %struct.dentry*, %struct.dentry** %11, align 8
  %46 = getelementptr inbounds %struct.dentry, %struct.dentry* %45, i32 0, i32 0
  store i32* @gfs2_dops, i32** %46, align 8
  %47 = load %struct.dentry*, %struct.dentry** %11, align 8
  %48 = load %struct.dentry**, %struct.dentry*** %7, align 8
  store %struct.dentry* %47, %struct.dentry** %48, align 8
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %44, %36, %23
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.inode* @gfs2_inode_lookup(%struct.super_block*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local %struct.dentry* @d_alloc_root(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
