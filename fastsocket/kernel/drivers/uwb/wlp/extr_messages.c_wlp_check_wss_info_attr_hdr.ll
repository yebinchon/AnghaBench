; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_check_wss_info_attr_hdr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_check_wss_info_attr_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.wlp_attr_hdr = type { i32, i32 }

@.str = private unnamed_addr constant [76 x i8] c"WLP: Not enough space in buffer to parse WSS information attribute header.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@WLP_ATTR_WSS_INFO = common dso_local global i64 0, align 8
@ENODATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"WLP: Not enough space in buffer to parse variable data. Got %d, expected %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlp*, %struct.wlp_attr_hdr*, i64)* @wlp_check_wss_info_attr_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlp_check_wss_info_attr_hdr(%struct.wlp* %0, %struct.wlp_attr_hdr* %1, i64 %2) #0 {
  %4 = alloca %struct.wlp*, align 8
  %5 = alloca %struct.wlp_attr_hdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.wlp* %0, %struct.wlp** %4, align 8
  store %struct.wlp_attr_hdr* %1, %struct.wlp_attr_hdr** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.wlp*, %struct.wlp** %4, align 8
  %11 = getelementptr inbounds %struct.wlp, %struct.wlp* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %15, 8
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.device*, %struct.device** %7, align 8
  %19 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %18, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %9, align 4
  br label %54

22:                                               ; preds = %3
  %23 = load %struct.wlp_attr_hdr*, %struct.wlp_attr_hdr** %5, align 8
  %24 = getelementptr inbounds %struct.wlp_attr_hdr, %struct.wlp_attr_hdr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @le16_to_cpu(i32 %25)
  %27 = load i64, i64* @WLP_ATTR_WSS_INFO, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @ENODATA, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %54

32:                                               ; preds = %22
  %33 = load %struct.wlp_attr_hdr*, %struct.wlp_attr_hdr** %5, align 8
  %34 = getelementptr inbounds %struct.wlp_attr_hdr, %struct.wlp_attr_hdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @le16_to_cpu(i32 %35)
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %8, align 8
  %39 = add i64 8, %38
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %32
  %42 = load %struct.device*, %struct.device** %7, align 8
  %43 = load i64, i64* %6, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i64, i64* %8, align 8
  %46 = add i64 8, %45
  %47 = trunc i64 %46 to i32
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %47)
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %9, align 4
  br label %54

51:                                               ; preds = %32
  %52 = load i64, i64* %8, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %51, %41, %29, %17
  %55 = load i32, i32* %9, align 4
  ret i32 %55
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
