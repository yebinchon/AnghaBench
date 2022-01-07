; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_cmd_show_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_cmd_show_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.tlv_desc = type opaque

@TIPC_TLV_LINK_NAME = common dso_local global i32 0, align 4
@TIPC_CFG_TLV_ERROR = common dso_local global i8* null, align 8
@MAX_LINK_STATS_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"link not found\00", align 1
@TIPC_TLV_ULTRA_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @tipc_link_cmd_show_stats(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tlv_desc*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @TIPC_TLV_LINK_NAME, align 4
  %12 = call i32 @TLV_CHECK(i8* %9, i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** @TIPC_CFG_TLV_ERROR, align 8
  %16 = call %struct.sk_buff* @tipc_cfg_reply_error_string(i8* %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %3, align 8
  br label %55

17:                                               ; preds = %2
  %18 = load i32, i32* @MAX_LINK_STATS_INFO, align 4
  %19 = call i32 @TLV_SPACE(i32 %18)
  %20 = call %struct.sk_buff* @tipc_cfg_reply_alloc(i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %6, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %55

24:                                               ; preds = %17
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.tlv_desc*
  store %struct.tlv_desc* %28, %struct.tlv_desc** %7, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @TLV_DATA(i8* %29)
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.tlv_desc*, %struct.tlv_desc** %7, align 8
  %33 = bitcast %struct.tlv_desc* %32 to i8*
  %34 = call i64 @TLV_DATA(i8* %33)
  %35 = inttoptr i64 %34 to i8*
  %36 = load i32, i32* @MAX_LINK_STATS_INFO, align 4
  %37 = call i32 @tipc_link_stats(i8* %31, i8* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %24
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = call i32 @buf_discard(%struct.sk_buff* %41)
  %43 = call %struct.sk_buff* @tipc_cfg_reply_error_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.sk_buff* %43, %struct.sk_buff** %3, align 8
  br label %55

44:                                               ; preds = %24
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @TLV_SPACE(i32 %46)
  %48 = call i32 @skb_put(%struct.sk_buff* %45, i32 %47)
  %49 = load %struct.tlv_desc*, %struct.tlv_desc** %7, align 8
  %50 = bitcast %struct.tlv_desc* %49 to i8*
  %51 = load i32, i32* @TIPC_TLV_ULTRA_STRING, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @TLV_SET(i8* %50, i32 %51, i32* null, i32 %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %54, %struct.sk_buff** %3, align 8
  br label %55

55:                                               ; preds = %44, %40, %23, %14
  %56 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %56
}

declare dso_local i32 @TLV_CHECK(i8*, i32, i32) #1

declare dso_local %struct.sk_buff* @tipc_cfg_reply_error_string(i8*) #1

declare dso_local %struct.sk_buff* @tipc_cfg_reply_alloc(i32) #1

declare dso_local i32 @TLV_SPACE(i32) #1

declare dso_local i32 @tipc_link_stats(i8*, i8*, i32) #1

declare dso_local i64 @TLV_DATA(i8*) #1

declare dso_local i32 @buf_discard(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @TLV_SET(i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
