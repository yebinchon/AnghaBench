; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_icmp.c_icmp_timestamp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_icmp.c_icmp_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.timespec = type { i32, i32 }
%struct.icmp_bxm = type { i32, i64, i64, %struct.sk_buff*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }

@MSEC_PER_SEC = common dso_local global i32 0, align 4
@NSEC_PER_MSEC = common dso_local global i32 0, align 4
@ICMP_TIMESTAMPREPLY = common dso_local global i32 0, align 4
@ICMP_MIB_INERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @icmp_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icmp_timestamp(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.timespec, align 4
  %4 = alloca %struct.icmp_bxm, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %67

10:                                               ; preds = %1
  %11 = call i32 @getnstimeofday(%struct.timespec* %3)
  %12 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = srem i32 %13, 86400
  %15 = load i32, i32* @MSEC_PER_SEC, align 4
  %16 = mul nsw i32 %14, %15
  %17 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NSEC_PER_MSEC, align 4
  %20 = sdiv i32 %18, %19
  %21 = add nsw i32 %16, %20
  %22 = call i32 @htonl(i32 %21)
  %23 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %4, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %22, i32* %26, align 4
  %27 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %4, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %4, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  store i32 %31, i32* %35, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %37 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %4, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = call i64 @skb_copy_bits(%struct.sk_buff* %36, i32 0, i32* %40, i32 4)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %10
  %44 = call i32 (...) @BUG()
  br label %45

45:                                               ; preds = %43, %10
  %46 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %4, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %49 = call %struct.TYPE_6__* @icmp_hdr(%struct.sk_buff* %48)
  %50 = bitcast %struct.TYPE_6__* %47 to i8*
  %51 = bitcast %struct.TYPE_6__* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 16, i1 false)
  %52 = load i32, i32* @ICMP_TIMESTAMPREPLY, align 4
  %53 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %4, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 8
  %56 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %4, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %60 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %4, i32 0, i32 3
  store %struct.sk_buff* %59, %struct.sk_buff** %60, align 8
  %61 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %4, i32 0, i32 2
  store i64 0, i64* %61, align 8
  %62 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %4, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = getelementptr inbounds %struct.icmp_bxm, %struct.icmp_bxm* %4, i32 0, i32 0
  store i32 16, i32* %63, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %65 = call i32 @icmp_reply(%struct.icmp_bxm* %4, %struct.sk_buff* %64)
  br label %66

66:                                               ; preds = %67, %45
  ret void

67:                                               ; preds = %9
  %68 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %69 = call %struct.TYPE_5__* @skb_dst(%struct.sk_buff* %68)
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_net(i32 %71)
  %73 = load i32, i32* @ICMP_MIB_INERRORS, align 4
  %74 = call i32 @ICMP_INC_STATS_BH(i32 %72, i32 %73)
  br label %66
}

declare dso_local i32 @getnstimeofday(%struct.timespec*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, i32*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local %struct.TYPE_6__* @icmp_hdr(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @icmp_reply(%struct.icmp_bxm*, %struct.sk_buff*) #1

declare dso_local i32 @ICMP_INC_STATS_BH(i32, i32) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local %struct.TYPE_5__* @skb_dst(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
