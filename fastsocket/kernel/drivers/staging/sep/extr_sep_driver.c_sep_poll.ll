; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/sep/extr_sep_driver.c_sep_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.sep_device* }
%struct.sep_device = type { i64, i64, i64 }

@.str = private unnamed_addr constant [35 x i8] c"---------->SEP Driver poll: start\0A\00", align 1
@sep_event = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"sep->send_ct is %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"sep->reply_ct is %lu\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Sep Mesg Word %lu of the message is %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Debug Data Word %lu of the message is %lu\0A\00", align 1
@HW_HOST_SEP_HOST_GPR2_REG_ADDR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"retval is %lu\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"SEP Driver: sep request in\0A\00", align 1
@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"SEP Driver: sep reply in\0A\00", align 1
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"SEP Driver:<-------- poll exit\0A\00", align 1
@SEP_DRIVER_MESSAGE_SHARED_AREA_SIZE_IN_BYTES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @sep_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sep_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.sep_device*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.sep_device*, %struct.sep_device** %10, align 8
  store %struct.sep_device* %11, %struct.sep_device** %8, align 8
  %12 = call i32 @dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.file*, %struct.file** %3, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @poll_wait(%struct.file* %13, i32* @sep_event, i32* %14)
  %16 = load %struct.sep_device*, %struct.sep_device** %8, align 8
  %17 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  %20 = load %struct.sep_device*, %struct.sep_device** %8, align 8
  %21 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %22)
  %24 = load %struct.sep_device*, %struct.sep_device** %8, align 8
  %25 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.sep_device*, %struct.sep_device** %8, align 8
  %28 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %90

31:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %32

32:                                               ; preds = %45, %31
  %33 = load i64, i64* %5, align 8
  %34 = icmp ult i64 %33, 48
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.sep_device*, %struct.sep_device** %8, align 8
  %38 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = add i64 %39, %40
  %42 = inttoptr i64 %41 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %36, i64 %43)
  br label %45

45:                                               ; preds = %35
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %5, align 8
  br label %32

48:                                               ; preds = %32
  store i64 0, i64* %5, align 8
  br label %49

49:                                               ; preds = %63, %48
  %50 = load i64, i64* %5, align 8
  %51 = icmp ult i64 %50, 40
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.sep_device*, %struct.sep_device** %8, align 8
  %55 = getelementptr inbounds %struct.sep_device, %struct.sep_device* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 6144
  %58 = load i64, i64* %5, align 8
  %59 = add i64 %57, %58
  %60 = inttoptr i64 %59 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i64 %53, i64 %61)
  br label %63

63:                                               ; preds = %52
  %64 = load i64, i64* %5, align 8
  %65 = add i64 %64, 4
  store i64 %65, i64* %5, align 8
  br label %49

66:                                               ; preds = %49
  %67 = load %struct.sep_device*, %struct.sep_device** %8, align 8
  %68 = load i32, i32* @HW_HOST_SEP_HOST_GPR2_REG_ADDR, align 4
  %69 = call i64 @sep_read_reg(%struct.sep_device* %67, i32 %68)
  store i64 %69, i64* %7, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i64 %70)
  %72 = load i64, i64* %7, align 8
  %73 = lshr i64 %72, 31
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %66
  %76 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %77 = load i32, i32* @POLLOUT, align 4
  %78 = load i32, i32* @POLLWRNORM, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %89

82:                                               ; preds = %66
  %83 = call i32 (i8*, ...) @edbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %84 = load i32, i32* @POLLIN, align 4
  %85 = load i32, i32* @POLLRDNORM, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %82, %75
  br label %90

90:                                               ; preds = %89, %2
  %91 = call i32 @dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @edbg(i8*, ...) #1

declare dso_local i64 @sep_read_reg(%struct.sep_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
