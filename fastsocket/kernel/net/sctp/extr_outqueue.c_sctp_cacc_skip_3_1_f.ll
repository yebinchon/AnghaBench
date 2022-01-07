; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_outqueue.c_sctp_cacc_skip_3_1_f.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_outqueue.c_sctp_cacc_skip_3_1_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_transport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_transport*, i32)* @sctp_cacc_skip_3_1_f to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_cacc_skip_3_1_f(%struct.sctp_transport* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_transport*, align 8
  %5 = alloca i32, align 4
  store %struct.sctp_transport* %0, %struct.sctp_transport** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %10 = icmp ne %struct.sctp_transport* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %13 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %19

18:                                               ; preds = %11, %8, %2
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
