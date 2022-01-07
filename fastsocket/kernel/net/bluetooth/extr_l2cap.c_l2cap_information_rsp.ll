; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_information_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_information_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32, i64, i32, i32 }
%struct.l2cap_cmd_hdr = type { i32 }
%struct.l2cap_info_rsp = type { i32, i32, i32 }
%struct.l2cap_info_req = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"type 0x%4.4x result 0x%2.2x\00", align 1
@L2CAP_IT_FEAT_MASK = common dso_local global i64 0, align 8
@L2CAP_FEAT_FIXED_CHAN = common dso_local global i32 0, align 4
@L2CAP_IT_FIXED_CHAN = common dso_local global i64 0, align 8
@L2CAP_INFO_REQ = common dso_local global i32 0, align 4
@L2CAP_INFO_FEAT_MASK_REQ_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32*)* @l2cap_information_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_information_rsp(%struct.l2cap_conn* %0, %struct.l2cap_cmd_hdr* %1, i32* %2) #0 {
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca %struct.l2cap_cmd_hdr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.l2cap_info_rsp*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.l2cap_info_req, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %4, align 8
  store %struct.l2cap_cmd_hdr* %1, %struct.l2cap_cmd_hdr** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = bitcast i32* %11 to %struct.l2cap_info_rsp*
  store %struct.l2cap_info_rsp* %12, %struct.l2cap_info_rsp** %7, align 8
  %13 = load %struct.l2cap_info_rsp*, %struct.l2cap_info_rsp** %7, align 8
  %14 = getelementptr inbounds %struct.l2cap_info_rsp, %struct.l2cap_info_rsp* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @__le16_to_cpu(i32 %15)
  store i64 %16, i64* %8, align 8
  %17 = load %struct.l2cap_info_rsp*, %struct.l2cap_info_rsp** %7, align 8
  %18 = getelementptr inbounds %struct.l2cap_info_rsp, %struct.l2cap_info_rsp* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @__le16_to_cpu(i32 %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @BT_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %21, i64 %22)
  %24 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %25 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %24, i32 0, i32 3
  %26 = call i32 @del_timer(i32* %25)
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @L2CAP_IT_FEAT_MASK, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %68

30:                                               ; preds = %3
  %31 = load %struct.l2cap_info_rsp*, %struct.l2cap_info_rsp** %7, align 8
  %32 = getelementptr inbounds %struct.l2cap_info_rsp, %struct.l2cap_info_rsp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @get_unaligned_le32(i32 %33)
  %35 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %36 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %38 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @L2CAP_FEAT_FIXED_CHAN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %30
  %44 = load i64, i64* @L2CAP_IT_FIXED_CHAN, align 8
  %45 = call i32 @cpu_to_le16(i64 %44)
  %46 = getelementptr inbounds %struct.l2cap_info_req, %struct.l2cap_info_req* %10, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %48 = call i64 @l2cap_get_ident(%struct.l2cap_conn* %47)
  %49 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %50 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %52 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %53 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @L2CAP_INFO_REQ, align 4
  %56 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %51, i64 %54, i32 %55, i32 4, %struct.l2cap_info_req* %10)
  br label %67

57:                                               ; preds = %30
  %58 = load i32, i32* @L2CAP_INFO_FEAT_MASK_REQ_DONE, align 4
  %59 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %60 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %64 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %66 = call i32 @l2cap_conn_start(%struct.l2cap_conn* %65)
  br label %67

67:                                               ; preds = %57, %43
  br label %83

68:                                               ; preds = %3
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @L2CAP_IT_FIXED_CHAN, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load i32, i32* @L2CAP_INFO_FEAT_MASK_REQ_DONE, align 4
  %74 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %75 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %79 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  %80 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %81 = call i32 @l2cap_conn_start(%struct.l2cap_conn* %80)
  br label %82

82:                                               ; preds = %72, %68
  br label %83

83:                                               ; preds = %82, %67
  ret i32 0
}

declare dso_local i64 @__le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i64, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @get_unaligned_le32(i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i64 @l2cap_get_ident(%struct.l2cap_conn*) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i64, i32, i32, %struct.l2cap_info_req*) #1

declare dso_local i32 @l2cap_conn_start(%struct.l2cap_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
