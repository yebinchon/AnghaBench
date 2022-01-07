; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw.c_rds_iw_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw.c_rds_iw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rds_iw_devices = common dso_local global i32 0, align 4
@rds_iw_client = common dso_local global i32 0, align 4
@rds_iw_transport = common dso_local global i32 0, align 4
@RDS_INFO_IWARP_CONNECTIONS = common dso_local global i32 0, align 4
@rds_iw_ic_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_iw_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @INIT_LIST_HEAD(i32* @rds_iw_devices)
  %3 = call i32 @ib_register_client(i32* @rds_iw_client)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %32

7:                                                ; preds = %0
  %8 = call i32 (...) @rds_iw_sysctl_init()
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %30

12:                                               ; preds = %7
  %13 = call i32 (...) @rds_iw_recv_init()
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %28

17:                                               ; preds = %12
  %18 = call i32 @rds_trans_register(i32* @rds_iw_transport)
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @RDS_INFO_IWARP_CONNECTIONS, align 4
  %24 = load i32, i32* @rds_iw_ic_info, align 4
  %25 = call i32 @rds_info_register_func(i32 %23, i32 %24)
  br label %32

26:                                               ; preds = %21
  %27 = call i32 (...) @rds_iw_recv_exit()
  br label %28

28:                                               ; preds = %26, %16
  %29 = call i32 (...) @rds_iw_sysctl_exit()
  br label %30

30:                                               ; preds = %28, %11
  %31 = call i32 @ib_unregister_client(i32* @rds_iw_client)
  br label %32

32:                                               ; preds = %30, %22, %6
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ib_register_client(i32*) #1

declare dso_local i32 @rds_iw_sysctl_init(...) #1

declare dso_local i32 @rds_iw_recv_init(...) #1

declare dso_local i32 @rds_trans_register(i32*) #1

declare dso_local i32 @rds_info_register_func(i32, i32) #1

declare dso_local i32 @rds_iw_recv_exit(...) #1

declare dso_local i32 @rds_iw_sysctl_exit(...) #1

declare dso_local i32 @ib_unregister_client(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
