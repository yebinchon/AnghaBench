; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw.h_rds_iw_data_sge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw.h_rds_iw_data_sge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_iw_connection = type { i32 }
%struct.ib_sge = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_sge* (%struct.rds_iw_connection*, %struct.ib_sge*)* @rds_iw_data_sge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_sge* @rds_iw_data_sge(%struct.rds_iw_connection* %0, %struct.ib_sge* %1) #0 {
  %3 = alloca %struct.rds_iw_connection*, align 8
  %4 = alloca %struct.ib_sge*, align 8
  store %struct.rds_iw_connection* %0, %struct.rds_iw_connection** %3, align 8
  store %struct.ib_sge* %1, %struct.ib_sge** %4, align 8
  %5 = load %struct.ib_sge*, %struct.ib_sge** %4, align 8
  %6 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %5, i64 1
  ret %struct.ib_sge* %6
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
