; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_af_rds.c_rds_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_af_rds.c_rds_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rds_proto = common dso_local global i32 0, align 4
@rds_family_ops = common dso_local global i32 0, align 4
@RDS_INFO_SOCKETS = common dso_local global i32 0, align 4
@rds_sock_info = common dso_local global i32 0, align 4
@RDS_INFO_RECV_MESSAGES = common dso_local global i32 0, align 4
@rds_sock_inc_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rds_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @rds_conn_init()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %50

6:                                                ; preds = %0
  %7 = call i32 (...) @rds_threads_init()
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %46

11:                                               ; preds = %6
  %12 = call i32 (...) @rds_sysctl_init()
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %44

16:                                               ; preds = %11
  %17 = call i32 (...) @rds_stats_init()
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %42

21:                                               ; preds = %16
  %22 = call i32 @proto_register(i32* @rds_proto, i32 1)
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %40

26:                                               ; preds = %21
  %27 = call i32 @sock_register(i32* @rds_family_ops)
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* %1, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %38

31:                                               ; preds = %26
  %32 = load i32, i32* @RDS_INFO_SOCKETS, align 4
  %33 = load i32, i32* @rds_sock_info, align 4
  %34 = call i32 @rds_info_register_func(i32 %32, i32 %33)
  %35 = load i32, i32* @RDS_INFO_RECV_MESSAGES, align 4
  %36 = load i32, i32* @rds_sock_inc_info, align 4
  %37 = call i32 @rds_info_register_func(i32 %35, i32 %36)
  br label %50

38:                                               ; preds = %30
  %39 = call i32 @proto_unregister(i32* @rds_proto)
  br label %40

40:                                               ; preds = %38, %25
  %41 = call i32 (...) @rds_stats_exit()
  br label %42

42:                                               ; preds = %40, %20
  %43 = call i32 (...) @rds_sysctl_exit()
  br label %44

44:                                               ; preds = %42, %15
  %45 = call i32 (...) @rds_threads_exit()
  br label %46

46:                                               ; preds = %44, %10
  %47 = call i32 (...) @rds_conn_exit()
  %48 = call i32 (...) @rds_cong_exit()
  %49 = call i32 (...) @rds_page_exit()
  br label %50

50:                                               ; preds = %46, %31, %5
  %51 = load i32, i32* %1, align 4
  ret i32 %51
}

declare dso_local i32 @rds_conn_init(...) #1

declare dso_local i32 @rds_threads_init(...) #1

declare dso_local i32 @rds_sysctl_init(...) #1

declare dso_local i32 @rds_stats_init(...) #1

declare dso_local i32 @proto_register(i32*, i32) #1

declare dso_local i32 @sock_register(i32*) #1

declare dso_local i32 @rds_info_register_func(i32, i32) #1

declare dso_local i32 @proto_unregister(i32*) #1

declare dso_local i32 @rds_stats_exit(...) #1

declare dso_local i32 @rds_sysctl_exit(...) #1

declare dso_local i32 @rds_threads_exit(...) #1

declare dso_local i32 @rds_conn_exit(...) #1

declare dso_local i32 @rds_cong_exit(...) #1

declare dso_local i32 @rds_page_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
