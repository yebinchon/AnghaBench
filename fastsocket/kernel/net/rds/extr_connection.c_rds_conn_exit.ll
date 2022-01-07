; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_connection.c_rds_conn_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_connection.c_rds_conn_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rds_conn_hash = common dso_local global i32 0, align 4
@rds_conn_slab = common dso_local global i32 0, align 4
@RDS_INFO_CONNECTIONS = common dso_local global i32 0, align 4
@rds_conn_info = common dso_local global i32 0, align 4
@RDS_INFO_SEND_MESSAGES = common dso_local global i32 0, align 4
@rds_conn_message_info_send = common dso_local global i32 0, align 4
@RDS_INFO_RETRANS_MESSAGES = common dso_local global i32 0, align 4
@rds_conn_message_info_retrans = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_conn_exit() #0 {
  %1 = call i32 (...) @rds_loop_exit()
  %2 = load i32, i32* @rds_conn_hash, align 4
  %3 = call i32 @hlist_empty(i32 %2)
  %4 = icmp ne i32 %3, 0
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i32 @WARN_ON(i32 %6)
  %8 = load i32, i32* @rds_conn_slab, align 4
  %9 = call i32 @kmem_cache_destroy(i32 %8)
  %10 = load i32, i32* @RDS_INFO_CONNECTIONS, align 4
  %11 = load i32, i32* @rds_conn_info, align 4
  %12 = call i32 @rds_info_deregister_func(i32 %10, i32 %11)
  %13 = load i32, i32* @RDS_INFO_SEND_MESSAGES, align 4
  %14 = load i32, i32* @rds_conn_message_info_send, align 4
  %15 = call i32 @rds_info_deregister_func(i32 %13, i32 %14)
  %16 = load i32, i32* @RDS_INFO_RETRANS_MESSAGES, align 4
  %17 = load i32, i32* @rds_conn_message_info_retrans, align 4
  %18 = call i32 @rds_info_deregister_func(i32 %16, i32 %17)
  ret void
}

declare dso_local i32 @rds_loop_exit(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @hlist_empty(i32) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

declare dso_local i32 @rds_info_deregister_func(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
