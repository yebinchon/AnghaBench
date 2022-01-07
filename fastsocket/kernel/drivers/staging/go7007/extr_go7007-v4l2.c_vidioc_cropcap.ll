; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_vidioc_cropcap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_vidioc_cropcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_cropcap = type { i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.go7007 = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.go7007_file = type { %struct.go7007* }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_cropcap*)* @vidioc_cropcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_cropcap(%struct.file* %0, i8* %1, %struct.v4l2_cropcap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_cropcap*, align 8
  %8 = alloca %struct.go7007*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_cropcap* %2, %struct.v4l2_cropcap** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.go7007_file*
  %11 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %10, i32 0, i32 0
  %12 = load %struct.go7007*, %struct.go7007** %11, align 8
  store %struct.go7007* %12, %struct.go7007** %8, align 8
  %13 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %121

21:                                               ; preds = %3
  %22 = load %struct.go7007*, %struct.go7007** %8, align 8
  %23 = getelementptr inbounds %struct.go7007, %struct.go7007* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %120 [
    i32 130, label %25
    i32 128, label %50
    i32 129, label %75
  ]

25:                                               ; preds = %21
  %26 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  store i32 0, i32* %28, align 4
  %29 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  store i32 0, i32* %31, align 8
  %32 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 720, i32* %34, align 8
  %35 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 480, i32* %37, align 4
  %38 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  store i32 0, i32* %40, align 4
  %41 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  store i32 0, i32* %43, align 8
  %44 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 720, i32* %46, align 8
  %47 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i32 480, i32* %49, align 4
  br label %120

50:                                               ; preds = %21
  %51 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  store i32 0, i32* %53, align 4
  %54 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i32 0, i32* %56, align 8
  %57 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 720, i32* %59, align 8
  %60 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i32 576, i32* %62, align 4
  %63 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  store i32 0, i32* %65, align 4
  %66 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  store i32 0, i32* %68, align 8
  %69 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32 720, i32* %71, align 8
  %72 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i32 576, i32* %74, align 4
  br label %120

75:                                               ; preds = %21
  %76 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  store i32 0, i32* %78, align 4
  %79 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  store i32 0, i32* %81, align 8
  %82 = load %struct.go7007*, %struct.go7007** %8, align 8
  %83 = getelementptr inbounds %struct.go7007, %struct.go7007* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %88 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.go7007*, %struct.go7007** %8, align 8
  %91 = getelementptr inbounds %struct.go7007, %struct.go7007* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %96 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  %98 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %99 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  store i32 0, i32* %100, align 4
  %101 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %102 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  store i32 0, i32* %103, align 8
  %104 = load %struct.go7007*, %struct.go7007** %8, align 8
  %105 = getelementptr inbounds %struct.go7007, %struct.go7007* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %110 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 8
  %112 = load %struct.go7007*, %struct.go7007** %8, align 8
  %113 = getelementptr inbounds %struct.go7007, %struct.go7007* %112, i32 0, i32 1
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %118 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  br label %120

120:                                              ; preds = %21, %75, %50, %25
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %120, %18
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
