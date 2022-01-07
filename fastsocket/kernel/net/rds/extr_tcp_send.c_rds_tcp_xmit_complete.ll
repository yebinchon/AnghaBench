; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_tcp_send.c_rds_tcp_xmit_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_tcp_send.c_rds_tcp_xmit_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { %struct.rds_tcp_connection* }
%struct.rds_tcp_connection = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_tcp_xmit_complete(%struct.rds_connection* %0) #0 {
  %2 = alloca %struct.rds_connection*, align 8
  %3 = alloca %struct.rds_tcp_connection*, align 8
  store %struct.rds_connection* %0, %struct.rds_connection** %2, align 8
  %4 = load %struct.rds_connection*, %struct.rds_connection** %2, align 8
  %5 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %4, i32 0, i32 0
  %6 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %5, align 8
  store %struct.rds_tcp_connection* %6, %struct.rds_tcp_connection** %3, align 8
  %7 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %3, align 8
  %8 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @rds_tcp_cork(i32 %9, i32 0)
  ret void
}

declare dso_local i32 @rds_tcp_cork(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
