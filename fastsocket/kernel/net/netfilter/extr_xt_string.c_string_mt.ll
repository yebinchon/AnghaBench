; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_string.c_string_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_string.c_string_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { %struct.TYPE_5__*, %struct.xt_string_info* }
%struct.TYPE_5__ = type { i64 }
%struct.xt_string_info = type { i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ts_state = type { i32 }

@XT_STRING_FLAG_INVERT = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @string_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string_mt(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_match_param*, align 8
  %5 = alloca %struct.xt_string_info*, align 8
  %6 = alloca %struct.ts_state, align 4
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %4, align 8
  %8 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %9 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %8, i32 0, i32 1
  %10 = load %struct.xt_string_info*, %struct.xt_string_info** %9, align 8
  store %struct.xt_string_info* %10, %struct.xt_string_info** %5, align 8
  %11 = call i32 @memset(%struct.ts_state* %6, i32 0, i32 4)
  %12 = load %struct.xt_match_param*, %struct.xt_match_param** %4, align 8
  %13 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.xt_string_info*, %struct.xt_string_info** %5, align 8
  %20 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  br label %32

24:                                               ; preds = %2
  %25 = load %struct.xt_string_info*, %struct.xt_string_info** %5, align 8
  %26 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @XT_STRING_FLAG_INVERT, align 4
  %31 = and i32 %29, %30
  br label %32

32:                                               ; preds = %24, %18
  %33 = phi i32 [ %23, %18 ], [ %31, %24 ]
  store i32 %33, i32* %7, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %35 = load %struct.xt_string_info*, %struct.xt_string_info** %5, align 8
  %36 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.xt_string_info*, %struct.xt_string_info** %5, align 8
  %39 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.xt_string_info*, %struct.xt_string_info** %5, align 8
  %42 = getelementptr inbounds %struct.xt_string_info, %struct.xt_string_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @skb_find_text(%struct.sk_buff* %34, i32 %37, i32 %40, i32 %43, %struct.ts_state* %6)
  %45 = load i64, i64* @UINT_MAX, align 8
  %46 = icmp ne i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %7, align 4
  %49 = xor i32 %47, %48
  ret i32 %49
}

declare dso_local i32 @memset(%struct.ts_state*, i32, i32) #1

declare dso_local i64 @skb_find_text(%struct.sk_buff*, i32, i32, i32, %struct.ts_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
