; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_information_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_information_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32 }
%struct.l2cap_cmd_hdr = type { i32 }
%struct.l2cap_info_rsp = type { i8*, i8*, i32 }
%struct.l2cap_info_req = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"type 0x%4.4x\00", align 1
@L2CAP_IT_FEAT_MASK = common dso_local global i64 0, align 8
@l2cap_feat_mask = common dso_local global i32 0, align 4
@L2CAP_IR_SUCCESS = common dso_local global i64 0, align 8
@enable_ertm = common dso_local global i64 0, align 8
@L2CAP_FEAT_ERTM = common dso_local global i32 0, align 4
@L2CAP_FEAT_STREAMING = common dso_local global i32 0, align 4
@L2CAP_FEAT_FCS = common dso_local global i32 0, align 4
@L2CAP_INFO_RSP = common dso_local global i32 0, align 4
@L2CAP_IT_FIXED_CHAN = common dso_local global i64 0, align 8
@l2cap_fixed_chan = common dso_local global i32 0, align 4
@L2CAP_IR_NOTSUPP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, %struct.l2cap_info_rsp*)* @l2cap_information_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_information_req(%struct.l2cap_conn* %0, %struct.l2cap_cmd_hdr* %1, %struct.l2cap_info_rsp* %2) #0 {
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca %struct.l2cap_cmd_hdr*, align 8
  %6 = alloca %struct.l2cap_info_rsp*, align 8
  %7 = alloca %struct.l2cap_info_req*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [8 x %struct.l2cap_info_rsp], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.l2cap_info_rsp*, align 8
  %12 = alloca [12 x %struct.l2cap_info_rsp], align 16
  %13 = alloca %struct.l2cap_info_rsp*, align 8
  %14 = alloca %struct.l2cap_info_rsp, align 8
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %4, align 8
  store %struct.l2cap_cmd_hdr* %1, %struct.l2cap_cmd_hdr** %5, align 8
  store %struct.l2cap_info_rsp* %2, %struct.l2cap_info_rsp** %6, align 8
  %15 = load %struct.l2cap_info_rsp*, %struct.l2cap_info_rsp** %6, align 8
  %16 = bitcast %struct.l2cap_info_rsp* %15 to %struct.l2cap_info_req*
  store %struct.l2cap_info_req* %16, %struct.l2cap_info_req** %7, align 8
  %17 = load %struct.l2cap_info_req*, %struct.l2cap_info_req** %7, align 8
  %18 = getelementptr inbounds %struct.l2cap_info_req, %struct.l2cap_info_req* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @__le16_to_cpu(i32 %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @BT_DBG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @L2CAP_IT_FEAT_MASK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %3
  %27 = load i32, i32* @l2cap_feat_mask, align 4
  store i32 %27, i32* %10, align 4
  %28 = getelementptr inbounds [8 x %struct.l2cap_info_rsp], [8 x %struct.l2cap_info_rsp]* %9, i64 0, i64 0
  store %struct.l2cap_info_rsp* %28, %struct.l2cap_info_rsp** %11, align 8
  %29 = load i64, i64* @L2CAP_IT_FEAT_MASK, align 8
  %30 = call i8* @cpu_to_le16(i64 %29)
  %31 = load %struct.l2cap_info_rsp*, %struct.l2cap_info_rsp** %11, align 8
  %32 = getelementptr inbounds %struct.l2cap_info_rsp, %struct.l2cap_info_rsp* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load i64, i64* @L2CAP_IR_SUCCESS, align 8
  %34 = call i8* @cpu_to_le16(i64 %33)
  %35 = load %struct.l2cap_info_rsp*, %struct.l2cap_info_rsp** %11, align 8
  %36 = getelementptr inbounds %struct.l2cap_info_rsp, %struct.l2cap_info_rsp* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load i64, i64* @enable_ertm, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %26
  %40 = load i32, i32* @L2CAP_FEAT_ERTM, align 4
  %41 = load i32, i32* @L2CAP_FEAT_STREAMING, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @L2CAP_FEAT_FCS, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %10, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %39, %26
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.l2cap_info_rsp*, %struct.l2cap_info_rsp** %11, align 8
  %50 = getelementptr inbounds %struct.l2cap_info_rsp, %struct.l2cap_info_rsp* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @put_unaligned_le32(i32 %48, i32 %51)
  %53 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %54 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %5, align 8
  %55 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @L2CAP_INFO_RSP, align 4
  %58 = getelementptr inbounds [8 x %struct.l2cap_info_rsp], [8 x %struct.l2cap_info_rsp]* %9, i64 0, i64 0
  %59 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %53, i32 %56, i32 %57, i32 192, %struct.l2cap_info_rsp* %58)
  br label %99

