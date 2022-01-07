; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_alauda.c_alauda_ack_media.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_alauda.c_alauda_ack_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }

@ALAUDA_PORT_XD = common dso_local global i64 0, align 8
@ALAUDA_ACK_XD_MEDIA_CHANGE = common dso_local global i8 0, align 1
@ALAUDA_ACK_SM_MEDIA_CHANGE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*)* @alauda_ack_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alauda_ack_media(%struct.us_data* %0) #0 {
  %2 = alloca %struct.us_data*, align 8
  %3 = alloca i8, align 1
  store %struct.us_data* %0, %struct.us_data** %2, align 8
  %4 = load %struct.us_data*, %struct.us_data** %2, align 8
  %5 = call i64 @MEDIA_PORT(%struct.us_data* %4)
  %6 = load i64, i64* @ALAUDA_PORT_XD, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i8, i8* @ALAUDA_ACK_XD_MEDIA_CHANGE, align 1
  store i8 %9, i8* %3, align 1
  br label %12

10:                                               ; preds = %1
  %11 = load i8, i8* @ALAUDA_ACK_SM_MEDIA_CHANGE, align 1
  store i8 %11, i8* %3, align 1
  br label %12

12:                                               ; preds = %10, %8
  %13 = load %struct.us_data*, %struct.us_data** %2, align 8
  %14 = load %struct.us_data*, %struct.us_data** %2, align 8
  %15 = getelementptr inbounds %struct.us_data, %struct.us_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8, i8* %3, align 1
  %18 = call i32 @usb_stor_ctrl_transfer(%struct.us_data* %13, i32 %16, i8 zeroext %17, i32 64, i32 0, i32 1, i32* null, i32 0)
  ret i32 %18
}

declare dso_local i64 @MEDIA_PORT(%struct.us_data*) #1

declare dso_local i32 @usb_stor_ctrl_transfer(%struct.us_data*, i32, i8 zeroext, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
