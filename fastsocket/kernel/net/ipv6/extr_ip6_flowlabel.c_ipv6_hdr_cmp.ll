; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_flowlabel.c_ipv6_hdr_cmp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_flowlabel.c_ipv6_hdr_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6_opt_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr*)* @ipv6_hdr_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_hdr_cmp(%struct.ipv6_opt_hdr* %0, %struct.ipv6_opt_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipv6_opt_hdr*, align 8
  %5 = alloca %struct.ipv6_opt_hdr*, align 8
  store %struct.ipv6_opt_hdr* %0, %struct.ipv6_opt_hdr** %4, align 8
  store %struct.ipv6_opt_hdr* %1, %struct.ipv6_opt_hdr** %5, align 8
  %6 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %4, align 8
  %7 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %5, align 8
  %8 = icmp eq %struct.ipv6_opt_hdr* %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

10:                                               ; preds = %2
  %11 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %4, align 8
  %12 = icmp eq %struct.ipv6_opt_hdr* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %5, align 8
  %15 = icmp eq %struct.ipv6_opt_hdr* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %10
  store i32 1, i32* %3, align 4
  br label %40

17:                                               ; preds = %13
  %18 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %4, align 8
  %19 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %5, align 8
  %22 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %40

26:                                               ; preds = %17
  %27 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %4, align 8
  %28 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %27, i64 1
  %29 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %5, align 8
  %30 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %29, i64 1
  %31 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %4, align 8
  %32 = getelementptr inbounds %struct.ipv6_opt_hdr, %struct.ipv6_opt_hdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  %35 = shl i32 %34, 3
  %36 = sext i32 %35 to i64
  %37 = sub i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i32 @memcmp(%struct.ipv6_opt_hdr* %28, %struct.ipv6_opt_hdr* %30, i32 %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %26, %25, %16, %9
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @memcmp(%struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
