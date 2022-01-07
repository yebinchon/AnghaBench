; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_parse_c3c4_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/wlp/extr_messages.c_wlp_parse_c3c4_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlp = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.sk_buff = type { i64, i8* }
%struct.wlp_uuid = type { i32 }
%struct.uwb_mac_addr = type { i32 }
%struct.wlp_frame_assoc = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"WLP: unable to obtain WSSID attribute from %s message.\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"WLP: unable to obtain WSS tag attribute from %s message.\0A\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"WLP: unable to obtain WSS virtual address attribute from %s message.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlp_parse_c3c4_frame(%struct.wlp* %0, %struct.sk_buff* %1, %struct.wlp_uuid* %2, i32* %3, %struct.uwb_mac_addr* %4) #0 {
  %6 = alloca %struct.wlp*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.wlp_uuid*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.uwb_mac_addr*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.wlp_frame_assoc*, align 8
  store %struct.wlp* %0, %struct.wlp** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.wlp_uuid* %2, %struct.wlp_uuid** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.uwb_mac_addr* %4, %struct.uwb_mac_addr** %10, align 8
  %17 = load %struct.wlp*, %struct.wlp** %6, align 8
  %18 = getelementptr inbounds %struct.wlp, %struct.wlp* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.device* %21, %struct.device** %11, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %13, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %14, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = bitcast i8* %28 to %struct.wlp_frame_assoc*
  store %struct.wlp_frame_assoc* %29, %struct.wlp_frame_assoc** %16, align 8
  store i64 4, i64* %15, align 8
  %30 = load %struct.wlp*, %struct.wlp** %6, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = load i64, i64* %15, align 8
  %33 = getelementptr i8, i8* %31, i64 %32
  %34 = load %struct.wlp_uuid*, %struct.wlp_uuid** %8, align 8
  %35 = load i64, i64* %14, align 8
  %36 = load i64, i64* %15, align 8
  %37 = sub i64 %35, %36
  %38 = call i32 @wlp_get_wssid(%struct.wlp* %30, i8* %33, %struct.wlp_uuid* %34, i64 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %5
  %42 = load %struct.device*, %struct.device** %11, align 8
  %43 = load %struct.wlp_frame_assoc*, %struct.wlp_frame_assoc** %16, align 8
  %44 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @wlp_assoc_frame_str(i32 %45)
  %47 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %95

48:                                               ; preds = %5
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %15, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %15, align 8
  %53 = load %struct.wlp*, %struct.wlp** %6, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = load i64, i64* %15, align 8
  %56 = getelementptr i8, i8* %54, i64 %55
  %57 = load i32*, i32** %9, align 8
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* %15, align 8
  %60 = sub i64 %58, %59
  %61 = call i32 @wlp_get_wss_tag(%struct.wlp* %53, i8* %56, i32* %57, i64 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %48
  %65 = load %struct.device*, %struct.device** %11, align 8
  %66 = load %struct.wlp_frame_assoc*, %struct.wlp_frame_assoc** %16, align 8
  %67 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @wlp_assoc_frame_str(i32 %68)
  %70 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %95

71:                                               ; preds = %48
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %15, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %15, align 8
  %76 = load %struct.wlp*, %struct.wlp** %6, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = load i64, i64* %15, align 8
  %79 = getelementptr i8, i8* %77, i64 %78
  %80 = load %struct.uwb_mac_addr*, %struct.uwb_mac_addr** %10, align 8
  %81 = load i64, i64* %14, align 8
  %82 = load i64, i64* %15, align 8
  %83 = sub i64 %81, %82
  %84 = call i32 @wlp_get_wss_virt(%struct.wlp* %76, i8* %79, %struct.uwb_mac_addr* %80, i64 %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %71
  %88 = load %struct.device*, %struct.device** %11, align 8
  %89 = load %struct.wlp_frame_assoc*, %struct.wlp_frame_assoc** %16, align 8
  %90 = getelementptr inbounds %struct.wlp_frame_assoc, %struct.wlp_frame_assoc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @wlp_assoc_frame_str(i32 %91)
  %93 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  br label %95

94:                                               ; preds = %71
  br label %95

95:                                               ; preds = %94, %87, %64, %41
  %96 = load i32, i32* %12, align 4
  ret i32 %96
}

declare dso_local i32 @wlp_get_wssid(%struct.wlp*, i8*, %struct.wlp_uuid*, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @wlp_assoc_frame_str(i32) #1

declare dso_local i32 @wlp_get_wss_tag(%struct.wlp*, i8*, i32*, i64) #1

declare dso_local i32 @wlp_get_wss_virt(%struct.wlp*, i8*, %struct.uwb_mac_addr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
