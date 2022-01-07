; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_alauda.c_alauda_get_media_signature.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_alauda.c_alauda_get_media_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }

@ALAUDA_PORT_XD = common dso_local global i64 0, align 8
@ALAUDA_GET_XD_MEDIA_SIG = common dso_local global i8 0, align 1
@ALAUDA_GET_SM_MEDIA_SIG = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i8*)* @alauda_get_media_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alauda_get_media_signature(%struct.us_data* %0, i8* %1) #0 {
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.us_data*, %struct.us_data** %3, align 8
  %7 = call i64 @MEDIA_PORT(%struct.us_data* %6)
  %8 = load i64, i64* @ALAUDA_PORT_XD, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i8, i8* @ALAUDA_GET_XD_MEDIA_SIG, align 1
  store i8 %11, i8* %5, align 1
  br label %14

12:                                               ; preds = %2
  %13 = load i8, i8* @ALAUDA_GET_SM_MEDIA_SIG, align 1
  store i8 %13, i8* %5, align 1
  br label %14

14:                                               ; preds = %12, %10
  %15 = load %struct.us_data*, %struct.us_data** %3, align 8
  %16 = load %struct.us_data*, %struct.us_data** %3, align 8
  %17 = getelementptr inbounds %struct.us_data, %struct.us_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i8, i8* %5, align 1
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @usb_stor_ctrl_transfer(%struct.us_data* %15, i32 %18, i8 zeroext %19, i32 192, i32 0, i32 0, i8* %20, i32 4)
  ret i32 %21
}

declare dso_local i64 @MEDIA_PORT(%struct.us_data*) #1

declare dso_local i32 @usb_stor_ctrl_transfer(%struct.us_data*, i32, i8 zeroext, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
