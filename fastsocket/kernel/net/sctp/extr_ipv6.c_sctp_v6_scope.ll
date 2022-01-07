; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ipv6.c_sctp_v6_scope.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ipv6.c_sctp_v6_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_addr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SCTP_SCOPE_LOOPBACK = common dso_local global i32 0, align 4
@SCTP_SCOPE_LINK = common dso_local global i32 0, align 4
@SCTP_SCOPE_PRIVATE = common dso_local global i32 0, align 4
@SCTP_SCOPE_GLOBAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.sctp_addr*)* @sctp_v6_scope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_v6_scope(%union.sctp_addr* %0) #0 {
  %2 = alloca %union.sctp_addr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %union.sctp_addr* %0, %union.sctp_addr** %2, align 8
  %5 = load %union.sctp_addr*, %union.sctp_addr** %2, align 8
  %6 = bitcast %union.sctp_addr* %5 to %struct.TYPE_2__*
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @ipv6_addr_scope(i32* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %16 [
    i32 130, label %10
    i32 129, label %12
    i32 128, label %14
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @SCTP_SCOPE_LOOPBACK, align 4
  store i32 %11, i32* %4, align 4
  br label %18

12:                                               ; preds = %1
  %13 = load i32, i32* @SCTP_SCOPE_LINK, align 4
  store i32 %13, i32* %4, align 4
  br label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @SCTP_SCOPE_PRIVATE, align 4
  store i32 %15, i32* %4, align 4
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @SCTP_SCOPE_GLOBAL, align 4
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %16, %14, %12, %10
  %19 = load i32, i32* %4, align 4
  ret i32 %19
}

declare dso_local i32 @ipv6_addr_scope(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
