; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_transport.c_sctp_transport_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_transport.c_sctp_transport_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_transport = type { i64, i64, i64 }

@SCTP_UNCONFIRMED = common dso_local global i64 0, align 8
@SCTP_PF = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sctp_transport_timeout(%struct.sctp_transport* %0) #0 {
  %2 = alloca %struct.sctp_transport*, align 8
  %3 = alloca i64, align 8
  store %struct.sctp_transport* %0, %struct.sctp_transport** %2, align 8
  %4 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %5 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %8 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i64 @sctp_jitter(i64 %9)
  %11 = add i64 %6, %10
  store i64 %11, i64* %3, align 8
  %12 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %13 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SCTP_UNCONFIRMED, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %1
  %18 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %19 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SCTP_PF, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %25 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %3, align 8
  br label %29

29:                                               ; preds = %23, %17, %1
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %3, align 8
  %33 = load i64, i64* %3, align 8
  ret i64 %33
}

declare dso_local i64 @sctp_jitter(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
