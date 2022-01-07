; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_protocol.c_sctp_get_pf_specific.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_protocol.c_sctp_get_pf_specific.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_pf = type { i32 }

@sctp_pf_inet_specific = common dso_local global %struct.sctp_pf* null, align 8
@sctp_pf_inet6_specific = common dso_local global %struct.sctp_pf* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_pf* @sctp_get_pf_specific(i32 %0) #0 {
  %2 = alloca %struct.sctp_pf*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %9 [
    i32 129, label %5
    i32 128, label %7
  ]

5:                                                ; preds = %1
  %6 = load %struct.sctp_pf*, %struct.sctp_pf** @sctp_pf_inet_specific, align 8
  store %struct.sctp_pf* %6, %struct.sctp_pf** %2, align 8
  br label %10

7:                                                ; preds = %1
  %8 = load %struct.sctp_pf*, %struct.sctp_pf** @sctp_pf_inet6_specific, align 8
  store %struct.sctp_pf* %8, %struct.sctp_pf** %2, align 8
  br label %10

9:                                                ; preds = %1
  store %struct.sctp_pf* null, %struct.sctp_pf** %2, align 8
  br label %10

10:                                               ; preds = %9, %7, %5
  %11 = load %struct.sctp_pf*, %struct.sctp_pf** %2, align 8
  ret %struct.sctp_pf* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
