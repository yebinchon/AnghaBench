; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_parse_dirfile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_parse_dirfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.fuse_dirent = type { i64, i32, i32, i32, i32 }

@FUSE_NAME_OFFSET = common dso_local global i64 0, align 8
@FUSE_NAME_MAX = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.file*, i8*, i32 (i8*, i32, i64, i32, i32, i32)*)* @parse_dirfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_dirfile(i8* %0, i64 %1, %struct.file* %2, i8* %3, i32 (i8*, i32, i64, i32, i32, i32)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32 (i8*, i32, i64, i32, i32, i32)*, align 8
  %12 = alloca %struct.fuse_dirent*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.file* %2, %struct.file** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 (i8*, i32, i64, i32, i32, i32)* %4, i32 (i8*, i32, i64, i32, i32, i32)** %11, align 8
  br label %15

15:                                               ; preds = %64, %5
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @FUSE_NAME_OFFSET, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %76

19:                                               ; preds = %15
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.fuse_dirent*
  store %struct.fuse_dirent* %21, %struct.fuse_dirent** %12, align 8
  %22 = load %struct.fuse_dirent*, %struct.fuse_dirent** %12, align 8
  %23 = call i64 @FUSE_DIRENT_SIZE(%struct.fuse_dirent* %22)
  store i64 %23, i64* %13, align 8
  %24 = load %struct.fuse_dirent*, %struct.fuse_dirent** %12, align 8
  %25 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load %struct.fuse_dirent*, %struct.fuse_dirent** %12, align 8
  %30 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FUSE_NAME_MAX, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28, %19
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %77

37:                                               ; preds = %28
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %76

42:                                               ; preds = %37
  %43 = load i32 (i8*, i32, i64, i32, i32, i32)*, i32 (i8*, i32, i64, i32, i32, i32)** %11, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load %struct.fuse_dirent*, %struct.fuse_dirent** %12, align 8
  %46 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.fuse_dirent*, %struct.fuse_dirent** %12, align 8
  %49 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.file*, %struct.file** %9, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.fuse_dirent*, %struct.fuse_dirent** %12, align 8
  %55 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.fuse_dirent*, %struct.fuse_dirent** %12, align 8
  %58 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 %43(i8* %44, i32 %47, i64 %50, i32 %53, i32 %56, i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %42
  br label %76

64:                                               ; preds = %42
  %65 = load i64, i64* %13, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 %65
  store i8* %67, i8** %7, align 8
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* %8, align 8
  %70 = sub i64 %69, %68
  store i64 %70, i64* %8, align 8
  %71 = load %struct.fuse_dirent*, %struct.fuse_dirent** %12, align 8
  %72 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.file*, %struct.file** %9, align 8
  %75 = getelementptr inbounds %struct.file, %struct.file* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %15

76:                                               ; preds = %63, %41, %15
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %76, %34
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i64 @FUSE_DIRENT_SIZE(%struct.fuse_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
