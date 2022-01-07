; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_icmp.c_icmpv6_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_icmp.c_icmpv6_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.inet6_protocol = type { i32 (%struct.sk_buff*, i32*, i32, i32, i32, i32)* }
%struct.ipv6hdr = type { i32 }

@MAX_INET_PROTOS = common dso_local global i32 0, align 4
@inet6_protos = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32, i32, i32)* @icmpv6_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icmpv6_notify(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inet6_protocol*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call i32 @pskb_may_pull(%struct.sk_buff* %13, i32 4)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %80

17:                                               ; preds = %4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ipv6hdr*
  %22 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call i64 @ipv6_ext_hdr(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %17
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = call i32 @ipv6_skip_exthdr(%struct.sk_buff* %28, i32 4, i32* %12)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %80

33:                                               ; preds = %27
  br label %35

34:                                               ; preds = %17
  store i32 4, i32* %10, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 8
  %39 = call i32 @pskb_may_pull(%struct.sk_buff* %36, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %80

42:                                               ; preds = %35
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @MAX_INET_PROTOS, align 4
  %45 = sub nsw i32 %44, 1
  %46 = and i32 %43, %45
  store i32 %46, i32* %11, align 4
  %47 = call i32 (...) @rcu_read_lock()
  %48 = load i32*, i32** @inet6_protos, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.inet6_protocol* @rcu_dereference(i32 %52)
  store %struct.inet6_protocol* %53, %struct.inet6_protocol** %9, align 8
  %54 = load %struct.inet6_protocol*, %struct.inet6_protocol** %9, align 8
  %55 = icmp ne %struct.inet6_protocol* %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %42
  %57 = load %struct.inet6_protocol*, %struct.inet6_protocol** %9, align 8
  %58 = getelementptr inbounds %struct.inet6_protocol, %struct.inet6_protocol* %57, i32 0, i32 0
  %59 = load i32 (%struct.sk_buff*, i32*, i32, i32, i32, i32)*, i32 (%struct.sk_buff*, i32*, i32, i32, i32, i32)** %58, align 8
  %60 = icmp ne i32 (%struct.sk_buff*, i32*, i32, i32, i32, i32)* %59, null
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.inet6_protocol*, %struct.inet6_protocol** %9, align 8
  %63 = getelementptr inbounds %struct.inet6_protocol, %struct.inet6_protocol* %62, i32 0, i32 0
  %64 = load i32 (%struct.sk_buff*, i32*, i32, i32, i32, i32)*, i32 (%struct.sk_buff*, i32*, i32, i32, i32, i32)** %63, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 %64(%struct.sk_buff* %65, i32* null, i32 %66, i32 %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %61, %56, %42
  %72 = call i32 (...) @rcu_read_unlock()
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @raw6_icmp_error(%struct.sk_buff* %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %71, %41, %32, %16
  ret void
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @ipv6_ext_hdr(i32) #1

declare dso_local i32 @ipv6_skip_exthdr(%struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.inet6_protocol* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @raw6_icmp_error(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
