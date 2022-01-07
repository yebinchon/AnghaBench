; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_endpointola.c_sctp_endpoint_lookup_assoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_endpointola.c_sctp_endpoint_lookup_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.sctp_endpoint = type { i32 }
%union.sctp_addr = type { i32 }
%struct.sctp_transport = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_association* @sctp_endpoint_lookup_assoc(%struct.sctp_endpoint* %0, %union.sctp_addr* %1, %struct.sctp_transport** %2) #0 {
  %4 = alloca %struct.sctp_endpoint*, align 8
  %5 = alloca %union.sctp_addr*, align 8
  %6 = alloca %struct.sctp_transport**, align 8
  %7 = alloca %struct.sctp_association*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %4, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %5, align 8
  store %struct.sctp_transport** %2, %struct.sctp_transport*** %6, align 8
  %8 = call i32 (...) @sctp_local_bh_disable()
  %9 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %4, align 8
  %10 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %11 = load %struct.sctp_transport**, %struct.sctp_transport*** %6, align 8
  %12 = call %struct.sctp_association* @__sctp_endpoint_lookup_assoc(%struct.sctp_endpoint* %9, %union.sctp_addr* %10, %struct.sctp_transport** %11)
  store %struct.sctp_association* %12, %struct.sctp_association** %7, align 8
  %13 = call i32 (...) @sctp_local_bh_enable()
  %14 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  ret %struct.sctp_association* %14
}

declare dso_local i32 @sctp_local_bh_disable(...) #1

declare dso_local %struct.sctp_association* @__sctp_endpoint_lookup_assoc(%struct.sctp_endpoint*, %union.sctp_addr*, %struct.sctp_transport**) #1

declare dso_local i32 @sctp_local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
