; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_input.c___sctp_rcv_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_input.c___sctp_rcv_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.sk_buff = type { i32 }
%union.sctp_addr = type { i32 }
%struct.sctp_transport = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_association* (%struct.sk_buff*, %union.sctp_addr*, %union.sctp_addr*, %struct.sctp_transport**)* @__sctp_rcv_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_association* @__sctp_rcv_lookup(%struct.sk_buff* %0, %union.sctp_addr* %1, %union.sctp_addr* %2, %struct.sctp_transport** %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %union.sctp_addr*, align 8
  %7 = alloca %union.sctp_addr*, align 8
  %8 = alloca %struct.sctp_transport**, align 8
  %9 = alloca %struct.sctp_association*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %6, align 8
  store %union.sctp_addr* %2, %union.sctp_addr** %7, align 8
  store %struct.sctp_transport** %3, %struct.sctp_transport*** %8, align 8
  %10 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %11 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %12 = load %struct.sctp_transport**, %struct.sctp_transport*** %8, align 8
  %13 = call %struct.sctp_association* @__sctp_lookup_association(%union.sctp_addr* %10, %union.sctp_addr* %11, %struct.sctp_transport** %12)
  store %struct.sctp_association* %13, %struct.sctp_association** %9, align 8
  %14 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  %15 = icmp ne %struct.sctp_association* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load %union.sctp_addr*, %union.sctp_addr** %7, align 8
  %19 = load %struct.sctp_transport**, %struct.sctp_transport*** %8, align 8
  %20 = call %struct.sctp_association* @__sctp_rcv_lookup_harder(%struct.sk_buff* %17, %union.sctp_addr* %18, %struct.sctp_transport** %19)
  store %struct.sctp_association* %20, %struct.sctp_association** %9, align 8
  br label %21

21:                                               ; preds = %16, %4
  %22 = load %struct.sctp_association*, %struct.sctp_association** %9, align 8
  ret %struct.sctp_association* %22
}

declare dso_local %struct.sctp_association* @__sctp_lookup_association(%union.sctp_addr*, %union.sctp_addr*, %struct.sctp_transport**) #1

declare dso_local %struct.sctp_association* @__sctp_rcv_lookup_harder(%struct.sk_buff*, %union.sctp_addr*, %struct.sctp_transport**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
