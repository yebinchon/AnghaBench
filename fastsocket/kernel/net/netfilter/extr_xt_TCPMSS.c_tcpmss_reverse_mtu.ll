; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_TCPMSS.c_tcpmss_reverse_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_TCPMSS.c_tcpmss_reverse_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.flowi = type { i32, i32 }
%struct.nf_afinfo = type { i32 (%struct.dst_entry**, %struct.flowi.0*)* }
%struct.dst_entry = type opaque
%struct.flowi.0 = type opaque
%struct.rtable = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.dst_entry.1 = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @tcpmss_reverse_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpmss_reverse_mtu(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.flowi, align 4
  %6 = alloca %struct.nf_afinfo*, align 8
  %7 = alloca %struct.rtable*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = bitcast %struct.flowi* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  store %struct.rtable* null, %struct.rtable** %7, align 8
  store i32 -1, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @PF_INET, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = call %struct.TYPE_6__* @ip_hdr(%struct.sk_buff* %14)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.flowi, %struct.flowi* %5, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  br label %25

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = call %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.flowi, %struct.flowi* %5, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %19, %13
  %26 = call i32 (...) @rcu_read_lock()
  %27 = load i32, i32* %4, align 4
  %28 = call %struct.nf_afinfo* @nf_get_afinfo(i32 %27)
  store %struct.nf_afinfo* %28, %struct.nf_afinfo** %6, align 8
  %29 = load %struct.nf_afinfo*, %struct.nf_afinfo** %6, align 8
  %30 = icmp ne %struct.nf_afinfo* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.nf_afinfo*, %struct.nf_afinfo** %6, align 8
  %33 = getelementptr inbounds %struct.nf_afinfo, %struct.nf_afinfo* %32, i32 0, i32 0
  %34 = load i32 (%struct.dst_entry**, %struct.flowi.0*)*, i32 (%struct.dst_entry**, %struct.flowi.0*)** %33, align 8
  %35 = bitcast %struct.rtable** %7 to %struct.dst_entry.1**
  %36 = bitcast %struct.dst_entry.1** %35 to %struct.dst_entry**
  %37 = bitcast %struct.flowi* %5 to %struct.flowi.0*
  %38 = call i32 %34(%struct.dst_entry** %36, %struct.flowi.0* %37)
  br label %39

39:                                               ; preds = %31, %25
  %40 = call i32 (...) @rcu_read_unlock()
  %41 = load %struct.rtable*, %struct.rtable** %7, align 8
  %42 = icmp ne %struct.rtable* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load %struct.rtable*, %struct.rtable** %7, align 8
  %45 = getelementptr inbounds %struct.rtable, %struct.rtable* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = call i32 @dst_mtu(i32* %46)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.rtable*, %struct.rtable** %7, align 8
  %49 = getelementptr inbounds %struct.rtable, %struct.rtable* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = call i32 @dst_release(i32* %50)
  br label %52

52:                                               ; preds = %43, %39
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_6__* @ip_hdr(%struct.sk_buff*) #2

declare dso_local %struct.TYPE_5__* @ipv6_hdr(%struct.sk_buff*) #2

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local %struct.nf_afinfo* @nf_get_afinfo(i32) #2

declare dso_local i32 @rcu_read_unlock(...) #2

declare dso_local i32 @dst_mtu(i32*) #2

declare dso_local i32 @dst_release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
