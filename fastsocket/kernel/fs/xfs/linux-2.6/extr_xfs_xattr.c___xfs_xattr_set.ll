; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_xattr.c___xfs_xattr_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_xattr.c___xfs_xattr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.xfs_inode = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EINVAL = common dso_local global i32 0, align 4
@XATTR_CREATE = common dso_local global i32 0, align 4
@ATTR_CREATE = common dso_local global i32 0, align 4
@XATTR_REPLACE = common dso_local global i32 0, align 4
@ATTR_REPLACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i8*, i64, i32, i32)* @__xfs_xattr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__xfs_xattr_set(%struct.inode* %0, i8* %1, i8* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.xfs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.inode*, %struct.inode** %8, align 8
  %16 = call %struct.xfs_inode* @XFS_I(%struct.inode* %15)
  store %struct.xfs_inode* %16, %struct.xfs_inode** %14, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %58

23:                                               ; preds = %6
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @XATTR_CREATE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @ATTR_CREATE, align 4
  %30 = load i32, i32* %13, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %13, align 4
  br label %32

32:                                               ; preds = %28, %23
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @XATTR_REPLACE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @ATTR_REPLACE, align 4
  %39 = load i32, i32* %13, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %37, %32
  %42 = load i8*, i8** %10, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @xfs_attr_remove(%struct.xfs_inode* %45, i8* %46, i32 %47)
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %58

50:                                               ; preds = %41
  %51 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i8*, i8** %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @xfs_attr_set(%struct.xfs_inode* %51, i8* %52, i8* %53, i64 %54, i32 %55)
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %50, %44, %20
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

declare dso_local %struct.xfs_inode* @XFS_I(%struct.inode*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @xfs_attr_remove(%struct.xfs_inode*, i8*, i32) #1

declare dso_local i32 @xfs_attr_set(%struct.xfs_inode*, i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
