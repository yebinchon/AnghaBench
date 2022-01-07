; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_em_text.c_em_text_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_em_text.c_em_text_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tcf_ematch = type { i32 }
%struct.tcf_pkt_info = type { i32 }
%struct.text_match = type { i32, i64, i32, i64, i32 }
%struct.ts_state = type { i32 }

@UINT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.tcf_ematch*, %struct.tcf_pkt_info*)* @em_text_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_text_match(%struct.sk_buff* %0, %struct.tcf_ematch* %1, %struct.tcf_pkt_info* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tcf_ematch*, align 8
  %6 = alloca %struct.tcf_pkt_info*, align 8
  %7 = alloca %struct.text_match*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ts_state, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.tcf_ematch* %1, %struct.tcf_ematch** %5, align 8
  store %struct.tcf_pkt_info* %2, %struct.tcf_pkt_info** %6, align 8
  %11 = load %struct.tcf_ematch*, %struct.tcf_ematch** %5, align 8
  %12 = call %struct.text_match* @EM_TEXT_PRIV(%struct.tcf_ematch* %11)
  store %struct.text_match* %12, %struct.text_match** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = load %struct.text_match*, %struct.text_match** %7, align 8
  %15 = getelementptr inbounds %struct.text_match, %struct.text_match* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @tcf_get_base_ptr(%struct.sk_buff* %13, i32 %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %17, %20
  store i32 %21, i32* %8, align 4
  %22 = load %struct.text_match*, %struct.text_match** %7, align 8
  %23 = getelementptr inbounds %struct.text_match, %struct.text_match* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load %struct.text_match*, %struct.text_match** %7, align 8
  %31 = getelementptr inbounds %struct.text_match, %struct.text_match* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @tcf_get_base_ptr(%struct.sk_buff* %29, i32 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %33, %36
  store i32 %37, i32* %9, align 4
  %38 = load %struct.text_match*, %struct.text_match** %7, align 8
  %39 = getelementptr inbounds %struct.text_match, %struct.text_match* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %9, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.text_match*, %struct.text_match** %7, align 8
  %49 = getelementptr inbounds %struct.text_match, %struct.text_match* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @skb_find_text(%struct.sk_buff* %45, i32 %46, i32 %47, i32 %50, %struct.ts_state* %10)
  %52 = load i64, i64* @UINT_MAX, align 8
  %53 = icmp ne i64 %51, %52
  %54 = zext i1 %53 to i32
  ret i32 %54
}

declare dso_local %struct.text_match* @EM_TEXT_PRIV(%struct.tcf_ematch*) #1

declare dso_local i32 @tcf_get_base_ptr(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_find_text(%struct.sk_buff*, i32, i32, i32, %struct.ts_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
