; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_xattr.c_is_os2_xattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_xattr.c_is_os2_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jfs_ea = type { i64, i32 }

@XATTR_SYSTEM_PREFIX_LEN = common dso_local global i64 0, align 8
@XATTR_SYSTEM_PREFIX = common dso_local global i32 0, align 4
@XATTR_USER_PREFIX_LEN = common dso_local global i64 0, align 8
@XATTR_USER_PREFIX = common dso_local global i32 0, align 4
@XATTR_SECURITY_PREFIX_LEN = common dso_local global i64 0, align 8
@XATTR_SECURITY_PREFIX = common dso_local global i32 0, align 4
@XATTR_TRUSTED_PREFIX_LEN = common dso_local global i64 0, align 8
@XATTR_TRUSTED_PREFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jfs_ea*)* @is_os2_xattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_os2_xattr(%struct.jfs_ea* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jfs_ea*, align 8
  store %struct.jfs_ea* %0, %struct.jfs_ea** %3, align 8
  %4 = load %struct.jfs_ea*, %struct.jfs_ea** %3, align 8
  %5 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @XATTR_SYSTEM_PREFIX_LEN, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.jfs_ea*, %struct.jfs_ea** %3, align 8
  %11 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @XATTR_SYSTEM_PREFIX, align 4
  %14 = load i64, i64* @XATTR_SYSTEM_PREFIX_LEN, align 8
  %15 = call i32 @strncmp(i32 %12, i32 %13, i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %64

18:                                               ; preds = %9, %1
  %19 = load %struct.jfs_ea*, %struct.jfs_ea** %3, align 8
  %20 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @XATTR_USER_PREFIX_LEN, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.jfs_ea*, %struct.jfs_ea** %3, align 8
  %26 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @XATTR_USER_PREFIX, align 4
  %29 = load i64, i64* @XATTR_USER_PREFIX_LEN, align 8
  %30 = call i32 @strncmp(i32 %27, i32 %28, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %64

33:                                               ; preds = %24, %18
  %34 = load %struct.jfs_ea*, %struct.jfs_ea** %3, align 8
  %35 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @XATTR_SECURITY_PREFIX_LEN, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load %struct.jfs_ea*, %struct.jfs_ea** %3, align 8
  %41 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @XATTR_SECURITY_PREFIX, align 4
  %44 = load i64, i64* @XATTR_SECURITY_PREFIX_LEN, align 8
  %45 = call i32 @strncmp(i32 %42, i32 %43, i64 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %64

48:                                               ; preds = %39, %33
  %49 = load %struct.jfs_ea*, %struct.jfs_ea** %3, align 8
  %50 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @XATTR_TRUSTED_PREFIX_LEN, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.jfs_ea*, %struct.jfs_ea** %3, align 8
  %56 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @XATTR_TRUSTED_PREFIX, align 4
  %59 = load i64, i64* @XATTR_TRUSTED_PREFIX_LEN, align 8
  %60 = call i32 @strncmp(i32 %57, i32 %58, i64 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %64

63:                                               ; preds = %54, %48
  store i32 1, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %62, %47, %32, %17
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @strncmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
