; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c___nf_ct_kill_acct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_core.c___nf_ct_kill_acct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (i64)* }
%struct.sk_buff = type { i64 }
%struct.nf_conn_counter = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__nf_ct_kill_acct(%struct.nf_conn* %0, i32 %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nf_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nf_conn_counter*, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %48

13:                                               ; preds = %4
  %14 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %15 = call %struct.nf_conn_counter* @nf_conn_acct_find(%struct.nf_conn* %14)
  store %struct.nf_conn_counter* %15, %struct.nf_conn_counter** %10, align 8
  %16 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %10, align 8
  %17 = icmp ne %struct.nf_conn_counter* %16, null
  br i1 %17, label %18, label %47

18:                                               ; preds = %13
  %19 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %20 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %19, i32 0, i32 1
  %21 = call i32 @spin_lock_bh(i32* %20)
  %22 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %10, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @CTINFO2DIR(i32 %23)
  %25 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %22, i64 %24
  %26 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = call i64 @skb_network_offset(%struct.sk_buff* %32)
  %34 = sub nsw i64 %31, %33
  %35 = load %struct.nf_conn_counter*, %struct.nf_conn_counter** %10, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @CTINFO2DIR(i32 %36)
  %38 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %35, i64 %37
  %39 = getelementptr inbounds %struct.nf_conn_counter, %struct.nf_conn_counter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %34
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 4
  %44 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %45 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %44, i32 0, i32 1
  %46 = call i32 @spin_unlock_bh(i32* %45)
  br label %47

47:                                               ; preds = %18, %13
  br label %48

48:                                               ; preds = %47, %4
  %49 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %50 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %49, i32 0, i32 0
  %51 = call i64 @del_timer(%struct.TYPE_2__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %55 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32 (i64)*, i32 (i64)** %56, align 8
  %58 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %59 = ptrtoint %struct.nf_conn* %58 to i64
  %60 = call i32 %57(i64 %59)
  store i32 1, i32* %5, align 4
  br label %62

61:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %53
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.nf_conn_counter* @nf_conn_acct_find(%struct.nf_conn*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @CTINFO2DIR(i32) #1

declare dso_local i64 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @del_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
