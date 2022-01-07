; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_gre.c_gre_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_gre.c_gre_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32* }
%struct.gre_protocol = type { i32 (%struct.sk_buff*, i32)* }
%struct.iphdr = type { i32 }

@GREPROTO_MAX = common dso_local global i64 0, align 8
@gre_proto = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32)* @gre_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gre_err(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gre_protocol*, align 8
  %6 = alloca %struct.iphdr*, align 8
  %7 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = bitcast i32* %10 to %struct.iphdr*
  store %struct.iphdr* %11, %struct.iphdr** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.iphdr*, %struct.iphdr** %6, align 8
  %16 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 2
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %14, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 127
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @GREPROTO_MAX, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %52

29:                                               ; preds = %2
  %30 = call i32 (...) @rcu_read_lock()
  %31 = load i32*, i32** @gre_proto, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.gre_protocol* @rcu_dereference(i32 %34)
  store %struct.gre_protocol* %35, %struct.gre_protocol** %5, align 8
  %36 = load %struct.gre_protocol*, %struct.gre_protocol** %5, align 8
  %37 = icmp ne %struct.gre_protocol* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %29
  %39 = load %struct.gre_protocol*, %struct.gre_protocol** %5, align 8
  %40 = getelementptr inbounds %struct.gre_protocol, %struct.gre_protocol* %39, i32 0, i32 0
  %41 = load i32 (%struct.sk_buff*, i32)*, i32 (%struct.sk_buff*, i32)** %40, align 8
  %42 = icmp ne i32 (%struct.sk_buff*, i32)* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.gre_protocol*, %struct.gre_protocol** %5, align 8
  %45 = getelementptr inbounds %struct.gre_protocol, %struct.gre_protocol* %44, i32 0, i32 0
  %46 = load i32 (%struct.sk_buff*, i32)*, i32 (%struct.sk_buff*, i32)** %45, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 %46(%struct.sk_buff* %47, i32 %48)
  br label %50

50:                                               ; preds = %43, %38, %29
  %51 = call i32 (...) @rcu_read_unlock()
  br label %52

52:                                               ; preds = %50, %28
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.gre_protocol* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
