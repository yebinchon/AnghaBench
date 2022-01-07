; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_acl.c_btrfs_xattr_set_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_acl.c_btrfs_xattr_set_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i8*, i64)* @btrfs_xattr_set_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_xattr_set_acl(%struct.inode* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.posix_acl*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.posix_acl* null, %struct.posix_acl** %11, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = call i32 @is_owner_or_cap(%struct.inode* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @EPERM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %58

18:                                               ; preds = %4
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call i32 @IS_POSIXACL(%struct.inode* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %58

25:                                               ; preds = %18
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call %struct.posix_acl* @posix_acl_from_xattr(i8* %29, i64 %30)
  store %struct.posix_acl* %31, %struct.posix_acl** %11, align 8
  %32 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %33 = call i64 @IS_ERR(%struct.posix_acl* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %37 = call i32 @PTR_ERR(%struct.posix_acl* %36)
  store i32 %37, i32* %5, align 4
  br label %58

38:                                               ; preds = %28
  %39 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %40 = icmp ne %struct.posix_acl* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %43 = call i32 @posix_acl_valid(%struct.posix_acl* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %54

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47, %38
  br label %49

49:                                               ; preds = %48, %25
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @btrfs_set_acl(i32* null, %struct.inode* %50, %struct.posix_acl* %51, i32 %52)
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %49, %46
  %55 = load %struct.posix_acl*, %struct.posix_acl** %11, align 8
  %56 = call i32 @posix_acl_release(%struct.posix_acl* %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %35, %22, %15
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @is_owner_or_cap(%struct.inode*) #1

declare dso_local i32 @IS_POSIXACL(%struct.inode*) #1

declare dso_local %struct.posix_acl* @posix_acl_from_xattr(i8*, i64) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_valid(%struct.posix_acl*) #1

declare dso_local i32 @btrfs_set_acl(i32*, %struct.inode*, %struct.posix_acl*, i32) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
