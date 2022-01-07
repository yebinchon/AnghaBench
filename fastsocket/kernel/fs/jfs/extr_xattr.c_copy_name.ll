; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_xattr.c_copy_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_xattr.c_copy_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jfs_ea = type { i32, i32 }

@XATTR_OS2_PREFIX = common dso_local global i32 0, align 4
@XATTR_OS2_PREFIX_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.jfs_ea*)* @copy_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_name(i8* %0, %struct.jfs_ea* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.jfs_ea*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.jfs_ea* %1, %struct.jfs_ea** %4, align 8
  %6 = load %struct.jfs_ea*, %struct.jfs_ea** %4, align 8
  %7 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.jfs_ea*, %struct.jfs_ea** %4, align 8
  %10 = call i64 @is_os2_xattr(%struct.jfs_ea* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @XATTR_OS2_PREFIX, align 4
  %15 = load i32, i32* @XATTR_OS2_PREFIX_LEN, align 4
  %16 = call i32 @memcpy(i8* %13, i32 %14, i32 %15)
  %17 = load i32, i32* @XATTR_OS2_PREFIX_LEN, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %3, align 8
  %21 = load i32, i32* @XATTR_OS2_PREFIX_LEN, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %12, %2
  %25 = load i8*, i8** %3, align 8
  %26 = load %struct.jfs_ea*, %struct.jfs_ea** %4, align 8
  %27 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.jfs_ea*, %struct.jfs_ea** %4, align 8
  %30 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memcpy(i8* %25, i32 %28, i32 %31)
  %33 = load i8*, i8** %3, align 8
  %34 = load %struct.jfs_ea*, %struct.jfs_ea** %4, align 8
  %35 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %33, i64 %37
  store i8 0, i8* %38, align 1
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i64 @is_os2_xattr(%struct.jfs_ea*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
