; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_vidioc_s_std.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_vidioc_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.go7007 = type { i32, i32, i32, i64, i8*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.go7007_file = type { %struct.go7007* }

@EBUSY = common dso_local global i32 0, align 4
@GO7007_SENSOR_TV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GO7007_BOARD_HAS_TUNER = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@VIDIOC_S_STD = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@GO7007_STD_NTSC = common dso_local global i8* null, align 8
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@GO7007_STD_PAL = common dso_local global i8* null, align 8
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32*)* @vidioc_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_std(%struct.file* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.go7007*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.go7007_file*
  %11 = getelementptr inbounds %struct.go7007_file, %struct.go7007_file* %10, i32 0, i32 0
  %12 = load %struct.go7007*, %struct.go7007** %11, align 8
  store %struct.go7007* %12, %struct.go7007** %8, align 8
  %13 = load %struct.go7007*, %struct.go7007** %8, align 8
  %14 = getelementptr inbounds %struct.go7007, %struct.go7007* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %139

20:                                               ; preds = %3
  %21 = load %struct.go7007*, %struct.go7007** %8, align 8
  %22 = getelementptr inbounds %struct.go7007, %struct.go7007* %21, i32 0, i32 5
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GO7007_SENSOR_TV, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %20
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %139

36:                                               ; preds = %29, %20
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %139

43:                                               ; preds = %36
  %44 = load %struct.go7007*, %struct.go7007** %8, align 8
  %45 = getelementptr inbounds %struct.go7007, %struct.go7007* %44, i32 0, i32 5
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @GO7007_BOARD_HAS_TUNER, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %84

52:                                               ; preds = %43
  %53 = load %struct.go7007*, %struct.go7007** %8, align 8
  %54 = getelementptr inbounds %struct.go7007, %struct.go7007* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.go7007*, %struct.go7007** %8, align 8
  %57 = getelementptr inbounds %struct.go7007, %struct.go7007* %56, i32 0, i32 5
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 1
  %62 = icmp eq i32 %55, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %52
  %64 = load %struct.go7007*, %struct.go7007** %8, align 8
  %65 = getelementptr inbounds %struct.go7007, %struct.go7007* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %139

71:                                               ; preds = %63
  %72 = load %struct.go7007*, %struct.go7007** %8, align 8
  %73 = getelementptr inbounds %struct.go7007, %struct.go7007* %72, i32 0, i32 2
  %74 = load i32, i32* @VIDIOC_S_STD, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @i2c_clients_command(i32* %73, i32 %74, i32* %75)
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %71
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %139

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %83, %52, %43
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @V4L2_STD_NTSC, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load i8*, i8** @GO7007_STD_NTSC, align 8
  %92 = load %struct.go7007*, %struct.go7007** %8, align 8
  %93 = getelementptr inbounds %struct.go7007, %struct.go7007* %92, i32 0, i32 4
  store i8* %91, i8** %93, align 8
  %94 = load %struct.go7007*, %struct.go7007** %8, align 8
  %95 = getelementptr inbounds %struct.go7007, %struct.go7007* %94, i32 0, i32 1
  store i32 30000, i32* %95, align 4
  br label %125

96:                                               ; preds = %84
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @V4L2_STD_PAL, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load i8*, i8** @GO7007_STD_PAL, align 8
  %104 = load %struct.go7007*, %struct.go7007** %8, align 8
  %105 = getelementptr inbounds %struct.go7007, %struct.go7007* %104, i32 0, i32 4
  store i8* %103, i8** %105, align 8
  %106 = load %struct.go7007*, %struct.go7007** %8, align 8
  %107 = getelementptr inbounds %struct.go7007, %struct.go7007* %106, i32 0, i32 1
  store i32 25025, i32* %107, align 4
  br label %124

108:                                              ; preds = %96
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @V4L2_STD_SECAM, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %108
  %115 = load i8*, i8** @GO7007_STD_PAL, align 8
  %116 = load %struct.go7007*, %struct.go7007** %8, align 8
  %117 = getelementptr inbounds %struct.go7007, %struct.go7007* %116, i32 0, i32 4
  store i8* %115, i8** %117, align 8
  %118 = load %struct.go7007*, %struct.go7007** %8, align 8
  %119 = getelementptr inbounds %struct.go7007, %struct.go7007* %118, i32 0, i32 1
  store i32 25025, i32* %119, align 4
  br label %123

120:                                              ; preds = %108
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %4, align 4
  br label %139

123:                                              ; preds = %114
  br label %124

124:                                              ; preds = %123, %102
  br label %125

125:                                              ; preds = %124, %90
  %126 = load %struct.go7007*, %struct.go7007** %8, align 8
  %127 = getelementptr inbounds %struct.go7007, %struct.go7007* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.go7007*, %struct.go7007** %8, align 8
  %132 = getelementptr inbounds %struct.go7007, %struct.go7007* %131, i32 0, i32 2
  %133 = load i32, i32* @VIDIOC_S_STD, align 4
  %134 = load i32*, i32** %7, align 8
  %135 = call i32 @i2c_clients_command(i32* %132, i32 %133, i32* %134)
  br label %136

136:                                              ; preds = %130, %125
  %137 = load %struct.go7007*, %struct.go7007** %8, align 8
  %138 = call i32 @set_capture_size(%struct.go7007* %137, i32* null, i32 0)
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %136, %120, %80, %68, %40, %33, %17
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @i2c_clients_command(i32*, i32, i32*) #1

declare dso_local i32 @set_capture_size(%struct.go7007*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
