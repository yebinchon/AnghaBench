; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_mpeg_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-v4l2.c_mpeg_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_control = type { i32, i32 }
%struct.go7007 = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@GO7007_FORMAT_MPEG2 = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@GO7007_FORMAT_MPEG1 = common dso_local global i8* null, align 8
@GO7007_FORMAT_MPEG4 = common dso_local global i8* null, align 8
@GO7007_FORMAT_MJPEG = common dso_local global i8* null, align 8
@GO7007_RATIO_1_1 = common dso_local global i32 0, align 4
@GO7007_RATIO_4_3 = common dso_local global i32 0, align 4
@GO7007_RATIO_16_9 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_control*, %struct.go7007*)* @mpeg_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg_s_ctrl(%struct.v4l2_control* %0, %struct.go7007* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_control*, align 8
  %5 = alloca %struct.go7007*, align 8
  store %struct.v4l2_control* %0, %struct.v4l2_control** %4, align 8
  store %struct.go7007* %1, %struct.go7007** %5, align 8
  %6 = load %struct.go7007*, %struct.go7007** %5, align 8
  %7 = getelementptr inbounds %struct.go7007, %struct.go7007* %6, i32 0, i32 10
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %169

13:                                               ; preds = %2
  %14 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %15 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %165 [
    i32 142, label %17
    i32 139, label %46
    i32 141, label %78
    i32 137, label %108
    i32 138, label %127
    i32 140, label %146
  ]

17:                                               ; preds = %13
  %18 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %19 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %42 [
    i32 136, label %21
    i32 135, label %41
  ]

21:                                               ; preds = %17
  %22 = load i8*, i8** @GO7007_FORMAT_MPEG2, align 8
  %23 = load %struct.go7007*, %struct.go7007** %5, align 8
  %24 = getelementptr inbounds %struct.go7007, %struct.go7007* %23, i32 0, i32 8
  store i8* %22, i8** %24, align 8
  %25 = load %struct.go7007*, %struct.go7007** %5, align 8
  %26 = getelementptr inbounds %struct.go7007, %struct.go7007* %25, i32 0, i32 0
  store i32 9800000, i32* %26, align 8
  %27 = load %struct.go7007*, %struct.go7007** %5, align 8
  %28 = getelementptr inbounds %struct.go7007, %struct.go7007* %27, i32 0, i32 1
  store i32 15, i32* %28, align 4
  %29 = load %struct.go7007*, %struct.go7007** %5, align 8
  %30 = getelementptr inbounds %struct.go7007, %struct.go7007* %29, i32 0, i32 2
  store i32 72, i32* %30, align 8
  %31 = load %struct.go7007*, %struct.go7007** %5, align 8
  %32 = getelementptr inbounds %struct.go7007, %struct.go7007* %31, i32 0, i32 3
  store i32 1, i32* %32, align 4
  %33 = load %struct.go7007*, %struct.go7007** %5, align 8
  %34 = getelementptr inbounds %struct.go7007, %struct.go7007* %33, i32 0, i32 9
  store i32 0, i32* %34, align 8
  %35 = load %struct.go7007*, %struct.go7007** %5, align 8
  %36 = getelementptr inbounds %struct.go7007, %struct.go7007* %35, i32 0, i32 4
  store i32 1, i32* %36, align 8
  %37 = load %struct.go7007*, %struct.go7007** %5, align 8
  %38 = getelementptr inbounds %struct.go7007, %struct.go7007* %37, i32 0, i32 5
  store i32 1, i32* %38, align 4
  %39 = load %struct.go7007*, %struct.go7007** %5, align 8
  %40 = getelementptr inbounds %struct.go7007, %struct.go7007* %39, i32 0, i32 6
  store i32 1, i32* %40, align 8
  br label %45

41:                                               ; preds = %17
  br label %45

42:                                               ; preds = %17
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %169

45:                                               ; preds = %41, %21
  br label %168

46:                                               ; preds = %13
  %47 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %48 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %68 [
    i32 130, label %50
    i32 129, label %56
    i32 128, label %62
  ]

50:                                               ; preds = %46
  %51 = load i8*, i8** @GO7007_FORMAT_MPEG1, align 8
  %52 = load %struct.go7007*, %struct.go7007** %5, align 8
  %53 = getelementptr inbounds %struct.go7007, %struct.go7007* %52, i32 0, i32 8
  store i8* %51, i8** %53, align 8
  %54 = load %struct.go7007*, %struct.go7007** %5, align 8
  %55 = getelementptr inbounds %struct.go7007, %struct.go7007* %54, i32 0, i32 2
  store i32 0, i32* %55, align 8
  br label %71

56:                                               ; preds = %46
  %57 = load i8*, i8** @GO7007_FORMAT_MPEG2, align 8
  %58 = load %struct.go7007*, %struct.go7007** %5, align 8
  %59 = getelementptr inbounds %struct.go7007, %struct.go7007* %58, i32 0, i32 8
  store i8* %57, i8** %59, align 8
  %60 = load %struct.go7007*, %struct.go7007** %5, align 8
  %61 = getelementptr inbounds %struct.go7007, %struct.go7007* %60, i32 0, i32 2
  store i32 72, i32* %61, align 8
  br label %71

62:                                               ; preds = %46
  %63 = load i8*, i8** @GO7007_FORMAT_MPEG4, align 8
  %64 = load %struct.go7007*, %struct.go7007** %5, align 8
  %65 = getelementptr inbounds %struct.go7007, %struct.go7007* %64, i32 0, i32 8
  store i8* %63, i8** %65, align 8
  %66 = load %struct.go7007*, %struct.go7007** %5, align 8
  %67 = getelementptr inbounds %struct.go7007, %struct.go7007* %66, i32 0, i32 2
  store i32 245, i32* %67, align 8
  br label %71

68:                                               ; preds = %46
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %169

71:                                               ; preds = %62, %56, %50
  %72 = load %struct.go7007*, %struct.go7007** %5, align 8
  %73 = getelementptr inbounds %struct.go7007, %struct.go7007* %72, i32 0, i32 5
  store i32 1, i32* %73, align 4
  %74 = load %struct.go7007*, %struct.go7007** %5, align 8
  %75 = getelementptr inbounds %struct.go7007, %struct.go7007* %74, i32 0, i32 9
  store i32 0, i32* %75, align 8
  %76 = load %struct.go7007*, %struct.go7007** %5, align 8
  %77 = getelementptr inbounds %struct.go7007, %struct.go7007* %76, i32 0, i32 6
  store i32 0, i32* %77, align 8
  br label %168

78:                                               ; preds = %13
  %79 = load %struct.go7007*, %struct.go7007** %5, align 8
  %80 = getelementptr inbounds %struct.go7007, %struct.go7007* %79, i32 0, i32 8
  %81 = load i8*, i8** %80, align 8
  %82 = load i8*, i8** @GO7007_FORMAT_MJPEG, align 8
  %83 = icmp eq i8* %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %169

87:                                               ; preds = %78
  %88 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %89 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  switch i32 %90, label %104 [
    i32 133, label %91
    i32 131, label %95
    i32 134, label %99
    i32 132, label %103
  ]

91:                                               ; preds = %87
  %92 = load i32, i32* @GO7007_RATIO_1_1, align 4
  %93 = load %struct.go7007*, %struct.go7007** %5, align 8
  %94 = getelementptr inbounds %struct.go7007, %struct.go7007* %93, i32 0, i32 7
  store i32 %92, i32* %94, align 4
  br label %107

95:                                               ; preds = %87
  %96 = load i32, i32* @GO7007_RATIO_4_3, align 4
  %97 = load %struct.go7007*, %struct.go7007** %5, align 8
  %98 = getelementptr inbounds %struct.go7007, %struct.go7007* %97, i32 0, i32 7
  store i32 %96, i32* %98, align 4
  br label %107

99:                                               ; preds = %87
  %100 = load i32, i32* @GO7007_RATIO_16_9, align 4
  %101 = load %struct.go7007*, %struct.go7007** %5, align 8
  %102 = getelementptr inbounds %struct.go7007, %struct.go7007* %101, i32 0, i32 7
  store i32 %100, i32* %102, align 4
  br label %107

103:                                              ; preds = %87
  br label %104

104:                                              ; preds = %87, %103
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %169

107:                                              ; preds = %99, %95, %91
  br label %168

108:                                              ; preds = %13
  %109 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %110 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %115 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp sgt i32 %116, 34
  br i1 %117, label %118, label %121

118:                                              ; preds = %113, %108
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %169

121:                                              ; preds = %113
  %122 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %123 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.go7007*, %struct.go7007** %5, align 8
  %126 = getelementptr inbounds %struct.go7007, %struct.go7007* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  br label %168

127:                                              ; preds = %13
  %128 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %129 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %134 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 1
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %169

140:                                              ; preds = %132, %127
  %141 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %142 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.go7007*, %struct.go7007** %5, align 8
  %145 = getelementptr inbounds %struct.go7007, %struct.go7007* %144, i32 0, i32 3
  store i32 %143, i32* %145, align 4
  br label %168

146:                                              ; preds = %13
  %147 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %148 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp slt i32 %149, 64000
  br i1 %150, label %156, label %151

151:                                              ; preds = %146
  %152 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %153 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp sgt i32 %154, 10000000
  br i1 %155, label %156, label %159

156:                                              ; preds = %151, %146
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %3, align 4
  br label %169

159:                                              ; preds = %151
  %160 = load %struct.v4l2_control*, %struct.v4l2_control** %4, align 8
  %161 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.go7007*, %struct.go7007** %5, align 8
  %164 = getelementptr inbounds %struct.go7007, %struct.go7007* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  br label %168

165:                                              ; preds = %13
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %3, align 4
  br label %169

168:                                              ; preds = %159, %140, %121, %107, %71, %45
  store i32 0, i32* %3, align 4
  br label %169

169:                                              ; preds = %168, %165, %156, %137, %118, %104, %84, %68, %42, %10
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
