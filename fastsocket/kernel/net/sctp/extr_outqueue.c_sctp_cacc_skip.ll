; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_outqueue.c_sctp_cacc_skip.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_outqueue.c_sctp_cacc_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_transport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_transport*, %struct.sctp_transport*, i32, i32)* @sctp_cacc_skip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_cacc_skip(%struct.sctp_transport* %0, %struct.sctp_transport* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sctp_transport*, align 8
  %7 = alloca %struct.sctp_transport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sctp_transport* %0, %struct.sctp_transport** %6, align 8
  store %struct.sctp_transport* %1, %struct.sctp_transport** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %11 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %4
  %16 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %17 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @sctp_cacc_skip_3_1(%struct.sctp_transport* %16, %struct.sctp_transport* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @sctp_cacc_skip_3_2(%struct.sctp_transport* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %15
  store i32 1, i32* %5, align 4
  br label %28

27:                                               ; preds = %21, %4
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i64 @sctp_cacc_skip_3_1(%struct.sctp_transport*, %struct.sctp_transport*, i32) #1

declare dso_local i64 @sctp_cacc_skip_3_2(%struct.sctp_transport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
