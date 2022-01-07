; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid2.c_ccid2_hc_tx_rto_expire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid2.c_ccid2_hc_tx_rto_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.ccid2_hc_tx_sock = type { i32, i32, i32, i32, i64, i64, i32, i32, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"RTO_EXPIRE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ccid2_hc_tx_rto_expire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccid2_hc_tx_rto_expire(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.ccid2_hc_tx_sock*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.sock*
  store %struct.sock* %7, %struct.sock** %3, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.ccid2_hc_tx_sock* @ccid2_hc_tx_sk(%struct.sock* %8)
  store %struct.ccid2_hc_tx_sock* %9, %struct.ccid2_hc_tx_sock** %4, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call i32 @bh_lock_sock(%struct.sock* %10)
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call i64 @sock_owned_by_user(%struct.sock* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %4, align 8
  %18 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %17, i32 0, i32 9
  %19 = load i64, i64* @jiffies, align 8
  %20 = load i32, i32* @HZ, align 4
  %21 = sdiv i32 %20, 5
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  %24 = call i32 @sk_reset_timer(%struct.sock* %16, i32* %18, i64 %23)
  br label %82

25:                                               ; preds = %1
  %26 = call i32 @ccid2_pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %4, align 8
  %28 = call i32 @ccid2_hc_tx_check_sanity(%struct.ccid2_hc_tx_sock* %27)
  %29 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %4, align 8
  %30 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %4, align 8
  %34 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @HZ, align 4
  %37 = sdiv i32 %35, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp sgt i64 %39, 60
  br i1 %40, label %41, label %46

41:                                               ; preds = %25
  %42 = load i32, i32* @HZ, align 4
  %43 = mul nsw i32 60, %42
  %44 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %4, align 8
  %45 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %41, %25
  %47 = load %struct.sock*, %struct.sock** %3, align 8
  %48 = call i32 @ccid2_start_rto_timer(%struct.sock* %47)
  %49 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %4, align 8
  %50 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = sdiv i32 %51, 2
  %53 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %4, align 8
  %54 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %4, align 8
  %56 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 2
  br i1 %58, label %59, label %62

59:                                               ; preds = %46
  %60 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %4, align 8
  %61 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %60, i32 0, i32 1
  store i32 2, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %46
  %63 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %4, align 8
  %64 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %63, i32 0, i32 2
  store i32 1, i32* %64, align 8
  %65 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %4, align 8
  %66 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %65, i32 0, i32 8
  store i64 0, i64* %66, align 8
  %67 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %4, align 8
  %68 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %4, align 8
  %71 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %4, align 8
  %73 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %72, i32 0, i32 5
  store i64 0, i64* %73, align 8
  %74 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %4, align 8
  %75 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %74, i32 0, i32 4
  store i64 0, i64* %75, align 8
  %76 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %4, align 8
  %77 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %76, i32 0, i32 3
  store i32 -1, i32* %77, align 4
  %78 = load %struct.sock*, %struct.sock** %3, align 8
  %79 = call i32 @ccid2_change_l_ack_ratio(%struct.sock* %78, i32 1)
  %80 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %4, align 8
  %81 = call i32 @ccid2_hc_tx_check_sanity(%struct.ccid2_hc_tx_sock* %80)
  br label %82

82:                                               ; preds = %62, %15
  %83 = load %struct.sock*, %struct.sock** %3, align 8
  %84 = call i32 @bh_unlock_sock(%struct.sock* %83)
  %85 = load %struct.sock*, %struct.sock** %3, align 8
  %86 = call i32 @sock_put(%struct.sock* %85)
  ret void
}

declare dso_local %struct.ccid2_hc_tx_sock* @ccid2_hc_tx_sk(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_owned_by_user(%struct.sock*) #1

declare dso_local i32 @sk_reset_timer(%struct.sock*, i32*, i64) #1

declare dso_local i32 @ccid2_pr_debug(i8*) #1

declare dso_local i32 @ccid2_hc_tx_check_sanity(%struct.ccid2_hc_tx_sock*) #1

declare dso_local i32 @ccid2_start_rto_timer(%struct.sock*) #1

declare dso_local i32 @ccid2_change_l_ack_ratio(%struct.sock*, i32) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
