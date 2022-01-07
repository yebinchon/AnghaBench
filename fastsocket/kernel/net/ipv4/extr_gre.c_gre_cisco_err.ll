; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_gre.c_gre_cisco_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_gre.c_gre_cisco_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tnl_ptk_info = type { i32 }
%struct.gre_cisco_protocol = type { i64 (%struct.sk_buff*, i32, %struct.tnl_ptk_info*)* }

@GRE_IP_PROTO_MAX = common dso_local global i32 0, align 4
@gre_cisco_proto_list = common dso_local global i32* null, align 8
@PACKET_RCVD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32)* @gre_cisco_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gre_cisco_err(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tnl_ptk_info, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gre_cisco_protocol*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = call i64 @parse_gre_header(%struct.sk_buff* %9, %struct.tnl_ptk_info* %5, i32* %6)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  br label %50

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %16, %2
  %18 = call i32 (...) @rcu_read_lock()
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %44, %17
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @GRE_IP_PROTO_MAX, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %47

23:                                               ; preds = %19
  %24 = load i32*, i32** @gre_cisco_proto_list, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.gre_cisco_protocol* @rcu_dereference(i32 %28)
  store %struct.gre_cisco_protocol* %29, %struct.gre_cisco_protocol** %8, align 8
  %30 = load %struct.gre_cisco_protocol*, %struct.gre_cisco_protocol** %8, align 8
  %31 = icmp ne %struct.gre_cisco_protocol* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  br label %44

33:                                               ; preds = %23
  %34 = load %struct.gre_cisco_protocol*, %struct.gre_cisco_protocol** %8, align 8
  %35 = getelementptr inbounds %struct.gre_cisco_protocol, %struct.gre_cisco_protocol* %34, i32 0, i32 0
  %36 = load i64 (%struct.sk_buff*, i32, %struct.tnl_ptk_info*)*, i64 (%struct.sk_buff*, i32, %struct.tnl_ptk_info*)** %35, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i64 %36(%struct.sk_buff* %37, i32 %38, %struct.tnl_ptk_info* %5)
  %40 = load i64, i64* @PACKET_RCVD, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %48

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %32
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %19

47:                                               ; preds = %19
  br label %48

48:                                               ; preds = %47, %42
  %49 = call i32 (...) @rcu_read_unlock()
  br label %50

50:                                               ; preds = %48, %15
  ret void
}

declare dso_local i64 @parse_gre_header(%struct.sk_buff*, %struct.tnl_ptk_info*, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.gre_cisco_protocol* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
