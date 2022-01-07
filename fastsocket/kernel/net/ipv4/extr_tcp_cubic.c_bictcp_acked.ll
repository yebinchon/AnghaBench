; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_cubic.c_bictcp_acked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_cubic.c_bictcp_acked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.inet_connection_sock = type { i64 }
%struct.tcp_sock = type { i64, i64 }
%struct.bictcp = type { i32, i32, i64 }

@TCP_CA_Open = common dso_local global i64 0, align 8
@ACK_RATIO_SHIFT = common dso_local global i32 0, align 4
@ACK_RATIO_LIMIT = common dso_local global i32 0, align 4
@tcp_time_stamp = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@USEC_PER_MSEC = common dso_local global i64 0, align 8
@hystart = common dso_local global i64 0, align 8
@hystart_low_window = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i64)* @bictcp_acked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bictcp_acked(%struct.sock* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.inet_connection_sock*, align 8
  %8 = alloca %struct.tcp_sock*, align 8
  %9 = alloca %struct.bictcp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %12)
  store %struct.inet_connection_sock* %13, %struct.inet_connection_sock** %7, align 8
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %14)
  store %struct.tcp_sock* %15, %struct.tcp_sock** %8, align 8
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call %struct.bictcp* @inet_csk_ca(%struct.sock* %16)
  store %struct.bictcp* %17, %struct.bictcp** %9, align 8
  %18 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %7, align 8
  %19 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TCP_CA_Open, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %3
  %24 = load %struct.bictcp*, %struct.bictcp** %9, align 8
  %25 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  %27 = load %struct.bictcp*, %struct.bictcp** %9, align 8
  %28 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @ACK_RATIO_SHIFT, align 4
  %31 = ashr i32 %29, %30
  %32 = load i32, i32* %11, align 4
  %33 = sub nsw i32 %32, %31
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @ACK_RATIO_LIMIT, align 4
  %39 = call i32 @min(i32 %37, i32 %38)
  %40 = load %struct.bictcp*, %struct.bictcp** %9, align 8
  %41 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %23, %3
  %43 = load i64, i64* %6, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %100

46:                                               ; preds = %42
  %47 = load i64, i64* @tcp_time_stamp, align 8
  %48 = load %struct.bictcp*, %struct.bictcp** %9, align 8
  %49 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = sub nsw i64 %47, %50
  %52 = load i64, i64* @HZ, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %100

55:                                               ; preds = %46
  %56 = load i64, i64* %6, align 8
  %57 = shl i64 %56, 3
  %58 = load i64, i64* @USEC_PER_MSEC, align 8
  %59 = sdiv i64 %57, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 1, i32* %10, align 4
  br label %64

64:                                               ; preds = %63, %55
  %65 = load %struct.bictcp*, %struct.bictcp** %9, align 8
  %66 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %64
  %70 = load %struct.bictcp*, %struct.bictcp** %9, align 8
  %71 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69, %64
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.bictcp*, %struct.bictcp** %9, align 8
  %78 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %69
  %80 = load i64, i64* @hystart, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %79
  %83 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %84 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %87 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp sle i64 %85, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %82
  %91 = load %struct.tcp_sock*, %struct.tcp_sock** %8, align 8
  %92 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @hystart_low_window, align 8
  %95 = icmp sge i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load %struct.sock*, %struct.sock** %4, align 8
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @hystart_update(%struct.sock* %97, i32 %98)
  br label %100

100:                                              ; preds = %45, %54, %96, %90, %82, %79
  ret void
}

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.bictcp* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @hystart_update(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
