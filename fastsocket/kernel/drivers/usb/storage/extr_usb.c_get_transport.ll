; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_usb.c_get_transport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_usb.c_get_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32, i8*, i32, i8*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"Control/Bulk\00", align 1
@usb_stor_CB_transport = common dso_local global i8* null, align 8
@usb_stor_CB_reset = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Control/Bulk/Interrupt\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Bulk\00", align 1
@usb_stor_Bulk_transport = common dso_local global i8* null, align 8
@usb_stor_Bulk_reset = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.us_data*)* @get_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_transport(%struct.us_data* %0) #0 {
  %2 = alloca %struct.us_data*, align 8
  store %struct.us_data* %0, %struct.us_data** %2, align 8
  %3 = load %struct.us_data*, %struct.us_data** %2, align 8
  %4 = getelementptr inbounds %struct.us_data, %struct.us_data* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %37 [
    i32 129, label %6
    i32 128, label %17
    i32 130, label %28
  ]

6:                                                ; preds = %1
  %7 = load %struct.us_data*, %struct.us_data** %2, align 8
  %8 = getelementptr inbounds %struct.us_data, %struct.us_data* %7, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %9 = load i8*, i8** @usb_stor_CB_transport, align 8
  %10 = load %struct.us_data*, %struct.us_data** %2, align 8
  %11 = getelementptr inbounds %struct.us_data, %struct.us_data* %10, i32 0, i32 4
  store i8* %9, i8** %11, align 8
  %12 = load i8*, i8** @usb_stor_CB_reset, align 8
  %13 = load %struct.us_data*, %struct.us_data** %2, align 8
  %14 = getelementptr inbounds %struct.us_data, %struct.us_data* %13, i32 0, i32 3
  store i8* %12, i8** %14, align 8
  %15 = load %struct.us_data*, %struct.us_data** %2, align 8
  %16 = getelementptr inbounds %struct.us_data, %struct.us_data* %15, i32 0, i32 2
  store i32 7, i32* %16, align 8
  br label %37

17:                                               ; preds = %1
  %18 = load %struct.us_data*, %struct.us_data** %2, align 8
  %19 = getelementptr inbounds %struct.us_data, %struct.us_data* %18, i32 0, i32 1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 8
  %20 = load i8*, i8** @usb_stor_CB_transport, align 8
  %21 = load %struct.us_data*, %struct.us_data** %2, align 8
  %22 = getelementptr inbounds %struct.us_data, %struct.us_data* %21, i32 0, i32 4
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @usb_stor_CB_reset, align 8
  %24 = load %struct.us_data*, %struct.us_data** %2, align 8
  %25 = getelementptr inbounds %struct.us_data, %struct.us_data* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load %struct.us_data*, %struct.us_data** %2, align 8
  %27 = getelementptr inbounds %struct.us_data, %struct.us_data* %26, i32 0, i32 2
  store i32 7, i32* %27, align 8
  br label %37

28:                                               ; preds = %1
  %29 = load %struct.us_data*, %struct.us_data** %2, align 8
  %30 = getelementptr inbounds %struct.us_data, %struct.us_data* %29, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %30, align 8
  %31 = load i8*, i8** @usb_stor_Bulk_transport, align 8
  %32 = load %struct.us_data*, %struct.us_data** %2, align 8
  %33 = getelementptr inbounds %struct.us_data, %struct.us_data* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** @usb_stor_Bulk_reset, align 8
  %35 = load %struct.us_data*, %struct.us_data** %2, align 8
  %36 = getelementptr inbounds %struct.us_data, %struct.us_data* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  br label %37

37:                                               ; preds = %1, %28, %17, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
