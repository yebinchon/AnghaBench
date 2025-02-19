; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_input.c_sctp_has_association.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_input.c_sctp_has_association.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_addr = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_transport = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_has_association(%union.sctp_addr* %0, %union.sctp_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.sctp_addr*, align 8
  %5 = alloca %union.sctp_addr*, align 8
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca %struct.sctp_transport*, align 8
  store %union.sctp_addr* %0, %union.sctp_addr** %4, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %5, align 8
  %8 = load %union.sctp_addr*, %union.sctp_addr** %4, align 8
  %9 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %10 = call %struct.sctp_association* @sctp_lookup_association(%union.sctp_addr* %8, %union.sctp_addr* %9, %struct.sctp_transport** %7)
  store %struct.sctp_association* %10, %struct.sctp_association** %6, align 8
  %11 = icmp ne %struct.sctp_association* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %14 = call i32 @sctp_association_put(%struct.sctp_association* %13)
  store i32 1, i32* %3, align 4
  br label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local %struct.sctp_association* @sctp_lookup_association(%union.sctp_addr*, %union.sctp_addr*, %struct.sctp_transport**) #1

declare dso_local i32 @sctp_association_put(%struct.sctp_association*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
