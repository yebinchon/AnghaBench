; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_associola.c_sctp_assoc_lookup_laddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_associola.c_sctp_assoc_lookup_laddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%union.sctp_addr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_assoc_lookup_laddr(%struct.sctp_association* %0, %union.sctp_addr* %1) #0 {
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %union.sctp_addr*, align 8
  %5 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %3, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %7 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %12 = bitcast %union.sctp_addr* %11 to %struct.TYPE_4__*
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @ntohs(i32 %14)
  %16 = icmp eq i64 %10, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %19 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %22 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %23 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @sctp_sk(i32 %25)
  %27 = call i64 @sctp_bind_addr_match(%struct.TYPE_6__* %20, %union.sctp_addr* %21, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  store i32 1, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %17, %2
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @sctp_bind_addr_match(%struct.TYPE_6__*, %union.sctp_addr*, i32) #1

declare dso_local i32 @sctp_sk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
