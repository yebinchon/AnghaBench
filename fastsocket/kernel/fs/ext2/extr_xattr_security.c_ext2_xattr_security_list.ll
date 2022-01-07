; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_xattr_security.c_ext2_xattr_security_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_xattr_security.c_ext2_xattr_security_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@XATTR_SECURITY_PREFIX_LEN = common dso_local global i32 0, align 4
@XATTR_SECURITY_PREFIX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.inode*, i8*, i64, i8*, i64)* @ext2_xattr_security_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ext2_xattr_security_list(%struct.inode* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i32, i32* @XATTR_SECURITY_PREFIX_LEN, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* %10, align 8
  %17 = add i64 %15, %16
  %18 = add i64 %17, 1
  store i64 %18, i64* %12, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %44

21:                                               ; preds = %5
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ule i64 %22, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** @XATTR_SECURITY_PREFIX, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @memcpy(i8* %26, i8* %27, i32 %28)
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8*, i8** %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @memcpy(i8* %33, i8* %34, i32 %36)
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %10, align 8
  %42 = add i64 %40, %41
  %43 = getelementptr inbounds i8, i8* %38, i64 %42
  store i8 0, i8* %43, align 1
  br label %44

44:                                               ; preds = %25, %21, %5
  %45 = load i64, i64* %12, align 8
  ret i64 %45
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
