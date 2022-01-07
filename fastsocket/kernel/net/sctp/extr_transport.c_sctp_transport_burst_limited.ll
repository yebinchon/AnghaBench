; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_transport.c_sctp_transport_burst_limited.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_transport.c_sctp_transport_burst_limited.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_transport = type { i64, i64, i64, %struct.sctp_association* }
%struct.sctp_association = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_transport_burst_limited(%struct.sctp_transport* %0) #0 {
  %2 = alloca %struct.sctp_transport*, align 8
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.sctp_transport* %0, %struct.sctp_transport** %2, align 8
  %6 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %7 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %6, i32 0, i32 3
  %8 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  store %struct.sctp_association* %8, %struct.sctp_association** %3, align 8
  %9 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %10 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %4, align 8
  %12 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %13 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %40

17:                                               ; preds = %1
  %18 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %19 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %22 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %25 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %20, %28
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %17
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %36 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %39 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %16, %33, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
