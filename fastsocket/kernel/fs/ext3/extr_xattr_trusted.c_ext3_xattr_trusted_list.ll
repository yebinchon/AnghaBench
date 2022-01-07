; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_xattr_trusted.c_ext3_xattr_trusted_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_xattr_trusted.c_ext3_xattr_trusted_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@XATTR_TRUSTED_PREFIX_LEN = common dso_local global i64 0, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@XATTR_TRUSTED_PREFIX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, i8*, i64, i8*, i64)* @ext3_xattr_trusted_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext3_xattr_trusted_list(%struct.inode* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i64, i64* @XATTR_TRUSTED_PREFIX_LEN, align 8
  store i64 %14, i64* %12, align 8
  %15 = load i64, i64* %12, align 8
  %16 = load i64, i64* %11, align 8
  %17 = add i64 %15, %16
  %18 = add i64 %17, 1
  store i64 %18, i64* %13, align 8
  %19 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %20 = call i32 @capable(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  store i64 0, i64* %6, align 8
  br label %48

23:                                               ; preds = %5
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp ule i64 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %26
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** @XATTR_TRUSTED_PREFIX, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i32 @memcpy(i8* %31, i8* %32, i64 %33)
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %12, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8*, i8** %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @memcpy(i8* %37, i8* %38, i64 %39)
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %12, align 8
  %43 = load i64, i64* %11, align 8
  %44 = add i64 %42, %43
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  store i8 0, i8* %45, align 1
  br label %46

46:                                               ; preds = %30, %26, %23
  %47 = load i64, i64* %13, align 8
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %46, %22
  %49 = load i64, i64* %6, align 8
  ret i64 %49
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
