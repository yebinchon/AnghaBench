; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6t_mh.c_mh_mt6.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6t_mh.c_mh_mt6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { i64, i32*, i32, %struct.ip6t_mh* }
%struct.ip6t_mh = type { i32, i32* }
%struct.ip6_mh = type { i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Dropping evil MH tinygram.\0A\00", align 1
@IPPROTO_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Dropping invalid MH Payload Proto: %u\0A\00", align 1
@IP6T_MH_INV_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @mh_mt6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mh_mt6(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_match_param*, align 8
  %6 = alloca %struct.ip6_mh, align 8
  %7 = alloca %struct.ip6_mh*, align 8
  %8 = alloca %struct.ip6t_mh*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %5, align 8
  %9 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %10 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %9, i32 0, i32 3
  %11 = load %struct.ip6t_mh*, %struct.ip6t_mh** %10, align 8
  store %struct.ip6t_mh* %11, %struct.ip6t_mh** %8, align 8
  %12 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %13 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %20 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.ip6_mh* @skb_header_pointer(%struct.sk_buff* %18, i32 %21, i32 16, %struct.ip6_mh* %6)
  store %struct.ip6_mh* %22, %struct.ip6_mh** %7, align 8
  %23 = load %struct.ip6_mh*, %struct.ip6_mh** %7, align 8
  %24 = icmp eq %struct.ip6_mh* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = call i32 (i8*, ...) @duprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %28 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32 1, i32* %29, align 4
  store i32 0, i32* %3, align 4
  br label %68

30:                                               ; preds = %17
  %31 = load %struct.ip6_mh*, %struct.ip6_mh** %7, align 8
  %32 = getelementptr inbounds %struct.ip6_mh, %struct.ip6_mh* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IPPROTO_NONE, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.ip6_mh*, %struct.ip6_mh** %7, align 8
  %38 = getelementptr inbounds %struct.ip6_mh, %struct.ip6_mh* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (i8*, ...) @duprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %42 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  store i32 1, i32* %43, align 4
  store i32 0, i32* %3, align 4
  br label %68

44:                                               ; preds = %30
  %45 = load %struct.ip6t_mh*, %struct.ip6t_mh** %8, align 8
  %46 = getelementptr inbounds %struct.ip6t_mh, %struct.ip6t_mh* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ip6t_mh*, %struct.ip6t_mh** %8, align 8
  %51 = getelementptr inbounds %struct.ip6t_mh, %struct.ip6t_mh* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ip6_mh*, %struct.ip6_mh** %7, align 8
  %56 = getelementptr inbounds %struct.ip6_mh, %struct.ip6_mh* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ip6t_mh*, %struct.ip6t_mh** %8, align 8
  %59 = getelementptr inbounds %struct.ip6t_mh, %struct.ip6t_mh* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @IP6T_MH_INV_TYPE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i32 @type_match(i32 %49, i32 %54, i32 %57, i32 %66)
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %44, %36, %25, %16
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.ip6_mh* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.ip6_mh*) #1

declare dso_local i32 @duprintf(i8*, ...) #1

declare dso_local i32 @type_match(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
