; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_probe.c_jdccp_sendmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_probe.c_jdccp_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i32 }
%struct.sock = type { i32 }
%struct.msghdr = type { i32 }
%struct.inet_sock = type { i32, i32, i32, i32 }
%struct.ccid3_hc_tx_sock = type { i32, i32, i32, i32, i32, i32, i32 }

@DCCPC_CCID3 = common dso_local global i64 0, align 8
@port = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"%pI4:%u %pI4:%u %d %d %d %d %u %llu %llu %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%pI4:%u %pI4:%u %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.sock*, %struct.msghdr*, i64)* @jdccp_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jdccp_sendmsg(%struct.kiocb* %0, %struct.sock* %1, %struct.msghdr* %2, i64 %3) #0 {
  %5 = alloca %struct.kiocb*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.inet_sock*, align 8
  %10 = alloca %struct.ccid3_hc_tx_sock*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.msghdr* %2, %struct.msghdr** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.sock*, %struct.sock** %6, align 8
  %12 = call %struct.inet_sock* @inet_sk(%struct.sock* %11)
  store %struct.inet_sock* %12, %struct.inet_sock** %9, align 8
  store %struct.ccid3_hc_tx_sock* null, %struct.ccid3_hc_tx_sock** %10, align 8
  %13 = load %struct.sock*, %struct.sock** %6, align 8
  %14 = call i32 @dccp_sk(%struct.sock* %13)
  %15 = call i64 @ccid_get_current_tx_ccid(i32 %14)
  %16 = load i64, i64* @DCCPC_CCID3, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.sock*, %struct.sock** %6, align 8
  %20 = call %struct.ccid3_hc_tx_sock* @ccid3_hc_tx_sk(%struct.sock* %19)
  store %struct.ccid3_hc_tx_sock* %20, %struct.ccid3_hc_tx_sock** %10, align 8
  br label %21

21:                                               ; preds = %18, %4
  %22 = load i64, i64* @port, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %21
  %25 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %26 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @ntohs(i32 %27)
  %29 = load i64, i64* @port, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %33 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @ntohs(i32 %34)
  %36 = load i64, i64* @port, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %95

38:                                               ; preds = %31, %24, %21
  %39 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %10, align 8
  %40 = icmp ne %struct.ccid3_hc_tx_sock* %39, null
  br i1 %40, label %41, label %79

41:                                               ; preds = %38
  %42 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %43 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %42, i32 0, i32 3
  %44 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %45 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @ntohs(i32 %46)
  %48 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %49 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %48, i32 0, i32 1
  %50 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %51 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @ntohs(i32 %52)
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %10, align 8
  %56 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %10, align 8
  %59 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %10, align 8
  %62 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %10, align 8
  %65 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %10, align 8
  %68 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 6
  %71 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %10, align 8
  %72 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %73, 6
  %75 = load %struct.ccid3_hc_tx_sock*, %struct.ccid3_hc_tx_sock** %10, align 8
  %76 = getelementptr inbounds %struct.ccid3_hc_tx_sock, %struct.ccid3_hc_tx_sock* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, i32*, i64, i32*, i64, i64, ...) @printl(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32* %43, i64 %47, i32* %49, i64 %53, i64 %54, i32 %57, i32 %60, i32 %63, i32 %66, i32 %70, i32 %74, i32 %77)
  br label %94

79:                                               ; preds = %38
  %80 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %81 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %80, i32 0, i32 3
  %82 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %83 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @ntohs(i32 %84)
  %86 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %87 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %86, i32 0, i32 1
  %88 = load %struct.inet_sock*, %struct.inet_sock** %9, align 8
  %89 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @ntohs(i32 %90)
  %92 = load i64, i64* %8, align 8
  %93 = call i32 (i8*, i32*, i64, i32*, i64, i64, ...) @printl(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %81, i64 %85, i32* %87, i64 %91, i64 %92)
  br label %94

94:                                               ; preds = %79, %41
  br label %95

95:                                               ; preds = %94, %31
  %96 = call i32 (...) @jprobe_return()
  ret i32 0
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i64 @ccid_get_current_tx_ccid(i32) #1

declare dso_local i32 @dccp_sk(%struct.sock*) #1

declare dso_local %struct.ccid3_hc_tx_sock* @ccid3_hc_tx_sk(%struct.sock*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @printl(i8*, i32*, i64, i32*, i64, i64, ...) #1

declare dso_local i32 @jprobe_return(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
