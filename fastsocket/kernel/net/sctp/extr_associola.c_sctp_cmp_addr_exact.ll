; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_associola.c_sctp_cmp_addr_exact.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_associola.c_sctp_cmp_addr_exact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_addr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_af = type { i32 (%union.sctp_addr*, %union.sctp_addr*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_cmp_addr_exact(%union.sctp_addr* %0, %union.sctp_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.sctp_addr*, align 8
  %5 = alloca %union.sctp_addr*, align 8
  %6 = alloca %struct.sctp_af*, align 8
  store %union.sctp_addr* %0, %union.sctp_addr** %4, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %5, align 8
  %7 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %8 = bitcast %union.sctp_addr* %7 to %struct.TYPE_2__*
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.sctp_af* @sctp_get_af_specific(i32 %10)
  store %struct.sctp_af* %11, %struct.sctp_af** %6, align 8
  %12 = load %struct.sctp_af*, %struct.sctp_af** %6, align 8
  %13 = icmp ne %struct.sctp_af* %12, null
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

19:                                               ; preds = %2
  %20 = load %struct.sctp_af*, %struct.sctp_af** %6, align 8
  %21 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %20, i32 0, i32 0
  %22 = load i32 (%union.sctp_addr*, %union.sctp_addr*)*, i32 (%union.sctp_addr*, %union.sctp_addr*)** %21, align 8
  %23 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %24 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %25 = call i32 %22(%union.sctp_addr* %23, %union.sctp_addr* %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %19, %18
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
