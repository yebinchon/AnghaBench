; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_HL.c_hl_tg6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_HL.c_hl_tg6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_target_param = type { %struct.ip6t_HL_info* }
%struct.ip6t_HL_info = type { i32, i32 }
%struct.ipv6hdr = type { i32 }

@NF_DROP = common dso_local global i32 0, align 4
@XT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_target_param*)* @hl_tg6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hl_tg6(%struct.sk_buff* %0, %struct.xt_target_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_target_param*, align 8
  %6 = alloca %struct.ipv6hdr*, align 8
  %7 = alloca %struct.ip6t_HL_info*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_target_param* %1, %struct.xt_target_param** %5, align 8
  %9 = load %struct.xt_target_param*, %struct.xt_target_param** %5, align 8
  %10 = getelementptr inbounds %struct.xt_target_param, %struct.xt_target_param* %9, i32 0, i32 0
  %11 = load %struct.ip6t_HL_info*, %struct.ip6t_HL_info** %10, align 8
  store %struct.ip6t_HL_info* %11, %struct.ip6t_HL_info** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @skb_make_writable(%struct.sk_buff* %12, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @NF_DROP, align 4
  store i32 %19, i32* %3, align 4
  br label %63

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %21)
  store %struct.ipv6hdr* %22, %struct.ipv6hdr** %6, align 8
  %23 = load %struct.ip6t_HL_info*, %struct.ip6t_HL_info** %7, align 8
  %24 = getelementptr inbounds %struct.ip6t_HL_info, %struct.ip6t_HL_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %54 [
    i32 128, label %26
    i32 129, label %30
    i32 130, label %42
  ]

26:                                               ; preds = %20
  %27 = load %struct.ip6t_HL_info*, %struct.ip6t_HL_info** %7, align 8
  %28 = getelementptr inbounds %struct.ip6t_HL_info, %struct.ip6t_HL_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  br label %58

30:                                               ; preds = %20
  %31 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %32 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ip6t_HL_info*, %struct.ip6t_HL_info** %7, align 8
  %35 = getelementptr inbounds %struct.ip6t_HL_info, %struct.ip6t_HL_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp sgt i32 %38, 255
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store i32 255, i32* %8, align 4
  br label %41

41:                                               ; preds = %40, %30
  br label %58

42:                                               ; preds = %20
  %43 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %44 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ip6t_HL_info*, %struct.ip6t_HL_info** %7, align 8
  %47 = getelementptr inbounds %struct.ip6t_HL_info, %struct.ip6t_HL_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %45, %48
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %52, %42
  br label %58

54:                                               ; preds = %20
  %55 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %56 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %54, %53, %41, %26
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.ipv6hdr*, %struct.ipv6hdr** %6, align 8
  %61 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @XT_CONTINUE, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %58, %18
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @skb_make_writable(%struct.sk_buff*, i32) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
