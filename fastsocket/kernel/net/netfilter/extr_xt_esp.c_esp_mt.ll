; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_esp.c_esp_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_esp.c_esp_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { i64, i32*, i32, %struct.xt_esp* }
%struct.xt_esp = type { i32, i32* }
%struct.ip_esp_hdr = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Dropping evil ESP tinygram.\0A\00", align 1
@XT_ESP_INV_SPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @esp_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_mt(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_match_param*, align 8
  %6 = alloca %struct.ip_esp_hdr*, align 8
  %7 = alloca %struct.ip_esp_hdr, align 4
  %8 = alloca %struct.xt_esp*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %5, align 8
  %9 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %10 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %9, i32 0, i32 3
  %11 = load %struct.xt_esp*, %struct.xt_esp** %10, align 8
  store %struct.xt_esp* %11, %struct.xt_esp** %8, align 8
  %12 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %13 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %20 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.ip_esp_hdr* @skb_header_pointer(%struct.sk_buff* %18, i32 %21, i32 4, %struct.ip_esp_hdr* %7)
  store %struct.ip_esp_hdr* %22, %struct.ip_esp_hdr** %6, align 8
  %23 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %6, align 8
  %24 = icmp eq %struct.ip_esp_hdr* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = call i32 @duprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %28 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32 1, i32* %29, align 4
  store i32 0, i32* %3, align 4
  br label %55

30:                                               ; preds = %17
  %31 = load %struct.xt_esp*, %struct.xt_esp** %8, align 8
  %32 = getelementptr inbounds %struct.xt_esp, %struct.xt_esp* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.xt_esp*, %struct.xt_esp** %8, align 8
  %37 = getelementptr inbounds %struct.xt_esp, %struct.xt_esp* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ip_esp_hdr*, %struct.ip_esp_hdr** %6, align 8
  %42 = getelementptr inbounds %struct.ip_esp_hdr, %struct.ip_esp_hdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ntohl(i32 %43)
  %45 = load %struct.xt_esp*, %struct.xt_esp** %8, align 8
  %46 = getelementptr inbounds %struct.xt_esp, %struct.xt_esp* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @XT_ESP_INV_SPI, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @spi_match(i32 %35, i32 %40, i32 %44, i32 %53)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %30, %25, %16
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.ip_esp_hdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.ip_esp_hdr*) #1

declare dso_local i32 @duprintf(i8*) #1

declare dso_local i32 @spi_match(i32, i32, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
