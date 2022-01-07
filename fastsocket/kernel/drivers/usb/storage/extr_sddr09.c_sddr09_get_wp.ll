; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_sddr09.c_sddr09_get_wp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_sddr09.c_sddr09_get_wp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }
%struct.sddr09_card_info = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"sddr09_get_wp: read_status fails\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"sddr09_get_wp: status 0x%02X\00", align 1
@SDDR09_WP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c" WP\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" Ready\00", align 1
@LUNBITS = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [11 x i8] c" Suspended\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" Error\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, %struct.sddr09_card_info*)* @sddr09_get_wp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sddr09_get_wp(%struct.us_data* %0, %struct.sddr09_card_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us_data*, align 8
  %5 = alloca %struct.sddr09_card_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.us_data* %0, %struct.us_data** %4, align 8
  store %struct.sddr09_card_info* %1, %struct.sddr09_card_info** %5, align 8
  %8 = load %struct.us_data*, %struct.us_data** %4, align 8
  %9 = call i32 @sddr09_read_status(%struct.us_data* %8, i8* %7)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %55

15:                                               ; preds = %2
  %16 = load i8, i8* %7, align 1
  %17 = zext i8 %16 to i32
  %18 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i8, i8* %7, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, 128
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %15
  %24 = load i32, i32* @SDDR09_WP, align 4
  %25 = load %struct.sddr09_card_info*, %struct.sddr09_card_info** %5, align 8
  %26 = getelementptr inbounds %struct.sddr09_card_info, %struct.sddr09_card_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %23, %15
  %31 = load i8, i8* %7, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 64
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i8, i8* %7, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @LUNBITS, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %37
  %47 = load i8, i8* %7, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %46
  %54 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %12
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @sddr09_read_status(%struct.us_data*, i8*) #1

declare dso_local i32 @US_DEBUGP(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
