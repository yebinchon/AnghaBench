; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_xattr.c_btrfs_setxattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_xattr.c_btrfs_setxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.TYPE_2__ = type { %struct.btrfs_root* }

@EROFS = common dso_local global i32 0, align 4
@XATTR_SYSTEM_PREFIX = common dso_local global i32 0, align 4
@XATTR_SYSTEM_PREFIX_LEN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_setxattr(%struct.dentry* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_root*, align 8
  store %struct.dentry* %0, %struct.dentry** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.dentry*, %struct.dentry** %7, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_2__* @BTRFS_I(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.btrfs_root*, %struct.btrfs_root** %17, align 8
  store %struct.btrfs_root* %18, %struct.btrfs_root** %12, align 8
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %12, align 8
  %20 = call i64 @btrfs_root_readonly(%struct.btrfs_root* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @EROFS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %58

25:                                               ; preds = %5
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* @XATTR_SYSTEM_PREFIX, align 4
  %28 = load i32, i32* @XATTR_SYSTEM_PREFIX_LEN, align 4
  %29 = call i32 @strncmp(i8* %26, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = load %struct.dentry*, %struct.dentry** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @generic_setxattr(%struct.dentry* %32, i8* %33, i8* %34, i64 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  br label %58

38:                                               ; preds = %25
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @btrfs_is_valid_xattr(i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %58

45:                                               ; preds = %38
  %46 = load i64, i64* %10, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %49

49:                                               ; preds = %48, %45
  %50 = load %struct.dentry*, %struct.dentry** %7, align 8
  %51 = getelementptr inbounds %struct.dentry, %struct.dentry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @__btrfs_setxattr(i32* null, i32 %52, i8* %53, i8* %54, i64 %55, i32 %56)
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %49, %42, %31, %22
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(i32) #1

declare dso_local i64 @btrfs_root_readonly(%struct.btrfs_root*) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @generic_setxattr(%struct.dentry*, i8*, i8*, i64, i32) #1

declare dso_local i32 @btrfs_is_valid_xattr(i8*) #1

declare dso_local i32 @__btrfs_setxattr(i32*, i32, i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
