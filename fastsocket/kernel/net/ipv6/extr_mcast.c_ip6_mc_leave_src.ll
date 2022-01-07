; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_ip6_mc_leave_src.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_mcast.c_ip6_mc_leave_src.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ipv6_mc_socklist = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32 }
%struct.inet6_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.ipv6_mc_socklist*, %struct.inet6_dev*)* @ip6_mc_leave_src to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_mc_leave_src(%struct.sock* %0, %struct.ipv6_mc_socklist* %1, %struct.inet6_dev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.ipv6_mc_socklist*, align 8
  %7 = alloca %struct.inet6_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.ipv6_mc_socklist* %1, %struct.ipv6_mc_socklist** %6, align 8
  store %struct.inet6_dev* %2, %struct.inet6_dev** %7, align 8
  %9 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %6, align 8
  %10 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %3
  %14 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %15 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %6, align 8
  %16 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %15, i32 0, i32 2
  %17 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %6, align 8
  %18 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ip6_mc_del_src(%struct.inet6_dev* %14, i32* %16, i32 %19, i32 0, i32* null, i32 0)
  store i32 %20, i32* %4, align 4
  br label %53

21:                                               ; preds = %3
  %22 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %23 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %6, align 8
  %24 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %23, i32 0, i32 2
  %25 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %6, align 8
  %26 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %6, align 8
  %29 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %6, align 8
  %34 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @ip6_mc_del_src(%struct.inet6_dev* %22, i32* %24, i32 %27, i32 %32, i32* %37, i32 0)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.sock*, %struct.sock** %5, align 8
  %40 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %6, align 8
  %41 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %6, align 8
  %44 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @IP6_SFLSIZE(i32 %47)
  %49 = call i32 @sock_kfree_s(%struct.sock* %39, %struct.TYPE_2__* %42, i32 %48)
  %50 = load %struct.ipv6_mc_socklist*, %struct.ipv6_mc_socklist** %6, align 8
  %51 = getelementptr inbounds %struct.ipv6_mc_socklist, %struct.ipv6_mc_socklist* %50, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %51, align 8
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %21, %13
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @ip6_mc_del_src(%struct.inet6_dev*, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @sock_kfree_s(%struct.sock*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @IP6_SFLSIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
