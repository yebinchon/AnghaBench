; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bearer.c_tipc_bearer_get_names.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bearer.c_tipc_bearer_get_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media = type { i32 }
%struct.bearer = type { %struct.TYPE_2__, %struct.media*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@MAX_BEARERS = common dso_local global i32 0, align 4
@TIPC_MAX_BEARER_NAME = common dso_local global i32 0, align 4
@tipc_net_lock = common dso_local global i32 0, align 4
@media_list = common dso_local global %struct.media* null, align 8
@media_count = common dso_local global i32 0, align 4
@tipc_bearers = common dso_local global %struct.bearer* null, align 8
@TIPC_TLV_BEARER_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @tipc_bearer_get_names() #0 {
  %1 = alloca %struct.sk_buff*, align 8
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.media*, align 8
  %4 = alloca %struct.bearer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAX_BEARERS, align 4
  %8 = load i32, i32* @TIPC_MAX_BEARER_NAME, align 4
  %9 = call i32 @TLV_SPACE(i32 %8)
  %10 = mul nsw i32 %7, %9
  %11 = call %struct.sk_buff* @tipc_cfg_reply_alloc(i32 %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %2, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %0
  store %struct.sk_buff* null, %struct.sk_buff** %1, align 8
  br label %69

15:                                               ; preds = %0
  %16 = call i32 @read_lock_bh(i32* @tipc_net_lock)
  store i32 0, i32* %5, align 4
  %17 = load %struct.media*, %struct.media** @media_list, align 8
  store %struct.media* %17, %struct.media** %3, align 8
  br label %18

18:                                               ; preds = %61, %15
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @media_count, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %66

22:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %57, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MAX_BEARERS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %60

27:                                               ; preds = %23
  %28 = load %struct.bearer*, %struct.bearer** @tipc_bearers, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.bearer, %struct.bearer* %28, i64 %30
  store %struct.bearer* %31, %struct.bearer** %4, align 8
  %32 = load %struct.bearer*, %struct.bearer** %4, align 8
  %33 = getelementptr inbounds %struct.bearer, %struct.bearer* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %27
  %37 = load %struct.bearer*, %struct.bearer** %4, align 8
  %38 = getelementptr inbounds %struct.bearer, %struct.bearer* %37, i32 0, i32 1
  %39 = load %struct.media*, %struct.media** %38, align 8
  %40 = load %struct.media*, %struct.media** %3, align 8
  %41 = icmp eq %struct.media* %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %44 = load i32, i32* @TIPC_TLV_BEARER_NAME, align 4
  %45 = load %struct.bearer*, %struct.bearer** %4, align 8
  %46 = getelementptr inbounds %struct.bearer, %struct.bearer* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.bearer*, %struct.bearer** %4, align 8
  %50 = getelementptr inbounds %struct.bearer, %struct.bearer* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @strlen(i32 %52)
  %54 = add nsw i64 %53, 1
  %55 = call i32 @tipc_cfg_append_tlv(%struct.sk_buff* %43, i32 %44, i32 %48, i64 %54)
  br label %56

56:                                               ; preds = %42, %36, %27
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %23

60:                                               ; preds = %23
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  %64 = load %struct.media*, %struct.media** %3, align 8
  %65 = getelementptr inbounds %struct.media, %struct.media* %64, i32 1
  store %struct.media* %65, %struct.media** %3, align 8
  br label %18

66:                                               ; preds = %18
  %67 = call i32 @read_unlock_bh(i32* @tipc_net_lock)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  store %struct.sk_buff* %68, %struct.sk_buff** %1, align 8
  br label %69

69:                                               ; preds = %66, %14
  %70 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  ret %struct.sk_buff* %70
}

declare dso_local %struct.sk_buff* @tipc_cfg_reply_alloc(i32) #1

declare dso_local i32 @TLV_SPACE(i32) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @tipc_cfg_append_tlv(%struct.sk_buff*, i32, i32, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
