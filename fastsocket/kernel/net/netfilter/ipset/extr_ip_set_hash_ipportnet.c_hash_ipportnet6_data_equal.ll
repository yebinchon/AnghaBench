; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_hash_ipportnet.c_hash_ipportnet6_data_equal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_hash_ipportnet.c_hash_ipportnet6_data_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_ipportnet6_elem = type { i64, i64, i64, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hash_ipportnet6_elem*, %struct.hash_ipportnet6_elem*)* @hash_ipportnet6_data_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_ipportnet6_data_equal(%struct.hash_ipportnet6_elem* %0, %struct.hash_ipportnet6_elem* %1) #0 {
  %3 = alloca %struct.hash_ipportnet6_elem*, align 8
  %4 = alloca %struct.hash_ipportnet6_elem*, align 8
  store %struct.hash_ipportnet6_elem* %0, %struct.hash_ipportnet6_elem** %3, align 8
  store %struct.hash_ipportnet6_elem* %1, %struct.hash_ipportnet6_elem** %4, align 8
  %5 = load %struct.hash_ipportnet6_elem*, %struct.hash_ipportnet6_elem** %3, align 8
  %6 = getelementptr inbounds %struct.hash_ipportnet6_elem, %struct.hash_ipportnet6_elem* %5, i32 0, i32 4
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.hash_ipportnet6_elem*, %struct.hash_ipportnet6_elem** %4, align 8
  %9 = getelementptr inbounds %struct.hash_ipportnet6_elem, %struct.hash_ipportnet6_elem* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = call i64 @ipv6_addr_cmp(i32* %7, i32* %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %46

13:                                               ; preds = %2
  %14 = load %struct.hash_ipportnet6_elem*, %struct.hash_ipportnet6_elem** %3, align 8
  %15 = getelementptr inbounds %struct.hash_ipportnet6_elem, %struct.hash_ipportnet6_elem* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.hash_ipportnet6_elem*, %struct.hash_ipportnet6_elem** %4, align 8
  %18 = getelementptr inbounds %struct.hash_ipportnet6_elem, %struct.hash_ipportnet6_elem* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i64 @ipv6_addr_cmp(i32* %16, i32* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %13
  %23 = load %struct.hash_ipportnet6_elem*, %struct.hash_ipportnet6_elem** %3, align 8
  %24 = getelementptr inbounds %struct.hash_ipportnet6_elem, %struct.hash_ipportnet6_elem* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.hash_ipportnet6_elem*, %struct.hash_ipportnet6_elem** %4, align 8
  %27 = getelementptr inbounds %struct.hash_ipportnet6_elem, %struct.hash_ipportnet6_elem* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %22
  %31 = load %struct.hash_ipportnet6_elem*, %struct.hash_ipportnet6_elem** %3, align 8
  %32 = getelementptr inbounds %struct.hash_ipportnet6_elem, %struct.hash_ipportnet6_elem* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.hash_ipportnet6_elem*, %struct.hash_ipportnet6_elem** %4, align 8
  %35 = getelementptr inbounds %struct.hash_ipportnet6_elem, %struct.hash_ipportnet6_elem* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load %struct.hash_ipportnet6_elem*, %struct.hash_ipportnet6_elem** %3, align 8
  %40 = getelementptr inbounds %struct.hash_ipportnet6_elem, %struct.hash_ipportnet6_elem* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.hash_ipportnet6_elem*, %struct.hash_ipportnet6_elem** %4, align 8
  %43 = getelementptr inbounds %struct.hash_ipportnet6_elem, %struct.hash_ipportnet6_elem* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br label %46

46:                                               ; preds = %38, %30, %22, %13, %2
  %47 = phi i1 [ false, %30 ], [ false, %22 ], [ false, %13 ], [ false, %2 ], [ %45, %38 ]
  %48 = zext i1 %47 to i32
  ret i32 %48
}

declare dso_local i64 @ipv6_addr_cmp(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
