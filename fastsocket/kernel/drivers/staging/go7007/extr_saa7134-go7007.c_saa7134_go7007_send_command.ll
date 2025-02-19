; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_saa7134-go7007.c_saa7134_go7007_send_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_saa7134-go7007.c_saa7134_go7007_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { %struct.saa7134_go7007* }
%struct.saa7134_go7007 = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_queryctrl = type { i32 }
%struct.v4l2_control = type { i32 }

@V4L2_CTRL_CLASS_USER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*, i32, i8*)* @saa7134_go7007_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_go7007_send_command(%struct.go7007* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.go7007*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.saa7134_go7007*, align 8
  %9 = alloca %struct.saa7134_dev*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.v4l2_queryctrl*, align 8
  %13 = alloca %struct.v4l2_control*, align 8
  %14 = alloca %struct.v4l2_control*, align 8
  store %struct.go7007* %0, %struct.go7007** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %15 = load %struct.go7007*, %struct.go7007** %5, align 8
  %16 = getelementptr inbounds %struct.go7007, %struct.go7007* %15, i32 0, i32 0
  %17 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %16, align 8
  store %struct.saa7134_go7007* %17, %struct.saa7134_go7007** %8, align 8
  %18 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %8, align 8
  %19 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %18, i32 0, i32 0
  %20 = load %struct.saa7134_dev*, %struct.saa7134_dev** %19, align 8
  store %struct.saa7134_dev* %20, %struct.saa7134_dev** %9, align 8
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %78 [
    i32 128, label %22
    i32 131, label %28
    i32 130, label %37
    i32 132, label %50
    i32 129, label %64
  ]

22:                                               ; preds = %3
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** %10, align 8
  %25 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = call i32 @saa7134_s_std_internal(%struct.saa7134_dev* %25, i32* null, i32* %26)
  store i32 %27, i32* %4, align 4
  br label %81

28:                                               ; preds = %3
  %29 = load i8*, i8** %7, align 8
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %11, align 8
  %31 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %32 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %11, align 8
  store i32 %35, i32* %36, align 4
  store i32 0, i32* %4, align 4
  br label %81

37:                                               ; preds = %3
  %38 = load i8*, i8** %7, align 8
  %39 = bitcast i8* %38 to %struct.v4l2_queryctrl*
  store %struct.v4l2_queryctrl* %39, %struct.v4l2_queryctrl** %12, align 8
  %40 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %12, align 8
  %41 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @V4L2_CTRL_ID2CLASS(i32 %42)
  %44 = load i32, i32* @V4L2_CTRL_CLASS_USER, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %12, align 8
  %48 = call i32 @saa7134_queryctrl(i32* null, i32* null, %struct.v4l2_queryctrl* %47)
  store i32 %48, i32* %4, align 4
  br label %81

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %3, %49
  %51 = load i8*, i8** %7, align 8
  %52 = bitcast i8* %51 to %struct.v4l2_control*
  store %struct.v4l2_control* %52, %struct.v4l2_control** %13, align 8
  %53 = load %struct.v4l2_control*, %struct.v4l2_control** %13, align 8
  %54 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @V4L2_CTRL_ID2CLASS(i32 %55)
  %57 = load i32, i32* @V4L2_CTRL_CLASS_USER, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %61 = load %struct.v4l2_control*, %struct.v4l2_control** %13, align 8
  %62 = call i32 @saa7134_g_ctrl_internal(%struct.saa7134_dev* %60, i32* null, %struct.v4l2_control* %61)
  store i32 %62, i32* %4, align 4
  br label %81

63:                                               ; preds = %50
  br label %64

64:                                               ; preds = %3, %63
  %65 = load i8*, i8** %7, align 8
  %66 = bitcast i8* %65 to %struct.v4l2_control*
  store %struct.v4l2_control* %66, %struct.v4l2_control** %14, align 8
  %67 = load %struct.v4l2_control*, %struct.v4l2_control** %14, align 8
  %68 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @V4L2_CTRL_ID2CLASS(i32 %69)
  %71 = load i32, i32* @V4L2_CTRL_CLASS_USER, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %75 = load %struct.v4l2_control*, %struct.v4l2_control** %14, align 8
  %76 = call i32 @saa7134_s_ctrl_internal(%struct.saa7134_dev* %74, i32* null, %struct.v4l2_control* %75)
  store i32 %76, i32* %4, align 4
  br label %81

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77, %3
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %78, %73, %59, %46, %28, %22
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @saa7134_s_std_internal(%struct.saa7134_dev*, i32*, i32*) #1

declare dso_local i32 @V4L2_CTRL_ID2CLASS(i32) #1

declare dso_local i32 @saa7134_queryctrl(i32*, i32*, %struct.v4l2_queryctrl*) #1

declare dso_local i32 @saa7134_g_ctrl_internal(%struct.saa7134_dev*, i32*, %struct.v4l2_control*) #1

declare dso_local i32 @saa7134_s_ctrl_internal(%struct.saa7134_dev*, i32*, %struct.v4l2_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
