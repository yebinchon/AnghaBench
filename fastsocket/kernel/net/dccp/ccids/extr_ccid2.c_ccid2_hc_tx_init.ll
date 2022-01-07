; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid2.c_ccid2_hc_tx_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid2.c_ccid2_hc_tx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccid = type { i32 }
%struct.sock = type { i32 }
%struct.ccid2_hc_tx_sock = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dccp_sock = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@ccid2_hc_tx_rto_expire = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccid*, %struct.sock*)* @ccid2_hc_tx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccid2_hc_tx_init(%struct.ccid* %0, %struct.sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccid*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.ccid2_hc_tx_sock*, align 8
  %7 = alloca %struct.dccp_sock*, align 8
  %8 = alloca i64, align 8
  store %struct.ccid* %0, %struct.ccid** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  %9 = load %struct.ccid*, %struct.ccid** %4, align 8
  %10 = call %struct.ccid2_hc_tx_sock* @ccid_priv(%struct.ccid* %9)
  store %struct.ccid2_hc_tx_sock* %10, %struct.ccid2_hc_tx_sock** %6, align 8
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %11)
  store %struct.dccp_sock* %12, %struct.dccp_sock** %7, align 8
  %13 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %14 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %13, i32 0, i32 0
  store i32 -1, i32* %14, align 4
  %15 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %16 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @rfc3390_bytes_to_packets(i32 %17)
  %19 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %20 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %22 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @DIV_ROUND_UP(i32 %23, i32 2)
  store i64 %24, i64* %8, align 8
  %25 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %26 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %2
  %30 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %31 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29, %2
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %38 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %35, %29
  %40 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %41 = call i64 @ccid2_hc_tx_alloc_seq(%struct.ccid2_hc_tx_sock* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %68

46:                                               ; preds = %39
  %47 = load i32, i32* @HZ, align 4
  %48 = mul nsw i32 3, %47
  %49 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %50 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %52 = call i32 @ccid2_change_srtt(%struct.ccid2_hc_tx_sock* %51, i32 -1)
  %53 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %54 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %53, i32 0, i32 2
  store i32 -1, i32* %54, align 4
  %55 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %56 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %55, i32 0, i32 3
  store i32 -1, i32* %56, align 4
  %57 = load i32, i32* @jiffies, align 4
  %58 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %59 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %61 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %60, i32 0, i32 4
  %62 = load i32, i32* @ccid2_hc_tx_rto_expire, align 4
  %63 = load %struct.sock*, %struct.sock** %5, align 8
  %64 = ptrtoint %struct.sock* %63 to i64
  %65 = call i32 @setup_timer(i32* %61, i32 %62, i64 %64)
  %66 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %6, align 8
  %67 = call i32 @ccid2_hc_tx_check_sanity(%struct.ccid2_hc_tx_sock* %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %46, %43
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.ccid2_hc_tx_sock* @ccid_priv(%struct.ccid*) #1

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @rfc3390_bytes_to_packets(i32) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @ccid2_hc_tx_alloc_seq(%struct.ccid2_hc_tx_sock*) #1

declare dso_local i32 @ccid2_change_srtt(%struct.ccid2_hc_tx_sock*, i32) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @ccid2_hc_tx_check_sanity(%struct.ccid2_hc_tx_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
