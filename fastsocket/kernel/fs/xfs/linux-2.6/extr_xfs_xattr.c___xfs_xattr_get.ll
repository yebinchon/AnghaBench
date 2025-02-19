; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_xattr.c___xfs_xattr_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_xattr.c___xfs_xattr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.xfs_inode = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EINVAL = common dso_local global i32 0, align 4
@ATTR_KERNOVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i8*, i64, i32)* @__xfs_xattr_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xfs_xattr_get(%struct.inode* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.xfs_inode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = call %struct.xfs_inode* @XFS_I(%struct.inode* %15)
  store %struct.xfs_inode* %16, %struct.xfs_inode** %12, align 8
  %17 = load i64, i64* %10, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %14, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %45

25:                                               ; preds = %5
  %26 = load i64, i64* %10, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @ATTR_KERNOVAL, align 4
  %30 = load i32, i32* %11, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %11, align 4
  store i8* null, i8** %9, align 8
  br label %32

32:                                               ; preds = %28, %25
  %33 = load %struct.xfs_inode*, %struct.xfs_inode** %12, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @xfs_attr_get(%struct.xfs_inode* %33, i8* %34, i8* %35, i32* %14, i32 %36)
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %6, align 4
  br label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %14, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %43, %41, %22
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local %struct.xfs_inode* @XFS_I(%struct.inode*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @xfs_attr_get(%struct.xfs_inode*, i8*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
