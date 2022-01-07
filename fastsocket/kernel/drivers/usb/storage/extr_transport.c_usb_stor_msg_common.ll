; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_transport.c_usb_stor_msg_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_transport.c_usb_stor_msg_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i64, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i32, i32, i32, i64, i64, %struct.completion* }
%struct.completion = type { i32 }

@US_FLIDX_ABORTING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@URB_NO_SETUP_DMA_MAP = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@US_FLIDX_URB_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"-- cancelling URB\0A\00", align 1
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%s -- cancelling URB\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Timeout\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Signal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i32)* @usb_stor_msg_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_stor_msg_common(%struct.us_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.completion, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @US_FLIDX_ABORTING, align 4
  %10 = load %struct.us_data*, %struct.us_data** %4, align 8
  %11 = getelementptr inbounds %struct.us_data, %struct.us_data* %10, i32 0, i32 2
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %135

17:                                               ; preds = %2
  %18 = call i32 @init_completion(%struct.completion* %6)
  %19 = load %struct.us_data*, %struct.us_data** %4, align 8
  %20 = getelementptr inbounds %struct.us_data, %struct.us_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 7
  store %struct.completion* %6, %struct.completion** %22, align 8
  %23 = load %struct.us_data*, %struct.us_data** %4, align 8
  %24 = getelementptr inbounds %struct.us_data, %struct.us_data* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 6
  store i64 0, i64* %26, align 8
  %27 = load %struct.us_data*, %struct.us_data** %4, align 8
  %28 = getelementptr inbounds %struct.us_data, %struct.us_data* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load %struct.us_data*, %struct.us_data** %4, align 8
  %32 = getelementptr inbounds %struct.us_data, %struct.us_data* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load i32, i32* @URB_NO_SETUP_DMA_MAP, align 4
  %36 = load %struct.us_data*, %struct.us_data** %4, align 8
  %37 = getelementptr inbounds %struct.us_data, %struct.us_data* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  store i32 %35, i32* %39, align 8
  %40 = load %struct.us_data*, %struct.us_data** %4, align 8
  %41 = getelementptr inbounds %struct.us_data, %struct.us_data* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.us_data*, %struct.us_data** %4, align 8
  %46 = getelementptr inbounds %struct.us_data, %struct.us_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %44, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %17
  %50 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %51 = load %struct.us_data*, %struct.us_data** %4, align 8
  %52 = getelementptr inbounds %struct.us_data, %struct.us_data* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %50
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %49, %17
  %58 = load %struct.us_data*, %struct.us_data** %4, align 8
  %59 = getelementptr inbounds %struct.us_data, %struct.us_data* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.us_data*, %struct.us_data** %4, align 8
  %62 = getelementptr inbounds %struct.us_data, %struct.us_data* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  store i32 %60, i32* %64, align 4
  %65 = load %struct.us_data*, %struct.us_data** %4, align 8
  %66 = getelementptr inbounds %struct.us_data, %struct.us_data* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.us_data*, %struct.us_data** %4, align 8
  %69 = getelementptr inbounds %struct.us_data, %struct.us_data* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store i32 %67, i32* %71, align 8
  %72 = load %struct.us_data*, %struct.us_data** %4, align 8
  %73 = getelementptr inbounds %struct.us_data, %struct.us_data* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* @GFP_NOIO, align 4
  %76 = call i32 @usb_submit_urb(%struct.TYPE_4__* %74, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %57
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %135

81:                                               ; preds = %57
  %82 = load i32, i32* @US_FLIDX_URB_ACTIVE, align 4
  %83 = load %struct.us_data*, %struct.us_data** %4, align 8
  %84 = getelementptr inbounds %struct.us_data, %struct.us_data* %83, i32 0, i32 2
  %85 = call i32 @set_bit(i32 %82, i32* %84)
  %86 = load i32, i32* @US_FLIDX_ABORTING, align 4
  %87 = load %struct.us_data*, %struct.us_data** %4, align 8
  %88 = getelementptr inbounds %struct.us_data, %struct.us_data* %87, i32 0, i32 2
  %89 = call i64 @test_bit(i32 %86, i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %81
  %92 = load i32, i32* @US_FLIDX_URB_ACTIVE, align 4
  %93 = load %struct.us_data*, %struct.us_data** %4, align 8
  %94 = getelementptr inbounds %struct.us_data, %struct.us_data* %93, i32 0, i32 2
  %95 = call i64 @test_and_clear_bit(i32 %92, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %99 = load %struct.us_data*, %struct.us_data** %4, align 8
  %100 = getelementptr inbounds %struct.us_data, %struct.us_data* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = call i32 @usb_unlink_urb(%struct.TYPE_4__* %101)
  br label %103

103:                                              ; preds = %97, %91
  br label %104

104:                                              ; preds = %103, %81
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %110

108:                                              ; preds = %104
  %109 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  br label %110

110:                                              ; preds = %108, %107
  %111 = phi i32 [ %105, %107 ], [ %109, %108 ]
  %112 = call i64 @wait_for_completion_interruptible_timeout(%struct.completion* %6, i32 %111)
  store i64 %112, i64* %7, align 8
  %113 = load i32, i32* @US_FLIDX_URB_ACTIVE, align 4
  %114 = load %struct.us_data*, %struct.us_data** %4, align 8
  %115 = getelementptr inbounds %struct.us_data, %struct.us_data* %114, i32 0, i32 2
  %116 = call i32 @clear_bit(i32 %113, i32* %115)
  %117 = load i64, i64* %7, align 8
  %118 = icmp sle i64 %117, 0
  br i1 %118, label %119, label %129

119:                                              ; preds = %110
  %120 = load i64, i64* %7, align 8
  %121 = icmp eq i64 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)
  %124 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %123)
  %125 = load %struct.us_data*, %struct.us_data** %4, align 8
  %126 = getelementptr inbounds %struct.us_data, %struct.us_data* %125, i32 0, i32 1
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = call i32 @usb_kill_urb(%struct.TYPE_4__* %127)
  br label %129

129:                                              ; preds = %119, %110
  %130 = load %struct.us_data*, %struct.us_data** %4, align 8
  %131 = getelementptr inbounds %struct.us_data, %struct.us_data* %130, i32 0, i32 1
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %129, %79, %14
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @US_DEBUGP(i8*, ...) #1

declare dso_local i32 @usb_unlink_urb(%struct.TYPE_4__*) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(%struct.completion*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @usb_kill_urb(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