60:                                               ; preds = %3
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @L2CAP_IT_FIXED_CHAN, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %85

64:                                               ; preds = %60
  %65 = getelementptr inbounds [12 x %struct.l2cap_info_rsp], [12 x %struct.l2cap_info_rsp]* %12, i64 0, i64 0
  store %struct.l2cap_info_rsp* %65, %struct.l2cap_info_rsp** %13, align 8
  %66 = load i64, i64* @L2CAP_IT_FIXED_CHAN, align 8
  %67 = call i8* @cpu_to_le16(i64 %66)
  %68 = load %struct.l2cap_info_rsp*, %struct.l2cap_info_rsp** %13, align 8
  %69 = getelementptr inbounds %struct.l2cap_info_rsp, %struct.l2cap_info_rsp* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load i64, i64* @L2CAP_IR_SUCCESS, align 8
  %71 = call i8* @cpu_to_le16(i64 %70)
  %72 = load %struct.l2cap_info_rsp*, %struct.l2cap_info_rsp** %13, align 8
  %73 = getelementptr inbounds %struct.l2cap_info_rsp, %struct.l2cap_info_rsp* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = getelementptr inbounds [12 x %struct.l2cap_info_rsp], [12 x %struct.l2cap_info_rsp]* %12, i64 0, i64 0
  %75 = getelementptr inbounds %struct.l2cap_info_rsp, %struct.l2cap_info_rsp* %74, i64 4
  %76 = load i32, i32* @l2cap_fixed_chan, align 4
  %77 = call i32 @memcpy(%struct.l2cap_info_rsp* %75, i32 %76, i32 8)
  %78 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %79 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %5, align 8
  %80 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @L2CAP_INFO_RSP, align 4
  %83 = getelementptr inbounds [12 x %struct.l2cap_info_rsp], [12 x %struct.l2cap_info_rsp]* %12, i64 0, i64 0
  %84 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %78, i32 %81, i32 %82, i32 288, %struct.l2cap_info_rsp* %83)
  br label %98

85:                                               ; preds = %60
  %86 = load i64, i64* %8, align 8
  %87 = call i8* @cpu_to_le16(i64 %86)
  %88 = getelementptr inbounds %struct.l2cap_info_rsp, %struct.l2cap_info_rsp* %14, i32 0, i32 1
  store i8* %87, i8** %88, align 8
  %89 = load i64, i64* @L2CAP_IR_NOTSUPP, align 8
  %90 = call i8* @cpu_to_le16(i64 %89)
  %91 = getelementptr inbounds %struct.l2cap_info_rsp, %struct.l2cap_info_rsp* %14, i32 0, i32 0
  store i8* %90, i8** %91, align 8
  %92 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %93 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %5, align 8
  %94 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @L2CAP_INFO_RSP, align 4
  %97 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %92, i32 %95, i32 %96, i32 24, %struct.l2cap_info_rsp* %14)
  br label %98

98:                                               ; preds = %85, %64
  br label %99

99:                                               ; preds = %98, %47
  ret i32 0
}

declare dso_local i64 @__le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i64) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @put_unaligned_le32(i32, i32) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, %struct.l2cap_info_rsp*) #1

declare dso_local i32 @memcpy(%struct.l2cap_info_rsp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
