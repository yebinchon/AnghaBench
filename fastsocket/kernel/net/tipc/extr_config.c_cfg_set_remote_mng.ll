; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_config.c_cfg_set_remote_mng.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_config.c_cfg_set_remote_mng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@req_tlv_area = common dso_local global i32 0, align 4
@req_tlv_space = common dso_local global i32 0, align 4
@TIPC_TLV_UNSIGNED = common dso_local global i32 0, align 4
@TIPC_CFG_TLV_ERROR = common dso_local global i32 0, align 4
@tipc_remote_management = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* ()* @cfg_set_remote_mng to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @cfg_set_remote_mng() #0 {
  %1 = alloca %struct.sk_buff*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @req_tlv_area, align 4
  %4 = load i32, i32* @req_tlv_space, align 4
  %5 = load i32, i32* @TIPC_TLV_UNSIGNED, align 4
  %6 = call i32 @TLV_CHECK(i32 %3, i32 %4, i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @TIPC_CFG_TLV_ERROR, align 4
  %10 = call %struct.sk_buff* @tipc_cfg_reply_error_string(i32 %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %1, align 8
  br label %21

11:                                               ; preds = %0
  %12 = load i32, i32* @req_tlv_area, align 4
  %13 = call i64 @TLV_DATA(i32 %12)
  %14 = inttoptr i64 %13 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @ntohl(i32 %15)
  store i64 %16, i64* %2, align 8
  %17 = load i64, i64* %2, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i32
  store i32 %19, i32* @tipc_remote_management, align 4
  %20 = call %struct.sk_buff* (...) @tipc_cfg_reply_none()
  store %struct.sk_buff* %20, %struct.sk_buff** %1, align 8
  br label %21

21:                                               ; preds = %11, %8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  ret %struct.sk_buff* %22
}

declare dso_local i32 @TLV_CHECK(i32, i32, i32) #1

declare dso_local %struct.sk_buff* @tipc_cfg_reply_error_string(i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @TLV_DATA(i32) #1

declare dso_local %struct.sk_buff* @tipc_cfg_reply_none(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
