; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw.c_rds_iw_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw.c_rds_iw_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RDS_INFO_IWARP_CONNECTIONS = common dso_local global i32 0, align 4
@rds_iw_ic_info = common dso_local global i32 0, align 4
@rds_iw_client = common dso_local global i32 0, align 4
@rds_iw_transport = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_iw_exit() #0 {
  %1 = load i32, i32* @RDS_INFO_IWARP_CONNECTIONS, align 4
  %2 = load i32, i32* @rds_iw_ic_info, align 4
  %3 = call i32 @rds_info_deregister_func(i32 %1, i32 %2)
  %4 = call i32 (...) @rds_iw_destroy_nodev_conns()
  %5 = call i32 @ib_unregister_client(i32* @rds_iw_client)
  %6 = call i32 (...) @rds_iw_sysctl_exit()
  %7 = call i32 (...) @rds_iw_recv_exit()
  %8 = call i32 @rds_trans_unregister(i32* @rds_iw_transport)
  ret void
}

declare dso_local i32 @rds_info_deregister_func(i32, i32) #1

declare dso_local i32 @rds_iw_destroy_nodev_conns(...) #1

declare dso_local i32 @ib_unregister_client(i32*) #1

declare dso_local i32 @rds_iw_sysctl_exit(...) #1

declare dso_local i32 @rds_iw_recv_exit(...) #1

declare dso_local i32 @rds_trans_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
