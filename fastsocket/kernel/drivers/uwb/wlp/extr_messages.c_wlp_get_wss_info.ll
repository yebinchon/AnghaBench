; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_get_wss_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_get_wss_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.wlp_attr_wss_info = type { i32 }
%struct.wlp_uuid = type { i32 }
%struct.wlp_wss_tmp_info = type { i32 }
%struct.wlp_attr_hdr = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"WLP: unable to obtain WSSID from WSS info.\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"WLP: unable to obtain WSS information from WSS information attributes. \0A\00", align 1
@.str.2 = private unnamed_addr constant [88 x i8] c"WLP: Amount of data parsed does not match length field. Parsed %zu, length field %zu. \0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.wlp*, %struct.wlp_attr_wss_info*, i64, %struct.wlp_uuid*, %struct.wlp_wss_tmp_info*)* @wlp_get_wss_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wlp_get_wss_info(%struct.wlp* %0, %struct.wlp_attr_wss_info* %1, i64 %2, %struct.wlp_uuid* %3, %struct.wlp_wss_tmp_info* %4) #0 {
  %6 = alloca %struct.wlp*, align 8
  %7 = alloca %struct.wlp_attr_wss_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wlp_uuid*, align 8
  %10 = alloca %struct.wlp_wss_tmp_info*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store %struct.wlp* %0, %struct.wlp** %6, align 8
  store %struct.wlp_attr_wss_info* %1, %struct.wlp_attr_wss_info** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.wlp_uuid* %3, %struct.wlp_uuid** %9, align 8
  store %struct.wlp_wss_tmp_info* %4, %struct.wlp_wss_tmp_info** %10, align 8
  %16 = load %struct.wlp*, %struct.wlp** %6, align 8
  %17 = getelementptr inbounds %struct.wlp, %struct.wlp* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %11, align 8
  store i64 0, i64* %14, align 8
  %21 = load %struct.wlp*, %struct.wlp** %6, align 8
  %22 = load %struct.wlp_attr_wss_info*, %struct.wlp_attr_wss_info** %7, align 8
  %23 = bitcast %struct.wlp_attr_wss_info* %22 to %struct.wlp_attr_hdr*
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @wlp_check_wss_info_attr_hdr(%struct.wlp* %21, %struct.wlp_attr_hdr* %23, i64 %24)
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %12, align 8
  %27 = icmp ult i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  br label %82

29:                                               ; preds = %5
  %30 = load i64, i64* %12, align 8
  store i64 %30, i64* %13, align 8
  store i64 4, i64* %14, align 8
  %31 = load %struct.wlp_attr_wss_info*, %struct.wlp_attr_wss_info** %7, align 8
  %32 = bitcast %struct.wlp_attr_wss_info* %31 to i8*
  store i8* %32, i8** %15, align 8
  %33 = load %struct.wlp*, %struct.wlp** %6, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = load i64, i64* %14, align 8
  %36 = getelementptr i8, i8* %34, i64 %35
  %37 = load %struct.wlp_uuid*, %struct.wlp_uuid** %9, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %14, align 8
  %40 = sub i64 %38, %39
  %41 = call i64 @wlp_get_wssid(%struct.wlp* %33, i8* %36, %struct.wlp_uuid* %37, i64 %40)
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = icmp ult i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %29
  %45 = load %struct.device*, %struct.device** %11, align 8
  %46 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %82

47:                                               ; preds = %29
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %14, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %14, align 8
  %51 = load %struct.wlp*, %struct.wlp** %6, align 8
  %52 = load i8*, i8** %15, align 8
  %53 = load i64, i64* %14, align 8
  %54 = getelementptr i8, i8* %52, i64 %53
  %55 = load %struct.wlp_wss_tmp_info*, %struct.wlp_wss_tmp_info** %10, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %14, align 8
  %58 = sub i64 %56, %57
  %59 = call i64 @wlp_get_wss_info_attrs(%struct.wlp* %51, i8* %54, %struct.wlp_wss_tmp_info* %55, i64 %58)
  store i64 %59, i64* %12, align 8
  %60 = load i64, i64* %12, align 8
  %61 = icmp ult i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %47
  %63 = load %struct.device*, %struct.device** %11, align 8
  %64 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  br label %82

65:                                               ; preds = %47
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* %14, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %14, align 8
  %69 = load i64, i64* %13, align 8
  %70 = add i64 %69, 4
  %71 = load i64, i64* %14, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %65
  %74 = load %struct.device*, %struct.device** %11, align 8
  %75 = load i64, i64* %14, align 8
  %76 = load i64, i64* %13, align 8
  %77 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %74, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0), i64 %75, i64 %76)
  %78 = load i64, i64* @EINVAL, align 8
  %79 = sub i64 0, %78
  store i64 %79, i64* %12, align 8
  br label %82

80:                                               ; preds = %65
  %81 = load i64, i64* %14, align 8
  store i64 %81, i64* %12, align 8
  br label %82

82:                                               ; preds = %80, %73, %62, %44, %28
  %83 = load i64, i64* %12, align 8
  ret i64 %83
}

declare dso_local i64 @wlp_check_wss_info_attr_hdr(%struct.wlp*, %struct.wlp_attr_hdr*, i64) #1

declare dso_local i64 @wlp_get_wssid(%struct.wlp*, i8*, %struct.wlp_uuid*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @wlp_get_wss_info_attrs(%struct.wlp*, i8*, %struct.wlp_wss_tmp_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
