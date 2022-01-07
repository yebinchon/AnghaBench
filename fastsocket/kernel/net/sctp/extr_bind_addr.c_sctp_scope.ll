; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_bind_addr.c_sctp_scope.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_bind_addr.c_sctp_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_addr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_af = type { i32 (%union.sctp_addr*)* }

@SCTP_SCOPE_UNUSABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_scope(%union.sctp_addr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.sctp_addr*, align 8
  %4 = alloca %struct.sctp_af*, align 8
  store %union.sctp_addr* %0, %union.sctp_addr** %3, align 8
  %5 = load %union.sctp_addr*, %union.sctp_addr** %3, align 8
  %6 = bitcast %union.sctp_addr* %5 to %struct.TYPE_2__*
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.sctp_af* @sctp_get_af_specific(i32 %8)
  store %struct.sctp_af* %9, %struct.sctp_af** %4, align 8
  %10 = load %struct.sctp_af*, %struct.sctp_af** %4, align 8
  %11 = icmp ne %struct.sctp_af* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @SCTP_SCOPE_UNUSABLE, align 4
  store i32 %13, i32* %2, align 4
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.sctp_af*, %struct.sctp_af** %4, align 8
  %16 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %15, i32 0, i32 0
  %17 = load i32 (%union.sctp_addr*)*, i32 (%union.sctp_addr*)** %16, align 8
  %18 = load %union.sctp_addr*, %union.sctp_addr** %3, align 8
  %19 = call i32 %17(%union.sctp_addr* %18)
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %14, %12
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
