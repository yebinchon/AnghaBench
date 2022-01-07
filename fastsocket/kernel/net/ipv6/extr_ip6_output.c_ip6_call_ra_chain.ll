; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_output.c_ip6_call_ra_chain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_ip6_output.c_ip6_call_ra_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_ra_chain = type { i32, %struct.sock*, %struct.ip6_ra_chain* }
%struct.sock = type { i64 }
%struct.sk_buff = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ip6_ra_lock = common dso_local global i32 0, align 4
@ip6_ra_chain = common dso_local global %struct.ip6_ra_chain* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @ip6_call_ra_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_call_ra_chain(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip6_ra_chain*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sock* null, %struct.sock** %7, align 8
  %10 = call i32 @read_lock(i32* @ip6_ra_lock)
  %11 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** @ip6_ra_chain, align 8
  store %struct.ip6_ra_chain* %11, %struct.ip6_ra_chain** %6, align 8
  br label %12

12:                                               ; preds = %59, %2
  %13 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %6, align 8
  %14 = icmp ne %struct.ip6_ra_chain* %13, null
  br i1 %14, label %15, label %63

15:                                               ; preds = %12
  %16 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %6, align 8
  %17 = getelementptr inbounds %struct.ip6_ra_chain, %struct.ip6_ra_chain* %16, i32 0, i32 1
  %18 = load %struct.sock*, %struct.sock** %17, align 8
  store %struct.sock* %18, %struct.sock** %8, align 8
  %19 = load %struct.sock*, %struct.sock** %8, align 8
  %20 = icmp ne %struct.sock* %19, null
  br i1 %20, label %21, label %58

21:                                               ; preds = %15
  %22 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %6, align 8
  %23 = getelementptr inbounds %struct.ip6_ra_chain, %struct.ip6_ra_chain* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %58

27:                                               ; preds = %21
  %28 = load %struct.sock*, %struct.sock** %8, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.sock*, %struct.sock** %8, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %35, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %32, %27
  %43 = load %struct.sock*, %struct.sock** %7, align 8
  %44 = icmp ne %struct.sock* %43, null
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = load i32, i32* @GFP_ATOMIC, align 4
  %48 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %46, i32 %47)
  store %struct.sk_buff* %48, %struct.sk_buff** %9, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %50 = icmp ne %struct.sk_buff* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.sock*, %struct.sock** %7, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %54 = call i32 @rawv6_rcv(%struct.sock* %52, %struct.sk_buff* %53)
  br label %55

55:                                               ; preds = %51, %45
  br label %56

56:                                               ; preds = %55, %42
  %57 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %57, %struct.sock** %7, align 8
  br label %58

58:                                               ; preds = %56, %32, %21, %15
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %6, align 8
  %61 = getelementptr inbounds %struct.ip6_ra_chain, %struct.ip6_ra_chain* %60, i32 0, i32 2
  %62 = load %struct.ip6_ra_chain*, %struct.ip6_ra_chain** %61, align 8
  store %struct.ip6_ra_chain* %62, %struct.ip6_ra_chain** %6, align 8
  br label %12

63:                                               ; preds = %12
  %64 = load %struct.sock*, %struct.sock** %7, align 8
  %65 = icmp ne %struct.sock* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load %struct.sock*, %struct.sock** %7, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = call i32 @rawv6_rcv(%struct.sock* %67, %struct.sk_buff* %68)
  %70 = call i32 @read_unlock(i32* @ip6_ra_lock)
  store i32 1, i32* %3, align 4
  br label %73

71:                                               ; preds = %63
  %72 = call i32 @read_unlock(i32* @ip6_ra_lock)
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %66
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @rawv6_rcv(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
