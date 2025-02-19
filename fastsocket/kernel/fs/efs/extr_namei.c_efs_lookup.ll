; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/efs/extr_namei.c_efs_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/efs/extr_namei.c_efs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nameidata = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @efs_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nameidata*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.nameidata* %2, %struct.nameidata** %7, align 8
  store %struct.inode* null, %struct.inode** %9, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = load %struct.dentry*, %struct.dentry** %6, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dentry*, %struct.dentry** %6, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @efs_find_entry(%struct.inode* %10, i32 %14, i32 %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %3
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %8, align 8
  %27 = call %struct.inode* @efs_iget(i32 %25, i64 %26)
  store %struct.inode* %27, %struct.inode** %9, align 8
  %28 = load %struct.inode*, %struct.inode** %9, align 8
  %29 = call i64 @IS_ERR(%struct.inode* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load %struct.inode*, %struct.inode** %9, align 8
  %33 = call %struct.dentry* @ERR_CAST(%struct.inode* %32)
  store %struct.dentry* %33, %struct.dentry** %4, align 8
  br label %39

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34, %3
  %36 = load %struct.inode*, %struct.inode** %9, align 8
  %37 = load %struct.dentry*, %struct.dentry** %6, align 8
  %38 = call %struct.dentry* @d_splice_alias(%struct.inode* %36, %struct.dentry* %37)
  store %struct.dentry* %38, %struct.dentry** %4, align 8
  br label %39

39:                                               ; preds = %35, %31
  %40 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %40
}

declare dso_local i64 @efs_find_entry(%struct.inode*, i32, i32) #1

declare dso_local %struct.inode* @efs_iget(i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.inode*) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
