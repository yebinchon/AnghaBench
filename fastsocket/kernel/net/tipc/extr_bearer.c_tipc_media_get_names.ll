; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bearer.c_tipc_media_get_names.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bearer.c_tipc_media_get_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media = type { i32 }
%struct.sk_buff = type { i32 }

@MAX_MEDIA = common dso_local global i32 0, align 4
@TIPC_MAX_MEDIA_NAME = common dso_local global i32 0, align 4
@tipc_net_lock = common dso_local global i32 0, align 4
@media_list = common dso_local global %struct.media* null, align 8
@media_count = common dso_local global i32 0, align 4
@TIPC_TLV_MEDIA_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @tipc_media_get_names() #0 {
  %1 = alloca %struct.sk_buff*, align 8
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.media*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @MAX_MEDIA, align 4
  %6 = load i32, i32* @TIPC_MAX_MEDIA_NAME, align 4
  %7 = call i32 @TLV_SPACE(i32 %6)
  %8 = mul nsw i32 %5, %7
  %9 = call %struct.sk_buff* @tipc_cfg_reply_alloc(i32 %8)
  store %struct.sk_buff* %9, %struct.sk_buff** %2, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  store %struct.sk_buff* null, %struct.sk_buff** %1, align 8
  br label %40

13:                                               ; preds = %0
  %14 = call i32 @read_lock_bh(i32* @tipc_net_lock)
  store i32 0, i32* %4, align 4
  %15 = load %struct.media*, %struct.media** @media_list, align 8
  store %struct.media* %15, %struct.media** %3, align 8
  br label %16

16:                                               ; preds = %32, %13
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @media_count, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %22 = load i32, i32* @TIPC_TLV_MEDIA_NAME, align 4
  %23 = load %struct.media*, %struct.media** %3, align 8
  %24 = getelementptr inbounds %struct.media, %struct.media* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.media*, %struct.media** %3, align 8
  %27 = getelementptr inbounds %struct.media, %struct.media* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @strlen(i32 %28)
  %30 = add nsw i64 %29, 1
  %31 = call i32 @tipc_cfg_append_tlv(%struct.sk_buff* %21, i32 %22, i32 %25, i64 %30)
  br label %32

32:                                               ; preds = %20
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  %35 = load %struct.media*, %struct.media** %3, align 8
  %36 = getelementptr inbounds %struct.media, %struct.media* %35, i32 1
  store %struct.media* %36, %struct.media** %3, align 8
  br label %16

37:                                               ; preds = %16
  %38 = call i32 @read_unlock_bh(i32* @tipc_net_lock)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  store %struct.sk_buff* %39, %struct.sk_buff** %1, align 8
  br label %40

40:                                               ; preds = %37, %12
  %41 = load %struct.sk_buff*, %struct.sk_buff** %1, align 8
  ret %struct.sk_buff* %41
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
