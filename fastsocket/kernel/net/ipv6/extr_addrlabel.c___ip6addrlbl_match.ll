; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrlabel.c___ip6addrlbl_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrlabel.c___ip6addrlbl_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ip6addrlbl_entry = type { i32, i32, i32, i32 }
%struct.in6_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.ip6addrlbl_entry*, %struct.in6_addr*, i32, i32)* @__ip6addrlbl_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ip6addrlbl_match(%struct.net* %0, %struct.ip6addrlbl_entry* %1, %struct.in6_addr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.ip6addrlbl_entry*, align 8
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.ip6addrlbl_entry* %1, %struct.ip6addrlbl_entry** %8, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load %struct.ip6addrlbl_entry*, %struct.ip6addrlbl_entry** %8, align 8
  %13 = call i32 @ip6addrlbl_net(%struct.ip6addrlbl_entry* %12)
  %14 = load %struct.net*, %struct.net** %7, align 8
  %15 = call i32 @net_eq(i32 %13, %struct.net* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %53

18:                                               ; preds = %5
  %19 = load %struct.ip6addrlbl_entry*, %struct.ip6addrlbl_entry** %8, align 8
  %20 = getelementptr inbounds %struct.ip6addrlbl_entry, %struct.ip6addrlbl_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.ip6addrlbl_entry*, %struct.ip6addrlbl_entry** %8, align 8
  %25 = getelementptr inbounds %struct.ip6addrlbl_entry, %struct.ip6addrlbl_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %53

30:                                               ; preds = %23, %18
  %31 = load %struct.ip6addrlbl_entry*, %struct.ip6addrlbl_entry** %8, align 8
  %32 = getelementptr inbounds %struct.ip6addrlbl_entry, %struct.ip6addrlbl_entry* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.ip6addrlbl_entry*, %struct.ip6addrlbl_entry** %8, align 8
  %37 = getelementptr inbounds %struct.ip6addrlbl_entry, %struct.ip6addrlbl_entry* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %53

42:                                               ; preds = %35, %30
  %43 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %44 = load %struct.ip6addrlbl_entry*, %struct.ip6addrlbl_entry** %8, align 8
  %45 = getelementptr inbounds %struct.ip6addrlbl_entry, %struct.ip6addrlbl_entry* %44, i32 0, i32 3
  %46 = load %struct.ip6addrlbl_entry*, %struct.ip6addrlbl_entry** %8, align 8
  %47 = getelementptr inbounds %struct.ip6addrlbl_entry, %struct.ip6addrlbl_entry* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ipv6_prefix_equal(%struct.in6_addr* %43, i32* %45, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %53

52:                                               ; preds = %42
  store i32 1, i32* %6, align 4
  br label %53

53:                                               ; preds = %52, %51, %41, %29, %17
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @ip6addrlbl_net(%struct.ip6addrlbl_entry*) #1

declare dso_local i32 @ipv6_prefix_equal(%struct.in6_addr*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
