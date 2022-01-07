; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid2.c_ccid2_hc_tx_packet_sent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid2.c_ccid2_hc_tx_packet_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dccp_sock = type { i32, i64 }
%struct.ccid2_hc_tx_sock = type { i32, i32, %struct.ccid2_seq*, %struct.ccid2_seq*, i32, i64, i32 }
%struct.ccid2_seq = type { %struct.ccid2_seq*, i32, i64, i64 }

@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"packet history - out of memory!\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"cwnd=%d pipe=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i32)* @ccid2_hc_tx_packet_sent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccid2_hc_tx_packet_sent(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dccp_sock*, align 8
  %8 = alloca %struct.ccid2_hc_tx_sock*, align 8
  %9 = alloca %struct.ccid2_seq*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %10)
  store %struct.dccp_sock* %11, %struct.dccp_sock** %7, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call %struct.ccid2_hc_tx_sock* @ccid2_hc_tx_sk(%struct.sock* %12)
  store %struct.ccid2_hc_tx_sock* %13, %struct.ccid2_hc_tx_sock** %8, align 8
  %14 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %8, align 8
  %15 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = load %struct.dccp_sock*, %struct.dccp_sock** %7, align 8
  %19 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %8, align 8
  %22 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %21, i32 0, i32 2
  %23 = load %struct.ccid2_seq*, %struct.ccid2_seq** %22, align 8
  %24 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %23, i32 0, i32 3
  store i64 %20, i64* %24, align 8
  %25 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %8, align 8
  %26 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %25, i32 0, i32 2
  %27 = load %struct.ccid2_seq*, %struct.ccid2_seq** %26, align 8
  %28 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @jiffies, align 4
  %30 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %8, align 8
  %31 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %30, i32 0, i32 2
  %32 = load %struct.ccid2_seq*, %struct.ccid2_seq** %31, align 8
  %33 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 8
  %34 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %8, align 8
  %35 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %34, i32 0, i32 2
  %36 = load %struct.ccid2_seq*, %struct.ccid2_seq** %35, align 8
  %37 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %36, i32 0, i32 0
  %38 = load %struct.ccid2_seq*, %struct.ccid2_seq** %37, align 8
  store %struct.ccid2_seq* %38, %struct.ccid2_seq** %9, align 8
  %39 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  %40 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %8, align 8
  %41 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %40, i32 0, i32 3
  %42 = load %struct.ccid2_seq*, %struct.ccid2_seq** %41, align 8
  %43 = icmp eq %struct.ccid2_seq* %39, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %3
  %45 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %8, align 8
  %46 = call i64 @ccid2_hc_tx_alloc_seq(%struct.ccid2_hc_tx_sock* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 @DCCP_CRIT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %81

50:                                               ; preds = %44
  %51 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %8, align 8
  %52 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %51, i32 0, i32 2
  %53 = load %struct.ccid2_seq*, %struct.ccid2_seq** %52, align 8
  %54 = getelementptr inbounds %struct.ccid2_seq, %struct.ccid2_seq* %53, i32 0, i32 0
  %55 = load %struct.ccid2_seq*, %struct.ccid2_seq** %54, align 8
  store %struct.ccid2_seq* %55, %struct.ccid2_seq** %9, align 8
  %56 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  %57 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %8, align 8
  %58 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %57, i32 0, i32 3
  %59 = load %struct.ccid2_seq*, %struct.ccid2_seq** %58, align 8
  %60 = icmp eq %struct.ccid2_seq* %56, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUG_ON(i32 %61)
  br label %63

63:                                               ; preds = %50, %3
  %64 = load %struct.ccid2_seq*, %struct.ccid2_seq** %9, align 8
  %65 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %8, align 8
  %66 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %65, i32 0, i32 2
  store %struct.ccid2_seq* %64, %struct.ccid2_seq** %66, align 8
  %67 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %8, align 8
  %68 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %8, align 8
  %71 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i8*, ...) @ccid2_pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %72)
  %74 = load %struct.ccid2_hc_tx_sock*, %struct.ccid2_hc_tx_sock** %8, align 8
  %75 = getelementptr inbounds %struct.ccid2_hc_tx_sock, %struct.ccid2_hc_tx_sock* %74, i32 0, i32 4
  %76 = call i32 @timer_pending(i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %63
  %79 = load %struct.sock*, %struct.sock** %4, align 8
  %80 = call i32 @ccid2_start_rto_timer(%struct.sock* %79)
  br label %81

81:                                               ; preds = %48, %78, %63
  ret void
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.ccid2_hc_tx_sock* @ccid2_hc_tx_sk(%struct.sock*) #1

declare dso_local i64 @ccid2_hc_tx_alloc_seq(%struct.ccid2_hc_tx_sock*) #1

declare dso_local i32 @DCCP_CRIT(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ccid2_pr_debug(i8*, ...) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @ccid2_start_rto_timer(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
