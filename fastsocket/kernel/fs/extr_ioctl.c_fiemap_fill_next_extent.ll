; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_ioctl.c_fiemap_fill_next_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_ioctl.c_fiemap_fill_next_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fiemap_extent_info = type { i64, i64, %struct.fiemap_extent* }
%struct.fiemap_extent = type { i32, i8*, i8*, i8* }

@FIEMAP_EXTENT_LAST = common dso_local global i32 0, align 4
@SET_UNKNOWN_FLAGS = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_UNKNOWN = common dso_local global i32 0, align 4
@SET_NO_UNMOUNTED_IO_FLAGS = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_ENCODED = common dso_local global i32 0, align 4
@SET_NOT_ALIGNED_FLAGS = common dso_local global i32 0, align 4
@FIEMAP_EXTENT_NOT_ALIGNED = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fiemap_extent_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fiemap_extent, align 8
  %13 = alloca %struct.fiemap_extent*, align 8
  store %struct.fiemap_extent_info* %0, %struct.fiemap_extent_info** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %15 = getelementptr inbounds %struct.fiemap_extent_info, %struct.fiemap_extent_info* %14, i32 0, i32 2
  %16 = load %struct.fiemap_extent*, %struct.fiemap_extent** %15, align 8
  store %struct.fiemap_extent* %16, %struct.fiemap_extent** %13, align 8
  %17 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %18 = getelementptr inbounds %struct.fiemap_extent_info, %struct.fiemap_extent_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %5
  %22 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %23 = getelementptr inbounds %struct.fiemap_extent_info, %struct.fiemap_extent_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @FIEMAP_EXTENT_LAST, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  store i32 %31, i32* %6, align 4
  br label %109

32:                                               ; preds = %5
  %33 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %34 = getelementptr inbounds %struct.fiemap_extent_info, %struct.fiemap_extent_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %37 = getelementptr inbounds %struct.fiemap_extent_info, %struct.fiemap_extent_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 1, i32* %6, align 4
  br label %109

41:                                               ; preds = %32
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @SET_UNKNOWN_FLAGS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @FIEMAP_EXTENT_UNKNOWN, align 4
  %48 = load i32, i32* %11, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @SET_NO_UNMOUNTED_IO_FLAGS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @FIEMAP_EXTENT_ENCODED, align 4
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @SET_NOT_ALIGNED_FLAGS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @FIEMAP_EXTENT_NOT_ALIGNED, align 4
  %66 = load i32, i32* %11, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %64, %59
  %69 = call i32 @memset(%struct.fiemap_extent* %12, i32 0, i32 32)
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds %struct.fiemap_extent, %struct.fiemap_extent* %12, i32 0, i32 3
  store i8* %70, i8** %71, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds %struct.fiemap_extent, %struct.fiemap_extent* %12, i32 0, i32 2
  store i8* %72, i8** %73, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = getelementptr inbounds %struct.fiemap_extent, %struct.fiemap_extent* %12, i32 0, i32 1
  store i8* %74, i8** %75, align 8
  %76 = load i32, i32* %11, align 4
  %77 = getelementptr inbounds %struct.fiemap_extent, %struct.fiemap_extent* %12, i32 0, i32 0
  store i32 %76, i32* %77, align 8
  %78 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %79 = getelementptr inbounds %struct.fiemap_extent_info, %struct.fiemap_extent_info* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.fiemap_extent*, %struct.fiemap_extent** %13, align 8
  %82 = getelementptr inbounds %struct.fiemap_extent, %struct.fiemap_extent* %81, i64 %80
  store %struct.fiemap_extent* %82, %struct.fiemap_extent** %13, align 8
  %83 = load %struct.fiemap_extent*, %struct.fiemap_extent** %13, align 8
  %84 = call i64 @copy_to_user(%struct.fiemap_extent* %83, %struct.fiemap_extent* %12, i32 32)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %68
  %87 = load i32, i32* @EFAULT, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %6, align 4
  br label %109

89:                                               ; preds = %68
  %90 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %91 = getelementptr inbounds %struct.fiemap_extent_info, %struct.fiemap_extent_info* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %91, align 8
  %94 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %95 = getelementptr inbounds %struct.fiemap_extent_info, %struct.fiemap_extent_info* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %98 = getelementptr inbounds %struct.fiemap_extent_info, %struct.fiemap_extent_info* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %89
  store i32 1, i32* %6, align 4
  br label %109

102:                                              ; preds = %89
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @FIEMAP_EXTENT_LAST, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 1, i32 0
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %102, %101, %86, %40, %21
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i32 @memset(%struct.fiemap_extent*, i32, i32) #1

declare dso_local i64 @copy_to_user(%struct.fiemap_extent*, %struct.fiemap_extent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
