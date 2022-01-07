; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_pptp.c_pptp_exp_gre.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_pptp.c_pptp_exp_gre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_expect = type { i32, %struct.TYPE_15__, %struct.TYPE_21__, %struct.nf_conn* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_24__ }
%struct.TYPE_14__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nf_ct_pptp_master = type { i32, i32 }
%struct.nf_nat_pptp = type { i32, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.nf_ct_pptp_master }
%struct.TYPE_16__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.nf_nat_pptp }

@IP_CT_DIR_ORIGINAL = common dso_local global i32 0, align 4
@IP_CT_DIR_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_conntrack_expect*, %struct.nf_conntrack_expect*)* @pptp_exp_gre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pptp_exp_gre(%struct.nf_conntrack_expect* %0, %struct.nf_conntrack_expect* %1) #0 {
  %3 = alloca %struct.nf_conntrack_expect*, align 8
  %4 = alloca %struct.nf_conntrack_expect*, align 8
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca %struct.nf_ct_pptp_master*, align 8
  %7 = alloca %struct.nf_nat_pptp*, align 8
  store %struct.nf_conntrack_expect* %0, %struct.nf_conntrack_expect** %3, align 8
  store %struct.nf_conntrack_expect* %1, %struct.nf_conntrack_expect** %4, align 8
  %8 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %9 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %8, i32 0, i32 3
  %10 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  store %struct.nf_conn* %10, %struct.nf_conn** %5, align 8
  %11 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %12 = call %struct.TYPE_17__* @nfct_help(%struct.nf_conn* %11)
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  store %struct.nf_ct_pptp_master* %14, %struct.nf_ct_pptp_master** %6, align 8
  %15 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %16 = call %struct.TYPE_16__* @nfct_nat(%struct.nf_conn* %15)
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  store %struct.nf_nat_pptp* %18, %struct.nf_nat_pptp** %7, align 8
  %19 = load %struct.nf_ct_pptp_master*, %struct.nf_ct_pptp_master** %6, align 8
  %20 = getelementptr inbounds %struct.nf_ct_pptp_master, %struct.nf_ct_pptp_master* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nf_nat_pptp*, %struct.nf_nat_pptp** %7, align 8
  %23 = getelementptr inbounds %struct.nf_nat_pptp, %struct.nf_nat_pptp* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.nf_ct_pptp_master*, %struct.nf_ct_pptp_master** %6, align 8
  %25 = getelementptr inbounds %struct.nf_ct_pptp_master, %struct.nf_ct_pptp_master* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %28 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  %31 = load %struct.nf_nat_pptp*, %struct.nf_nat_pptp** %7, align 8
  %32 = getelementptr inbounds %struct.nf_nat_pptp, %struct.nf_nat_pptp* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %35 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 0
  store i32 %33, i32* %39, align 4
  %40 = load %struct.nf_ct_pptp_master*, %struct.nf_ct_pptp_master** %6, align 8
  %41 = getelementptr inbounds %struct.nf_ct_pptp_master, %struct.nf_ct_pptp_master* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %44 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 0
  store i32 %42, i32* %48, align 4
  %49 = load i32, i32* @IP_CT_DIR_ORIGINAL, align 4
  %50 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %3, align 8
  %51 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.nf_nat_pptp*, %struct.nf_nat_pptp** %7, align 8
  %53 = getelementptr inbounds %struct.nf_nat_pptp, %struct.nf_nat_pptp* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %56 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  store i32 %54, i32* %58, align 4
  %59 = load %struct.nf_nat_pptp*, %struct.nf_nat_pptp** %7, align 8
  %60 = getelementptr inbounds %struct.nf_nat_pptp, %struct.nf_nat_pptp* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %63 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  store i32 %61, i32* %67, align 4
  %68 = load %struct.nf_ct_pptp_master*, %struct.nf_ct_pptp_master** %6, align 8
  %69 = getelementptr inbounds %struct.nf_ct_pptp_master, %struct.nf_ct_pptp_master* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %72 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 0
  store i32 %70, i32* %76, align 4
  %77 = load i32, i32* @IP_CT_DIR_REPLY, align 4
  %78 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %4, align 8
  %79 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  ret void
}

declare dso_local %struct.TYPE_17__* @nfct_help(%struct.nf_conn*) #1

declare dso_local %struct.TYPE_16__* @nfct_nat(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
