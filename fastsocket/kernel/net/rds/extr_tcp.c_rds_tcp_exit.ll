; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_tcp.c_rds_tcp_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_tcp.c_rds_tcp_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RDS_INFO_TCP_SOCKETS = common dso_local global i32 0, align 4
@rds_tcp_tc_info = common dso_local global i32 0, align 4
@rds_tcp_transport = common dso_local global i32 0, align 4
@rds_tcp_conn_slab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rds_tcp_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_tcp_exit() #0 {
  %1 = load i32, i32* @RDS_INFO_TCP_SOCKETS, align 4
  %2 = load i32, i32* @rds_tcp_tc_info, align 4
  %3 = call i32 @rds_info_deregister_func(i32 %1, i32 %2)
  %4 = call i32 (...) @rds_tcp_listen_stop()
  %5 = call i32 (...) @rds_tcp_destroy_conns()
  %6 = call i32 @rds_trans_unregister(i32* @rds_tcp_transport)
  %7 = call i32 (...) @rds_tcp_recv_exit()
  %8 = load i32, i32* @rds_tcp_conn_slab, align 4
  %9 = call i32 @kmem_cache_destroy(i32 %8)
  ret void
}

declare dso_local i32 @rds_info_deregister_func(i32, i32) #1

declare dso_local i32 @rds_tcp_listen_stop(...) #1

declare dso_local i32 @rds_tcp_destroy_conns(...) #1

declare dso_local i32 @rds_trans_unregister(i32*) #1

declare dso_local i32 @rds_tcp_recv_exit(...) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
