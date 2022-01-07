; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_filter.c___load_pointer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_filter.c___load_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8* }

@SKF_NET_OFF = common dso_local global i32 0, align 4
@SKF_LL_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.sk_buff*, i32)* @__load_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__load_pointer(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @SKF_NET_OFF, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i32 @skb_network_header(%struct.sk_buff* %11)
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %12, %13
  %15 = load i32, i32* @SKF_NET_OFF, align 4
  %16 = sub nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %6, align 8
  br label %33

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SKF_LL_OFF, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i32 @skb_mac_header(%struct.sk_buff* %24)
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %25, %26
  %28 = load i32, i32* @SKF_LL_OFF, align 4
  %29 = sub nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %6, align 8
  br label %32

32:                                               ; preds = %23, %19
  br label %33

33:                                               ; preds = %32, %10
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = icmp uge i8* %34, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = call i8* @skb_tail_pointer(%struct.sk_buff* %41)
  %43 = icmp ult i8* %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i8*, i8** %6, align 8
  store i8* %45, i8** %3, align 8
  br label %47

46:                                               ; preds = %39, %33
  store i8* null, i8** %3, align 8
  br label %47

47:                                               ; preds = %46, %44
  %48 = load i8*, i8** %3, align 8
  ret i8* %48
}

declare dso_local i32 @skb_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
