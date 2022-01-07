; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_gre.c_gre_cisco_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_gre.c_gre_cisco_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tnl_ptk_info = type { i32 }
%struct.gre_cisco_protocol = type { i32 (%struct.sk_buff*, %struct.tnl_ptk_info*)* }

@GRE_IP_PROTO_MAX = common dso_local global i32 0, align 4
@gre_cisco_proto_list = common dso_local global i32* null, align 8
@PACKET_RCVD = common dso_local global i32 0, align 4
@ICMP_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMP_PORT_UNREACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @gre_cisco_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gre_cisco_rcv(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.tnl_ptk_info, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gre_cisco_protocol*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = call i64 @parse_gre_header(%struct.sk_buff* %9, %struct.tnl_ptk_info* %4, i32* %6)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %50

13:                                               ; preds = %1
  %14 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %41, %13
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @GRE_IP_PROTO_MAX, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = load i32*, i32** @gre_cisco_proto_list, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.gre_cisco_protocol* @rcu_dereference(i32 %24)
  store %struct.gre_cisco_protocol* %25, %struct.gre_cisco_protocol** %7, align 8
  %26 = load %struct.gre_cisco_protocol*, %struct.gre_cisco_protocol** %7, align 8
  %27 = icmp ne %struct.gre_cisco_protocol* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  br label %41

29:                                               ; preds = %19
  %30 = load %struct.gre_cisco_protocol*, %struct.gre_cisco_protocol** %7, align 8
  %31 = getelementptr inbounds %struct.gre_cisco_protocol, %struct.gre_cisco_protocol* %30, i32 0, i32 0
  %32 = load i32 (%struct.sk_buff*, %struct.tnl_ptk_info*)*, i32 (%struct.sk_buff*, %struct.tnl_ptk_info*)** %31, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = call i32 %32(%struct.sk_buff* %33, %struct.tnl_ptk_info* %4)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @PACKET_RCVD, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %2, align 4
  br label %53

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %28
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %15

44:                                               ; preds = %15
  %45 = call i32 (...) @rcu_read_unlock()
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  %48 = load i32, i32* @ICMP_PORT_UNREACH, align 4
  %49 = call i32 @icmp_send(%struct.sk_buff* %46, i32 %47, i32 %48, i32 0)
  br label %50

50:                                               ; preds = %44, %12
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %52 = call i32 @kfree_skb(%struct.sk_buff* %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %50, %38
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @parse_gre_header(%struct.sk_buff*, %struct.tnl_ptk_info*, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.gre_cisco_protocol* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @icmp_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
