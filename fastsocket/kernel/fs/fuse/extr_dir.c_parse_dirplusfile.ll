; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_parse_dirplusfile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_parse_dirplusfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.fuse_direntplus = type { %struct.TYPE_2__, %struct.fuse_dirent }
%struct.TYPE_2__ = type { i32 }
%struct.fuse_dirent = type { i64, i32, i32, i32, i32 }

@FUSE_NAME_OFFSET_DIRENTPLUS = common dso_local global i64 0, align 8
@FUSE_NAME_MAX = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.file*, i8*, i32 (i8*, i32, i64, i32, i32, i32)*, i32)* @parse_dirplusfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_dirplusfile(i8* %0, i64 %1, %struct.file* %2, i8* %3, i32 (i8*, i32, i64, i32, i32, i32)* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32 (i8*, i32, i64, i32, i32, i32)*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.fuse_direntplus*, align 8
  %15 = alloca %struct.fuse_dirent*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.file* %2, %struct.file** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 (i8*, i32, i64, i32, i32, i32)* %4, i32 (i8*, i32, i64, i32, i32, i32)** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %17, align 4
  br label %19

19:                                               ; preds = %95, %6
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @FUSE_NAME_OFFSET_DIRENTPLUS, align 8
  %22 = icmp uge i64 %20, %21
  br i1 %22, label %23, label %96

23:                                               ; preds = %19
  %24 = load i8*, i8** %8, align 8
  %25 = bitcast i8* %24 to %struct.fuse_direntplus*
  store %struct.fuse_direntplus* %25, %struct.fuse_direntplus** %14, align 8
  %26 = load %struct.fuse_direntplus*, %struct.fuse_direntplus** %14, align 8
  %27 = getelementptr inbounds %struct.fuse_direntplus, %struct.fuse_direntplus* %26, i32 0, i32 1
  store %struct.fuse_dirent* %27, %struct.fuse_dirent** %15, align 8
  %28 = load %struct.fuse_direntplus*, %struct.fuse_direntplus** %14, align 8
  %29 = call i64 @FUSE_DIRENTPLUS_SIZE(%struct.fuse_direntplus* %28)
  store i64 %29, i64* %16, align 8
  %30 = load %struct.fuse_dirent*, %struct.fuse_dirent** %15, align 8
  %31 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %23
  %35 = load %struct.fuse_dirent*, %struct.fuse_dirent** %15, align 8
  %36 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FUSE_NAME_MAX, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %23
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %97

43:                                               ; preds = %34
  %44 = load i64, i64* %16, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %96

48:                                               ; preds = %43
  %49 = load i32, i32* %17, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %75, label %51

51:                                               ; preds = %48
  %52 = load i32 (i8*, i32, i64, i32, i32, i32)*, i32 (i8*, i32, i64, i32, i32, i32)** %12, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load %struct.fuse_dirent*, %struct.fuse_dirent** %15, align 8
  %55 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.fuse_dirent*, %struct.fuse_dirent** %15, align 8
  %58 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.file*, %struct.file** %10, align 8
  %61 = getelementptr inbounds %struct.file, %struct.file* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.fuse_dirent*, %struct.fuse_dirent** %15, align 8
  %64 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.fuse_dirent*, %struct.fuse_dirent** %15, align 8
  %67 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 %52(i8* %53, i32 %56, i64 %59, i32 %62, i32 %65, i32 %68)
  store i32 %69, i32* %17, align 4
  %70 = load %struct.fuse_dirent*, %struct.fuse_dirent** %15, align 8
  %71 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.file*, %struct.file** %10, align 8
  %74 = getelementptr inbounds %struct.file, %struct.file* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %51, %48
  %76 = load i64, i64* %16, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 %76
  store i8* %78, i8** %8, align 8
  %79 = load i64, i64* %16, align 8
  %80 = load i64, i64* %9, align 8
  %81 = sub i64 %80, %79
  store i64 %81, i64* %9, align 8
  %82 = load %struct.file*, %struct.file** %10, align 8
  %83 = load %struct.fuse_direntplus*, %struct.fuse_direntplus** %14, align 8
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @fuse_direntplus_link(%struct.file* %82, %struct.fuse_direntplus* %83, i32 %84)
  store i32 %85, i32* %18, align 4
  %86 = load i32, i32* %18, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %75
  %89 = load %struct.file*, %struct.file** %10, align 8
  %90 = load %struct.fuse_direntplus*, %struct.fuse_direntplus** %14, align 8
  %91 = getelementptr inbounds %struct.fuse_direntplus, %struct.fuse_direntplus* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @fuse_force_forget(%struct.file* %89, i32 %93)
  br label %95

95:                                               ; preds = %88, %75
  br label %19

96:                                               ; preds = %47, %19
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %96, %40
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i64 @FUSE_DIRENTPLUS_SIZE(%struct.fuse_direntplus*) #1

declare dso_local i32 @fuse_direntplus_link(%struct.file*, %struct.fuse_direntplus*, i32) #1

declare dso_local i32 @fuse_force_forget(%struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
