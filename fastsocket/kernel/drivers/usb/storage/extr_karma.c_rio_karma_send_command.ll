; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_karma.c_rio_karma_send_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_karma.c_rio_karma_send_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8*, i32, i32, i64 }
%struct.karma_data = type { i8* }

@rio_karma_send_command.seq = internal global i8 1, align 1
@.str = private unnamed_addr constant [29 x i8] c"karma: sending command %04x\0A\00", align 1
@RIO_SEND_LEN = common dso_local global i32 0, align 4
@RIO_PREFIX = common dso_local global i32 0, align 4
@RIO_PREFIX_LEN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@RIO_RECV_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"karma: sent command %04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"karma: command %04x failed\0A\00", align 1
@USB_STOR_TRANSPORT_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, %struct.us_data*)* @rio_karma_send_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rio_karma_send_command(i8 signext %0, %struct.us_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.karma_data*, align 8
  store i8 %0, i8* %4, align 1
  store %struct.us_data* %1, %struct.us_data** %5, align 8
  %10 = load %struct.us_data*, %struct.us_data** %5, align 8
  %11 = getelementptr inbounds %struct.us_data, %struct.us_data* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.karma_data*
  store %struct.karma_data* %13, %struct.karma_data** %9, align 8
  %14 = load i8, i8* %4, align 1
  %15 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8 signext %14)
  %16 = load %struct.us_data*, %struct.us_data** %5, align 8
  %17 = getelementptr inbounds %struct.us_data, %struct.us_data* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* @RIO_SEND_LEN, align 4
  %20 = call i32 @memset(i8* %18, i32 0, i32 %19)
  %21 = load %struct.us_data*, %struct.us_data** %5, align 8
  %22 = getelementptr inbounds %struct.us_data, %struct.us_data* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = load i32, i32* @RIO_PREFIX, align 4
  %25 = load i32, i32* @RIO_PREFIX_LEN, align 4
  %26 = call i32 @memcpy(i8* %23, i32 %24, i32 %25)
  %27 = load i8, i8* %4, align 1
  %28 = load %struct.us_data*, %struct.us_data** %5, align 8
  %29 = getelementptr inbounds %struct.us_data, %struct.us_data* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 5
  store i8 %27, i8* %31, align 1
  %32 = load i8, i8* @rio_karma_send_command.seq, align 1
  %33 = load %struct.us_data*, %struct.us_data** %5, align 8
  %34 = getelementptr inbounds %struct.us_data, %struct.us_data* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 6
  store i8 %32, i8* %36, align 1
  %37 = load i64, i64* @jiffies, align 8
  %38 = call i64 @msecs_to_jiffies(i32 6000)
  %39 = add i64 %37, %38
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %85, %2
  %41 = load %struct.us_data*, %struct.us_data** %5, align 8
  %42 = load %struct.us_data*, %struct.us_data** %5, align 8
  %43 = getelementptr inbounds %struct.us_data, %struct.us_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.us_data*, %struct.us_data** %5, align 8
  %46 = getelementptr inbounds %struct.us_data, %struct.us_data* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* @RIO_SEND_LEN, align 4
  %49 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %41, i32 %44, i8* %47, i32 %48, i32* %7)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  br label %105

54:                                               ; preds = %40
  %55 = load %struct.us_data*, %struct.us_data** %5, align 8
  %56 = load %struct.us_data*, %struct.us_data** %5, align 8
  %57 = getelementptr inbounds %struct.us_data, %struct.us_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.karma_data*, %struct.karma_data** %9, align 8
  %60 = getelementptr inbounds %struct.karma_data, %struct.karma_data* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* @RIO_RECV_LEN, align 4
  %63 = call i32 @usb_stor_bulk_transfer_buf(%struct.us_data* %55, i32 %58, i8* %61, i32 %62, i32* %7)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  br label %105

68:                                               ; preds = %54
  %69 = load %struct.karma_data*, %struct.karma_data** %9, align 8
  %70 = getelementptr inbounds %struct.karma_data, %struct.karma_data* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 5
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* @rio_karma_send_command.seq, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %95

79:                                               ; preds = %68
  %80 = load i64, i64* @jiffies, align 8
  %81 = load i64, i64* %8, align 8
  %82 = call i64 @time_after(i64 %80, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %105

85:                                               ; preds = %79
  %86 = load %struct.us_data*, %struct.us_data** %5, align 8
  %87 = getelementptr inbounds %struct.us_data, %struct.us_data* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 4
  store i8 -128, i8* %89, align 1
  %90 = load %struct.us_data*, %struct.us_data** %5, align 8
  %91 = getelementptr inbounds %struct.us_data, %struct.us_data* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 5
  store i8 0, i8* %93, align 1
  %94 = call i32 @msleep(i32 50)
  br label %40

95:                                               ; preds = %78
  %96 = load i8, i8* @rio_karma_send_command.seq, align 1
  %97 = add i8 %96, 1
  store i8 %97, i8* @rio_karma_send_command.seq, align 1
  %98 = load i8, i8* @rio_karma_send_command.seq, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  store i8 1, i8* @rio_karma_send_command.seq, align 1
  br label %102

102:                                              ; preds = %101, %95
  %103 = load i8, i8* %4, align 1
  %104 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8 signext %103)
  store i32 0, i32* %3, align 4
  br label %109

105:                                              ; preds = %84, %67, %53
  %106 = load i8, i8* %4, align 1
  %107 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8 signext %106)
  %108 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %105, %102
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @US_DEBUGP(i8*, i8 signext) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @usb_stor_bulk_transfer_buf(%struct.us_data*, i32, i8*, i32, i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
