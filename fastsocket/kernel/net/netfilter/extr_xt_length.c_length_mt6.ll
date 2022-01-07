; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_length.c_length_mt6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_length.c_length_mt6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { %struct.xt_length_info* }
%struct.xt_length_info = type { i64, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @length_mt6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @length_mt6(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_match_param*, align 8
  %5 = alloca %struct.xt_length_info*, align 8
  %6 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %4, align 8
  %7 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %8 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %7, i32 0, i32 0
  %9 = load %struct.xt_length_info*, %struct.xt_length_info** %8, align 8
  store %struct.xt_length_info* %9, %struct.xt_length_info** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = call %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @ntohs(i32 %13)
  %15 = add i64 %14, 4
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.xt_length_info*, %struct.xt_length_info** %5, align 8
  %18 = getelementptr inbounds %struct.xt_length_info, %struct.xt_length_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %16, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.xt_length_info*, %struct.xt_length_info** %5, align 8
  %24 = getelementptr inbounds %struct.xt_length_info, %struct.xt_length_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sle i64 %22, %25
  br label %27

27:                                               ; preds = %21, %2
  %28 = phi i1 [ false, %2 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  %30 = load %struct.xt_length_info*, %struct.xt_length_info** %5, align 8
  %31 = getelementptr inbounds %struct.xt_length_info, %struct.xt_length_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = xor i32 %29, %32
  ret i32 %33
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local %struct.TYPE_2__* @ipv6_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
