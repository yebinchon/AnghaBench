; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_sddr09.c_sddr09_erase.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_sddr09.c_sddr09_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8* }

@.str = private unnamed_addr constant [33 x i8] c"sddr09_erase: erase address %lu\0A\00", align 1
@LUNBITS = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Result for send_control in sddr09_erase %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i64)* @sddr09_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sddr09_erase(%struct.us_data* %0, i64 %1) #0 {
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.us_data*, %struct.us_data** %3, align 8
  %8 = getelementptr inbounds %struct.us_data, %struct.us_data* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @memset(i8* %13, i32 0, i32 12)
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  store i8 -22, i8* %16, align 1
  %17 = load i8, i8* @LUNBITS, align 1
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 %17, i8* %19, align 1
  %20 = load i64, i64* %4, align 8
  %21 = lshr i64 %20, 16
  %22 = call zeroext i8 @MSB_of(i64 %21)
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 6
  store i8 %22, i8* %24, align 1
  %25 = load i64, i64* %4, align 8
  %26 = lshr i64 %25, 16
  %27 = call zeroext i8 @LSB_of(i64 %26)
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 7
  store i8 %27, i8* %29, align 1
  %30 = load i64, i64* %4, align 8
  %31 = and i64 %30, 65535
  %32 = call zeroext i8 @MSB_of(i64 %31)
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 8
  store i8 %32, i8* %34, align 1
  %35 = load i64, i64* %4, align 8
  %36 = and i64 %35, 65535
  %37 = call zeroext i8 @LSB_of(i64 %36)
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 9
  store i8 %37, i8* %39, align 1
  %40 = load %struct.us_data*, %struct.us_data** %3, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @sddr09_send_scsi_command(%struct.us_data* %40, i8* %41, i32 12)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %2
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %45, %2
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @US_DEBUGP(i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local zeroext i8 @MSB_of(i64) #1

declare dso_local zeroext i8 @LSB_of(i64) #1

declare dso_local i32 @sddr09_send_scsi_command(%struct.us_data*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
