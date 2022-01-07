; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_user.c_file_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_user.c_file_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat64 = type { i32, i32 }

@errno = common dso_local global i32 0, align 4
@OS_TYPE_DIR = common dso_local global i32 0, align 4
@OS_TYPE_SYMLINK = common dso_local global i32 0, align 4
@OS_TYPE_CHARDEV = common dso_local global i32 0, align 4
@OS_TYPE_BLOCKDEV = common dso_local global i32 0, align 4
@OS_TYPE_FIFO = common dso_local global i32 0, align 4
@OS_TYPE_SOCK = common dso_local global i32 0, align 4
@OS_TYPE_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_type(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.stat64, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @lstat64(i8* %9, %struct.stat64* %8)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @errno, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %75

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.stat64, %struct.stat64* %8, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @major(i32 %20)
  %22 = load i32*, i32** %6, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %18, %15
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.stat64, %struct.stat64* %8, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @minor(i32 %28)
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %26, %23
  %32 = getelementptr inbounds %struct.stat64, %struct.stat64* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @S_ISDIR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @OS_TYPE_DIR, align 4
  store i32 %37, i32* %4, align 4
  br label %75

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.stat64, %struct.stat64* %8, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @S_ISLNK(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @OS_TYPE_SYMLINK, align 4
  store i32 %44, i32* %4, align 4
  br label %75

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.stat64, %struct.stat64* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @S_ISCHR(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @OS_TYPE_CHARDEV, align 4
  store i32 %51, i32* %4, align 4
  br label %75

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.stat64, %struct.stat64* %8, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @S_ISBLK(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @OS_TYPE_BLOCKDEV, align 4
  store i32 %58, i32* %4, align 4
  br label %75

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.stat64, %struct.stat64* %8, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @S_ISFIFO(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @OS_TYPE_FIFO, align 4
  store i32 %65, i32* %4, align 4
  br label %75

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.stat64, %struct.stat64* %8, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @S_ISSOCK(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @OS_TYPE_SOCK, align 4
  store i32 %72, i32* %4, align 4
  br label %75

73:                                               ; preds = %66
  %74 = load i32, i32* @OS_TYPE_FILE, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %71, %64, %57, %50, %43, %36, %12
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i64 @lstat64(i8*, %struct.stat64*) #1

declare dso_local i32 @major(i32) #1

declare dso_local i32 @minor(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISFIFO(i32) #1

declare dso_local i64 @S_ISSOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
