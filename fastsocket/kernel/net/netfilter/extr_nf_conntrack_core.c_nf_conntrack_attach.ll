; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c_nf_conntrack_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32* }
%struct.nf_conn = type { i32 }

@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@IP_CT_RELATED = common dso_local global i32 0, align 4
@IP_CT_IS_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.sk_buff*)* @nf_conntrack_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nf_conntrack_attach(%struct.sk_buff* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %7, i32* %6)
  store %struct.nf_conn* %8, %struct.nf_conn** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i64 @CTINFO2DIR(i32 %9)
  %11 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @IP_CT_RELATED, align 4
  %15 = load i32, i32* @IP_CT_IS_REPLY, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %6, align 4
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @IP_CT_RELATED, align 4
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %17, %13
  %20 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %21 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %20, i32 0, i32 0
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  store i32* %21, i32** %23, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @nf_conntrack_get(i32* %29)
  ret void
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local i64 @CTINFO2DIR(i32) #1

declare dso_local i32 @nf_conntrack_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
