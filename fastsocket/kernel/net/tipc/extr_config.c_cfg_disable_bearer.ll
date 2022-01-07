; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_config.c_cfg_disable_bearer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_config.c_cfg_disable_bearer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@req_tlv_area = common dso_local global i32 0, align 4
@req_tlv_space = common dso_local global i32 0, align 4
@TIPC_TLV_BEARER_NAME = common dso_local global i32 0, align 4
@TIPC_CFG_TLV_ERROR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"unable to disable bearer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* ()* @cfg_disable_bearer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @cfg_disable_bearer() #0 {
  %1 = alloca %struct.sk_buff*, align 8
  %2 = load i32, i32* @req_tlv_area, align 4
  %3 = load i32, i32* @req_tlv_space, align 4
  %4 = load i32, i32* @TIPC_TLV_BEARER_NAME, align 4
  %5 = call i32 @TLV_CHECK(i32 %2, i32 %3, i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i8*, i8** @TIPC_CFG_TLV_ERROR, align 8
  %9 = call %struct.sk_buff* @tipc_cfg_reply_error_string(i8* %8)
  store %struct.sk_buff* %9, %struct.sk_buff** %1, align 8
  br label %20

10:                                               ; preds = %0
  %11 = load i32, i32* @req_tlv_area, align 4
  %12 = call i64 @TLV_DATA(i32 %11)
  %13 = inttoptr i64 %12 to i8*
  %14 = call i64 @tipc_disable_bearer(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = call %struct.sk_buff* @tipc_cfg_reply_error_string(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store %struct.sk_buff* %17, %struct.sk_buff** %1, align 8
  br label %20

18:                                               ; preds = %10
  %19 = call %struct.sk_buff* (...) @tipc_cfg_reply_none()
  store %struct.sk_buff* %19, %struct.sk_buff** %1, align 8
  br label %20

20:                                               ; preds = %18, %16, %7
  %21 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  ret %struct.sk_buff* %21
}

declare dso_local i32 @TLV_CHECK(i32, i32, i32) #1

declare dso_local %struct.sk_buff* @tipc_cfg_reply_error_string(i8*) #1

declare dso_local i64 @tipc_disable_bearer(i8*) #1

declare dso_local i64 @TLV_DATA(i32) #1

declare dso_local %struct.sk_buff* @tipc_cfg_reply_none(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
