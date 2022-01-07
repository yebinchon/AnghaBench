; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_config.c_cfg_enable_bearer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_config.c_cfg_enable_bearer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tipc_bearer_config = type { i32, i32, i32 }

@req_tlv_area = common dso_local global i32 0, align 4
@req_tlv_space = common dso_local global i32 0, align 4
@TIPC_TLV_BEARER_CONFIG = common dso_local global i32 0, align 4
@TIPC_CFG_TLV_ERROR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"unable to enable bearer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* ()* @cfg_enable_bearer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @cfg_enable_bearer() #0 {
  %1 = alloca %struct.sk_buff*, align 8
  %2 = alloca %struct.tipc_bearer_config*, align 8
  %3 = load i32, i32* @req_tlv_area, align 4
  %4 = load i32, i32* @req_tlv_space, align 4
  %5 = load i32, i32* @TIPC_TLV_BEARER_CONFIG, align 4
  %6 = call i32 @TLV_CHECK(i32 %3, i32 %4, i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load i8*, i8** @TIPC_CFG_TLV_ERROR, align 8
  %10 = call %struct.sk_buff* @tipc_cfg_reply_error_string(i8* %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %1, align 8
  br label %32

11:                                               ; preds = %0
  %12 = load i32, i32* @req_tlv_area, align 4
  %13 = call i64 @TLV_DATA(i32 %12)
  %14 = inttoptr i64 %13 to %struct.tipc_bearer_config*
  store %struct.tipc_bearer_config* %14, %struct.tipc_bearer_config** %2, align 8
  %15 = load %struct.tipc_bearer_config*, %struct.tipc_bearer_config** %2, align 8
  %16 = getelementptr inbounds %struct.tipc_bearer_config, %struct.tipc_bearer_config* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.tipc_bearer_config*, %struct.tipc_bearer_config** %2, align 8
  %19 = getelementptr inbounds %struct.tipc_bearer_config, %struct.tipc_bearer_config* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ntohl(i32 %20)
  %22 = load %struct.tipc_bearer_config*, %struct.tipc_bearer_config** %2, align 8
  %23 = getelementptr inbounds %struct.tipc_bearer_config, %struct.tipc_bearer_config* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ntohl(i32 %24)
  %26 = call i64 @tipc_enable_bearer(i32 %17, i32 %21, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %11
  %29 = call %struct.sk_buff* @tipc_cfg_reply_error_string(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store %struct.sk_buff* %29, %struct.sk_buff** %1, align 8
  br label %32

30:                                               ; preds = %11
  %31 = call %struct.sk_buff* (...) @tipc_cfg_reply_none()
  store %struct.sk_buff* %31, %struct.sk_buff** %1, align 8
  br label %32

32:                                               ; preds = %30, %28, %8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  ret %struct.sk_buff* %33
}

declare dso_local i32 @TLV_CHECK(i32, i32, i32) #1

declare dso_local %struct.sk_buff* @tipc_cfg_reply_error_string(i8*) #1

declare dso_local i64 @TLV_DATA(i32) #1

declare dso_local i64 @tipc_enable_bearer(i32, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.sk_buff* @tipc_cfg_reply_none(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
