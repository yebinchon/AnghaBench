; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_proc.c_snmp6_seq_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_proc.c_snmp6_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@snmp6_ipstats_list = common dso_local global i32 0, align 4
@snmp6_icmp6_list = common dso_local global i32 0, align 4
@snmp6_udp6_list = common dso_local global i32 0, align 4
@snmp6_udplite6_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @snmp6_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snmp6_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.net*
  store %struct.net* %9, %struct.net** %5, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = load %struct.net*, %struct.net** %5, align 8
  %12 = getelementptr inbounds %struct.net, %struct.net* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8**
  %16 = load i32, i32* @snmp6_ipstats_list, align 4
  %17 = call i32 @snmp6_seq_show_item(%struct.seq_file* %10, i8** %15, i32 %16)
  %18 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %19 = load %struct.net*, %struct.net** %5, align 8
  %20 = getelementptr inbounds %struct.net, %struct.net* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8**
  %24 = load i32, i32* @snmp6_icmp6_list, align 4
  %25 = call i32 @snmp6_seq_show_item(%struct.seq_file* %18, i8** %23, i32 %24)
  %26 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %27 = load %struct.net*, %struct.net** %5, align 8
  %28 = getelementptr inbounds %struct.net, %struct.net* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8**
  %32 = call i32 @snmp6_seq_show_icmpv6msg(%struct.seq_file* %26, i8** %31)
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = load %struct.net*, %struct.net** %5, align 8
  %35 = getelementptr inbounds %struct.net, %struct.net* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8**
  %39 = load i32, i32* @snmp6_udp6_list, align 4
  %40 = call i32 @snmp6_seq_show_item(%struct.seq_file* %33, i8** %38, i32 %39)
  %41 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %42 = load %struct.net*, %struct.net** %5, align 8
  %43 = getelementptr inbounds %struct.net, %struct.net* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8**
  %47 = load i32, i32* @snmp6_udplite6_list, align 4
  %48 = call i32 @snmp6_seq_show_item(%struct.seq_file* %41, i8** %46, i32 %47)
  ret i32 0
}

declare dso_local i32 @snmp6_seq_show_item(%struct.seq_file*, i8**, i32) #1

declare dso_local i32 @snmp6_seq_show_icmpv6msg(%struct.seq_file*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
