; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/mimio/extr_mimio.c_mimio_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/mimio/extr_mimio.c_mimio_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.mimio = type { i32, %struct.TYPE_2__, i32, i64, i32 }
%struct.TYPE_2__ = type { %struct.urb* }
%struct.urb = type { i64, i64, i32, i64, i32 }

@disconnect_sem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"mimio_open\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"null mimio.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"usb_submit_urb failure (res = %d: %s). Not greeting.\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"urb is NULL\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"urb->hcpriv is non-NULL\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"urb is not complete\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"urb has no packets\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"urb interval too small\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"urb interval too large or some other error\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"Mimio greeted OK.\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Mimio greet Failure (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @mimio_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mimio_open(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mimio*, align 8
  %5 = alloca %struct.urb*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = call i32 @down(i32* @disconnect_sem)
  %7 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %8 = call %struct.mimio* @input_get_drvdata(%struct.input_dev* %7)
  store %struct.mimio* %8, %struct.mimio** %4, align 8
  %9 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %10 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %9, i32 0, i32 0
  %11 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.mimio*, %struct.mimio** %4, align 8
  %13 = icmp eq %struct.mimio* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %16 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %15, i32 0, i32 0
  %17 = call i32 (i32*, i8*, ...) @dev_err(i32* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %119

20:                                               ; preds = %1
  %21 = load %struct.mimio*, %struct.mimio** %4, align 8
  %22 = getelementptr inbounds %struct.mimio, %struct.mimio* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = icmp ne i32 %23, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %119

27:                                               ; preds = %20
  %28 = load %struct.mimio*, %struct.mimio** %4, align 8
  %29 = getelementptr inbounds %struct.mimio, %struct.mimio* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %118

32:                                               ; preds = %27
  %33 = load %struct.mimio*, %struct.mimio** %4, align 8
  %34 = getelementptr inbounds %struct.mimio, %struct.mimio* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %118, label %37

37:                                               ; preds = %32
  %38 = load %struct.mimio*, %struct.mimio** %4, align 8
  %39 = getelementptr inbounds %struct.mimio, %struct.mimio* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.urb*, %struct.urb** %40, align 8
  store %struct.urb* %41, %struct.urb** %5, align 8
  %42 = load %struct.mimio*, %struct.mimio** %4, align 8
  %43 = getelementptr inbounds %struct.mimio, %struct.mimio* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.mimio*, %struct.mimio** %4, align 8
  %46 = getelementptr inbounds %struct.mimio, %struct.mimio* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.urb*, %struct.urb** %47, align 8
  %49 = getelementptr inbounds %struct.urb, %struct.urb* %48, i32 0, i32 4
  store i32 %44, i32* %49, align 8
  %50 = load %struct.mimio*, %struct.mimio** %4, align 8
  %51 = getelementptr inbounds %struct.mimio, %struct.mimio* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.urb*, %struct.urb** %52, align 8
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i32 @usb_submit_urb(%struct.urb* %53, i32 %54)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %101

58:                                               ; preds = %37
  %59 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %60 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.urb*, %struct.urb** %5, align 8
  %63 = icmp ne %struct.urb* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  br label %96

65:                                               ; preds = %58
  %66 = load %struct.urb*, %struct.urb** %5, align 8
  %67 = getelementptr inbounds %struct.urb, %struct.urb* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %94

71:                                               ; preds = %65
  %72 = load %struct.urb*, %struct.urb** %5, align 8
  %73 = getelementptr inbounds %struct.urb, %struct.urb* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  br label %92

77:                                               ; preds = %71
  %78 = load %struct.urb*, %struct.urb** %5, align 8
  %79 = getelementptr inbounds %struct.urb, %struct.urb* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sle i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %90

83:                                               ; preds = %77
  %84 = load %struct.urb*, %struct.urb** %5, align 8
  %85 = getelementptr inbounds %struct.urb, %struct.urb* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp sle i64 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0)
  br label %90

90:                                               ; preds = %83, %82
  %91 = phi i8* [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), %82 ], [ %89, %83 ]
  br label %92

92:                                               ; preds = %90, %76
  %93 = phi i8* [ getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), %76 ], [ %91, %90 ]
  br label %94

94:                                               ; preds = %92, %70
  %95 = phi i8* [ getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), %70 ], [ %93, %92 ]
  br label %96

96:                                               ; preds = %94, %64
  %97 = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %64 ], [ %95, %94 ]
  %98 = call i32 (i32*, i8*, ...) @dev_err(i32* %60, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %61, i8* %97)
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %119

101:                                              ; preds = %37
  %102 = load %struct.mimio*, %struct.mimio** %4, align 8
  %103 = call i32 @mimio_greet(%struct.mimio* %102)
  store i32 %103, i32* %3, align 4
  %104 = load i32, i32* %3, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %108 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %107, i32 0, i32 0
  %109 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %110 = load %struct.mimio*, %struct.mimio** %4, align 8
  %111 = getelementptr inbounds %struct.mimio, %struct.mimio* %110, i32 0, i32 0
  store i32 1, i32* %111, align 8
  br label %117

112:                                              ; preds = %101
  %113 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %114 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %113, i32 0, i32 0
  %115 = load i32, i32* %3, align 4
  %116 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %114, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %112, %106
  br label %118

118:                                              ; preds = %117, %32, %27
  br label %119

119:                                              ; preds = %118, %96, %26, %14
  %120 = call i32 @up(i32* @disconnect_sem)
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @down(i32*) #1

declare dso_local %struct.mimio* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @mimio_greet(%struct.mimio*) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
