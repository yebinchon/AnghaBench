; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_parse_d1_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_parse_d1_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.sk_buff = type { i64, i8* }
%struct.wlp_uuid = type { i32 }
%struct.wlp_device_info = type { i32 }
%struct.wlp_frame_assoc = type { i32 }

@.str = private unnamed_addr constant [57 x i8] c"WLP: unable to obtain UUID-E attribute from D1 message.\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"WLP: unable to obtain WSS selection method from D1 message.\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"WLP: unable to obtain Device Name from D1 message.\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"WLP: unable to obtain Device Information from D1 message.\0A\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"WLP: unable to obtain WLP Association Error Information from D1 message.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlp*, %struct.sk_buff*, %struct.wlp_uuid*, i32*, %struct.wlp_device_info*, i32*)* @wlp_parse_d1_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlp_parse_d1_frame(%struct.wlp* %0, %struct.sk_buff* %1, %struct.wlp_uuid* %2, i32* %3, %struct.wlp_device_info* %4, i32* %5) #0 {
  %7 = alloca %struct.wlp*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.wlp_uuid*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.wlp_device_info*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.device*, align 8
  %14 = alloca %struct.wlp_frame_assoc*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.wlp* %0, %struct.wlp** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.wlp_uuid* %2, %struct.wlp_uuid** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.wlp_device_info* %4, %struct.wlp_device_info** %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = load %struct.wlp*, %struct.wlp** %7, align 8
  %20 = getelementptr inbounds %struct.wlp, %struct.wlp* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store %struct.device* %23, %struct.device** %13, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast i8* %26 to %struct.wlp_frame_assoc*
  store %struct.wlp_frame_assoc* %27, %struct.wlp_frame_assoc** %14, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %15, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %16, align 8
  store i64 4, i64* %17, align 8
  %34 = load %struct.wlp*, %struct.wlp** %7, align 8
  %35 = load i8*, i8** %15, align 8
  %36 = load i64, i64* %17, align 8
  %37 = getelementptr i8, i8* %35, i64 %36
  %38 = load %struct.wlp_uuid*, %struct.wlp_uuid** %9, align 8
  %39 = load i64, i64* %16, align 8
  %40 = load i64, i64* %17, align 8
  %41 = sub i64 %39, %40
  %42 = call i64 @wlp_get_uuid_e(%struct.wlp* %34, i8* %37, %struct.wlp_uuid* %38, i64 %41)
  store i64 %42, i64* %18, align 8
  %43 = load i64, i64* %18, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %6
  %46 = load %struct.device*, %struct.device** %13, align 8
  %47 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %123

48:                                               ; preds = %6
  %49 = load i64, i64* %18, align 8
  %50 = load i64, i64* %17, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %17, align 8
  %52 = load %struct.wlp*, %struct.wlp** %7, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = load i64, i64* %17, align 8
  %55 = getelementptr i8, i8* %53, i64 %54
  %56 = load i32*, i32** %10, align 8
  %57 = load i64, i64* %16, align 8
  %58 = load i64, i64* %17, align 8
  %59 = sub i64 %57, %58
  %60 = call i64 @wlp_get_wss_sel_mthd(%struct.wlp* %52, i8* %55, i32* %56, i64 %59)
  store i64 %60, i64* %18, align 8
  %61 = load i64, i64* %18, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %48
  %64 = load %struct.device*, %struct.device** %13, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  br label %123

66:                                               ; preds = %48
  %67 = load i64, i64* %18, align 8
  %68 = load i64, i64* %17, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %17, align 8
  %70 = load %struct.wlp*, %struct.wlp** %7, align 8
  %71 = load i8*, i8** %15, align 8
  %72 = load i64, i64* %17, align 8
  %73 = getelementptr i8, i8* %71, i64 %72
  %74 = load %struct.wlp_device_info*, %struct.wlp_device_info** %11, align 8
  %75 = getelementptr inbounds %struct.wlp_device_info, %struct.wlp_device_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* %16, align 8
  %78 = load i64, i64* %17, align 8
  %79 = sub i64 %77, %78
  %80 = call i64 @wlp_get_dev_name(%struct.wlp* %70, i8* %73, i32 %76, i64 %79)
  store i64 %80, i64* %18, align 8
  %81 = load i64, i64* %18, align 8
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %66
  %84 = load %struct.device*, %struct.device** %13, align 8
  %85 = call i32 @dev_err(%struct.device* %84, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %123

86:                                               ; preds = %66
  %87 = load i64, i64* %18, align 8
  %88 = load i64, i64* %17, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %17, align 8
  %90 = load %struct.wlp*, %struct.wlp** %7, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = load i64, i64* %17, align 8
  %93 = getelementptr i8, i8* %91, i64 %92
  %94 = load %struct.wlp_device_info*, %struct.wlp_device_info** %11, align 8
  %95 = load i64, i64* %16, align 8
  %96 = load i64, i64* %17, align 8
  %97 = sub i64 %95, %96
  %98 = call i64 @wlp_get_variable_info(%struct.wlp* %90, i8* %93, %struct.wlp_device_info* %94, i64 %97)
  store i64 %98, i64* %18, align 8
  %99 = load i64, i64* %18, align 8
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %86
  %102 = load %struct.device*, %struct.device** %13, align 8
  %103 = call i32 @dev_err(%struct.device* %102, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  br label %123

104:                                              ; preds = %86
  %105 = load i64, i64* %18, align 8
  %106 = load i64, i64* %17, align 8
  %107 = add i64 %106, %105
  store i64 %107, i64* %17, align 8
  %108 = load %struct.wlp*, %struct.wlp** %7, align 8
  %109 = load i8*, i8** %15, align 8
  %110 = load i64, i64* %17, align 8
  %111 = getelementptr i8, i8* %109, i64 %110
  %112 = load i32*, i32** %12, align 8
  %113 = load i64, i64* %16, align 8
  %114 = load i64, i64* %17, align 8
  %115 = sub i64 %113, %114
  %116 = call i64 @wlp_get_wlp_assc_err(%struct.wlp* %108, i8* %111, i32* %112, i64 %115)
  store i64 %116, i64* %18, align 8
  %117 = load i64, i64* %18, align 8
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %104
  %120 = load %struct.device*, %struct.device** %13, align 8
  %121 = call i32 @dev_err(%struct.device* %120, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0))
  br label %123

122:                                              ; preds = %104
  store i64 0, i64* %18, align 8
  br label %123

123:                                              ; preds = %122, %119, %101, %83, %63, %45
  %124 = load i64, i64* %18, align 8
  %125 = trunc i64 %124 to i32
  ret i32 %125
}

declare dso_local i64 @wlp_get_uuid_e(%struct.wlp*, i8*, %struct.wlp_uuid*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @wlp_get_wss_sel_mthd(%struct.wlp*, i8*, i32*, i64) #1

declare dso_local i64 @wlp_get_dev_name(%struct.wlp*, i8*, i32, i64) #1

declare dso_local i64 @wlp_get_variable_info(%struct.wlp*, i8*, %struct.wlp_device_info*, i64) #1

declare dso_local i64 @wlp_get_wlp_assc_err(%struct.wlp*, i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
