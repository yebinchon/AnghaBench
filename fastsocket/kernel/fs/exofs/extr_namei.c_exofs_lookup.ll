; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_namei.c_exofs_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_namei.c_exofs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.nameidata = type { i32 }

@EXOFS_NAME_LEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @exofs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @exofs_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.nameidata*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.nameidata* %2, %struct.nameidata** %7, align 8
  %10 = load %struct.dentry*, %struct.dentry** %6, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @EXOFS_NAME_LEN, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @ENAMETOOLONG, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.dentry* @ERR_PTR(i32 %18)
  store %struct.dentry* %19, %struct.dentry** %4, align 8
  br label %43

20:                                               ; preds = %3
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = load %struct.dentry*, %struct.dentry** %6, align 8
  %23 = call i64 @exofs_inode_by_name(%struct.inode* %21, %struct.dentry* %22)
  store i64 %23, i64* %9, align 8
  store %struct.inode* null, %struct.inode** %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %9, align 8
  %31 = call %struct.inode* @exofs_iget(i32 %29, i64 %30)
  store %struct.inode* %31, %struct.inode** %8, align 8
  %32 = load %struct.inode*, %struct.inode** %8, align 8
  %33 = call i64 @IS_ERR(%struct.inode* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load %struct.inode*, %struct.inode** %8, align 8
  %37 = call %struct.dentry* @ERR_CAST(%struct.inode* %36)
  store %struct.dentry* %37, %struct.dentry** %4, align 8
  br label %43

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %20
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = load %struct.dentry*, %struct.dentry** %6, align 8
  %42 = call %struct.dentry* @d_splice_alias(%struct.inode* %40, %struct.dentry* %41)
  store %struct.dentry* %42, %struct.dentry** %4, align 8
  br label %43

43:                                               ; preds = %39, %35, %16
  %44 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %44
}

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i64 @exofs_inode_by_name(%struct.inode*, %struct.dentry*) #1

declare dso_local %struct.inode* @exofs_iget(i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.inode*) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
