; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_vstusb.c_vstusb_complete_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_vstusb.c_vstusb_complete_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.urb = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.completion = type { i32 }

@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"%s timed out on ep%d%s len=%d/%d, urb status = %d\0A\00", align 1
@current = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"%s: signal pending on ep%d%s len=%d/%d,urb status = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urb*, %struct.completion*, i32, i32*)* @vstusb_complete_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vstusb_complete_urb(%struct.urb* %0, %struct.completion* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.completion*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %5, align 8
  store %struct.completion* %1, %struct.completion** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @msecs_to_jiffies(i32 %14)
  br label %18

16:                                               ; preds = %4
  %17 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i64 [ %15, %13 ], [ %17, %16 ]
  store i64 %19, i64* %9, align 8
  %20 = load %struct.completion*, %struct.completion** %6, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @wait_for_completion_interruptible_timeout(%struct.completion* %20, i64 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %70, label %24

24:                                               ; preds = %18
  %25 = load %struct.urb*, %struct.urb** %5, align 8
  %26 = call i32 @usb_kill_urb(%struct.urb* %25)
  %27 = load %struct.urb*, %struct.urb** %5, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* @ETIMEDOUT, align 4
  %35 = sub nsw i32 0, %34
  br label %40

36:                                               ; preds = %24
  %37 = load %struct.urb*, %struct.urb** %5, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  br label %40

40:                                               ; preds = %36, %33
  %41 = phi i32 [ %35, %33 ], [ %39, %36 ]
  store i32 %41, i32* %10, align 4
  %42 = load %struct.urb*, %struct.urb** %5, align 8
  %43 = getelementptr inbounds %struct.urb, %struct.urb* %42, i32 0, i32 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.urb*, %struct.urb** %5, align 8
  %50 = getelementptr inbounds %struct.urb, %struct.urb* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @usb_pipeendpoint(i32 %51)
  %53 = load %struct.urb*, %struct.urb** %5, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @usb_pipein(i32 %55)
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %60 = load %struct.urb*, %struct.urb** %5, align 8
  %61 = getelementptr inbounds %struct.urb, %struct.urb* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.urb*, %struct.urb** %5, align 8
  %64 = getelementptr inbounds %struct.urb, %struct.urb* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.urb*, %struct.urb** %5, align 8
  %67 = getelementptr inbounds %struct.urb, %struct.urb* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dev_dbg(i32* %45, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %52, i8* %59, i32 %62, i32 %65, i32 %68)
  br label %140

70:                                               ; preds = %18
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %72 = call i64 @signal_pending(%struct.TYPE_5__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %135

74:                                               ; preds = %70
  %75 = load %struct.urb*, %struct.urb** %5, align 8
  %76 = getelementptr inbounds %struct.urb, %struct.urb* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %105

79:                                               ; preds = %74
  %80 = load %struct.urb*, %struct.urb** %5, align 8
  %81 = getelementptr inbounds %struct.urb, %struct.urb* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @ENOENT, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %105, label %86

86:                                               ; preds = %79
  %87 = load %struct.urb*, %struct.urb** %5, align 8
  %88 = getelementptr inbounds %struct.urb, %struct.urb* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @ECONNRESET, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %105, label %93

93:                                               ; preds = %86
  %94 = load %struct.urb*, %struct.urb** %5, align 8
  %95 = getelementptr inbounds %struct.urb, %struct.urb* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @ESHUTDOWN, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %105, label %100

100:                                              ; preds = %93
  %101 = load i32, i32* @EINTR, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %10, align 4
  %103 = load %struct.urb*, %struct.urb** %5, align 8
  %104 = call i32 @usb_kill_urb(%struct.urb* %103)
  br label %106

105:                                              ; preds = %93, %86, %79, %74
  store i32 0, i32* %10, align 4
  br label %106

106:                                              ; preds = %105, %100
  %107 = load %struct.urb*, %struct.urb** %5, align 8
  %108 = getelementptr inbounds %struct.urb, %struct.urb* %107, i32 0, i32 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.urb*, %struct.urb** %5, align 8
  %115 = getelementptr inbounds %struct.urb, %struct.urb* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @usb_pipeendpoint(i32 %116)
  %118 = load %struct.urb*, %struct.urb** %5, align 8
  %119 = getelementptr inbounds %struct.urb, %struct.urb* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @usb_pipein(i32 %120)
  %122 = icmp ne i64 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %125 = load %struct.urb*, %struct.urb** %5, align 8
  %126 = getelementptr inbounds %struct.urb, %struct.urb* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.urb*, %struct.urb** %5, align 8
  %129 = getelementptr inbounds %struct.urb, %struct.urb* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.urb*, %struct.urb** %5, align 8
  %132 = getelementptr inbounds %struct.urb, %struct.urb* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @dev_dbg(i32* %110, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %113, i32 %117, i8* %124, i32 %127, i32 %130, i32 %133)
  br label %139

135:                                              ; preds = %70
  %136 = load %struct.urb*, %struct.urb** %5, align 8
  %137 = getelementptr inbounds %struct.urb, %struct.urb* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %10, align 4
  br label %139

139:                                              ; preds = %135, %106
  br label %140

140:                                              ; preds = %139, %40
  %141 = load i32*, i32** %8, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load %struct.urb*, %struct.urb** %5, align 8
  %145 = getelementptr inbounds %struct.urb, %struct.urb* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %8, align 8
  store i32 %146, i32* %147, align 4
  br label %148

148:                                              ; preds = %143, %140
  %149 = load i32, i32* %10, align 4
  ret i32 %149
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wait_for_completion_interruptible_timeout(%struct.completion*, i64) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @usb_pipeendpoint(i32) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i64 @signal_pending(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
