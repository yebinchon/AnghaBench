; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_extract_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_extract_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%struct.nlattr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.in6_addr* (%struct.nlattr*, %struct.nlattr*)* @extract_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.in6_addr* @extract_addr(%struct.nlattr* %0, %struct.nlattr* %1) #0 {
  %3 = alloca %struct.nlattr*, align 8
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  store %struct.nlattr* %0, %struct.nlattr** %3, align 8
  store %struct.nlattr* %1, %struct.nlattr** %4, align 8
  store %struct.in6_addr* null, %struct.in6_addr** %5, align 8
  %6 = load %struct.nlattr*, %struct.nlattr** %3, align 8
  %7 = icmp ne %struct.nlattr* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.nlattr*, %struct.nlattr** %3, align 8
  %10 = call %struct.in6_addr* @nla_data(%struct.nlattr* %9)
  store %struct.in6_addr* %10, %struct.in6_addr** %5, align 8
  br label %11

11:                                               ; preds = %8, %2
  %12 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %13 = icmp ne %struct.nlattr* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %16 = icmp ne %struct.in6_addr* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %19 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %20 = call i64 @nla_memcmp(%struct.nlattr* %18, %struct.in6_addr* %19, i32 4)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store %struct.in6_addr* null, %struct.in6_addr** %5, align 8
  br label %26

23:                                               ; preds = %17, %14
  %24 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %25 = call %struct.in6_addr* @nla_data(%struct.nlattr* %24)
  store %struct.in6_addr* %25, %struct.in6_addr** %5, align 8
  br label %26

26:                                               ; preds = %23, %22
  br label %27

27:                                               ; preds = %26, %11
  %28 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  ret %struct.in6_addr* %28
}

declare dso_local %struct.in6_addr* @nla_data(%struct.nlattr*) #1

declare dso_local i64 @nla_memcmp(%struct.nlattr*, %struct.in6_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
