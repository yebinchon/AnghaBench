; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_standalone.c_nf_nat_local_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_standalone.c_nf_nat_local_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.nf_conn = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@NF_STOLEN = common dso_local global i32 0, align 4
@RTN_UNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, i32 (%struct.sk_buff*)*)* @nf_nat_local_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_nat_local_fn(i32 %0, %struct.sk_buff* %1, %struct.net_device* %2, %struct.net_device* %3, i32 (%struct.sk_buff*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32 (%struct.sk_buff*)*, align 8
  %12 = alloca %struct.nf_conn*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store %struct.net_device* %3, %struct.net_device** %10, align 8
  store i32 (%struct.sk_buff*)* %4, i32 (%struct.sk_buff*)** %11, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 4
  br i1 %20, label %26, label %21

21:                                               ; preds = %5
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = call i32 @ip_hdrlen(%struct.sk_buff* %22)
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 4
  br i1 %25, label %26, label %28

26:                                               ; preds = %21, %5
  %27 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %27, i32* %6, align 4
  br label %86

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = load %struct.net_device*, %struct.net_device** %9, align 8
  %32 = load %struct.net_device*, %struct.net_device** %10, align 8
  %33 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %11, align 8
  %34 = call i32 @nf_nat_fn(i32 %29, %struct.sk_buff* %30, %struct.net_device* %31, %struct.net_device* %32, i32 (%struct.sk_buff*)* %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @NF_DROP, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %84

38:                                               ; preds = %28
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* @NF_STOLEN, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %84

42:                                               ; preds = %38
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %43, i32* %13)
  store %struct.nf_conn* %44, %struct.nf_conn** %12, align 8
  %45 = icmp ne %struct.nf_conn* %44, null
  br i1 %45, label %46, label %84

46:                                               ; preds = %42
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @CTINFO2DIR(i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %50 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %49, i32 0, i32 0
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = load i32, i32* %15, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.nf_conn*, %struct.nf_conn** %12, align 8
  %61 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %60, i32 0, i32 0
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %61, align 8
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %59, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %46
  %76 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %77 = load i32, i32* @RTN_UNSPEC, align 4
  %78 = call i64 @ip_route_me_harder(%struct.sk_buff* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @NF_DROP, align 4
  store i32 %81, i32* %14, align 4
  br label %82

82:                                               ; preds = %80, %75
  br label %83

83:                                               ; preds = %82, %46
  br label %84

84:                                               ; preds = %83, %42, %38, %28
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %84, %26
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @nf_nat_fn(i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, i32 (%struct.sk_buff*)*) #1

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i64 @ip_route_me_harder(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
