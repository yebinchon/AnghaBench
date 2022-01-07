; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_hash_ipport.c_hash_ipport6_data_equal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_hash_ipport.c_hash_ipport6_data_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_ipport6_elem = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hash_ipport6_elem*, %struct.hash_ipport6_elem*)* @hash_ipport6_data_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_ipport6_data_equal(%struct.hash_ipport6_elem* %0, %struct.hash_ipport6_elem* %1) #0 {
  %3 = alloca %struct.hash_ipport6_elem*, align 8
  %4 = alloca %struct.hash_ipport6_elem*, align 8
  store %struct.hash_ipport6_elem* %0, %struct.hash_ipport6_elem** %3, align 8
  store %struct.hash_ipport6_elem* %1, %struct.hash_ipport6_elem** %4, align 8
  %5 = load %struct.hash_ipport6_elem*, %struct.hash_ipport6_elem** %3, align 8
  %6 = getelementptr inbounds %struct.hash_ipport6_elem, %struct.hash_ipport6_elem* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.hash_ipport6_elem*, %struct.hash_ipport6_elem** %4, align 8
  %9 = getelementptr inbounds %struct.hash_ipport6_elem, %struct.hash_ipport6_elem* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i64 @ipv6_addr_cmp(i32* %7, i32* %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load %struct.hash_ipport6_elem*, %struct.hash_ipport6_elem** %3, align 8
  %15 = getelementptr inbounds %struct.hash_ipport6_elem, %struct.hash_ipport6_elem* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.hash_ipport6_elem*, %struct.hash_ipport6_elem** %4, align 8
  %18 = getelementptr inbounds %struct.hash_ipport6_elem, %struct.hash_ipport6_elem* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  %22 = load %struct.hash_ipport6_elem*, %struct.hash_ipport6_elem** %3, align 8
  %23 = getelementptr inbounds %struct.hash_ipport6_elem, %struct.hash_ipport6_elem* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.hash_ipport6_elem*, %struct.hash_ipport6_elem** %4, align 8
  %26 = getelementptr inbounds %struct.hash_ipport6_elem, %struct.hash_ipport6_elem* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br label %29

29:                                               ; preds = %21, %13, %2
  %30 = phi i1 [ false, %13 ], [ false, %2 ], [ %28, %21 ]
  %31 = zext i1 %30 to i32
  ret i32 %31
}

declare dso_local i64 @ipv6_addr_cmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
