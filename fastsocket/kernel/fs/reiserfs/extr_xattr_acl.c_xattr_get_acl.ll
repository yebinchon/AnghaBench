; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_xattr_acl.c_xattr_get_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_xattr_acl.c_xattr_get_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.posix_acl = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i8*, i64)* @xattr_get_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xattr_get_acl(%struct.inode* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.posix_acl*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @reiserfs_posixacl(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %44

20:                                               ; preds = %4
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call %struct.posix_acl* @reiserfs_get_acl(%struct.inode* %21, i32 %22)
  store %struct.posix_acl* %23, %struct.posix_acl** %10, align 8
  %24 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %25 = call i64 @IS_ERR(%struct.posix_acl* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %29 = call i32 @PTR_ERR(%struct.posix_acl* %28)
  store i32 %29, i32* %5, align 4
  br label %44

30:                                               ; preds = %20
  %31 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %32 = icmp eq %struct.posix_acl* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @ENODATA, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %44

36:                                               ; preds = %30
  %37 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @posix_acl_to_xattr(%struct.posix_acl* %37, i8* %38, i64 %39)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.posix_acl*, %struct.posix_acl** %10, align 8
  %42 = call i32 @posix_acl_release(%struct.posix_acl* %41)
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %36, %33, %27, %17
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @reiserfs_posixacl(i32) #1

declare dso_local %struct.posix_acl* @reiserfs_get_acl(%struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.posix_acl*) #1

declare dso_local i32 @PTR_ERR(%struct.posix_acl*) #1

declare dso_local i32 @posix_acl_to_xattr(%struct.posix_acl*, i8*, i64) #1

declare dso_local i32 @posix_acl_release(%struct.posix_acl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
