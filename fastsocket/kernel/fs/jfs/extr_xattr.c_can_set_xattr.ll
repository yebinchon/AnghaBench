; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_xattr.c_can_set_xattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_xattr.c_can_set_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@XATTR_SYSTEM_PREFIX = common dso_local global i32 0, align 4
@XATTR_SYSTEM_PREFIX_LEN = common dso_local global i32 0, align 4
@XATTR_TRUSTED_PREFIX = common dso_local global i32 0, align 4
@XATTR_TRUSTED_PREFIX_LEN = common dso_local global i32 0, align 4
@XATTR_SECURITY_PREFIX = common dso_local global i32 0, align 4
@XATTR_SECURITY_PREFIX_LEN = common dso_local global i32 0, align 4
@XATTR_USER_PREFIX = common dso_local global i32 0, align 4
@XATTR_USER_PREFIX_LEN = common dso_local global i32 0, align 4
@XATTR_OS2_PREFIX = common dso_local global i32 0, align 4
@XATTR_OS2_PREFIX_LEN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i8*, i64)* @can_set_xattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_set_xattr(%struct.inode* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = load i32, i32* @XATTR_SYSTEM_PREFIX, align 4
  %12 = load i32, i32* @XATTR_SYSTEM_PREFIX_LEN, align 4
  %13 = call i64 @strncmp(i8* %10, i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @can_set_system_xattr(%struct.inode* %16, i8* %17, i8* %18, i64 %19)
  store i32 %20, i32* %5, align 4
  br label %49

21:                                               ; preds = %4
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* @XATTR_TRUSTED_PREFIX, align 4
  %24 = load i32, i32* @XATTR_TRUSTED_PREFIX_LEN, align 4
  %25 = call i64 @strncmp(i8* %22, i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %21
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* @XATTR_SECURITY_PREFIX, align 4
  %30 = load i32, i32* @XATTR_SECURITY_PREFIX_LEN, align 4
  %31 = call i64 @strncmp(i8* %28, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %27
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @XATTR_USER_PREFIX, align 4
  %36 = load i32, i32* @XATTR_USER_PREFIX_LEN, align 4
  %37 = call i64 @strncmp(i8* %34, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* @XATTR_OS2_PREFIX, align 4
  %42 = load i32, i32* @XATTR_OS2_PREFIX_LEN, align 4
  %43 = call i64 @strncmp(i8* %40, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %49

48:                                               ; preds = %39, %33, %27, %21
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %45, %15
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @can_set_system_xattr(%struct.inode*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
