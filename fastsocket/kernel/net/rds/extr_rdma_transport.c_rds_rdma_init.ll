; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_rdma_transport.c_rds_rdma_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_rdma_transport.c_rds_rdma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rds_rdma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_rdma_init() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @rds_rdma_listen_init()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %21

6:                                                ; preds = %0
  %7 = call i32 (...) @rds_iw_init()
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %19

11:                                               ; preds = %6
  %12 = call i32 (...) @rds_ib_init()
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %17

16:                                               ; preds = %11
  br label %21

17:                                               ; preds = %15
  %18 = call i32 (...) @rds_iw_exit()
  br label %19

19:                                               ; preds = %17, %10
  %20 = call i32 (...) @rds_rdma_listen_stop()
  br label %21

21:                                               ; preds = %19, %16, %5
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @rds_rdma_listen_init(...) #1

declare dso_local i32 @rds_iw_init(...) #1

declare dso_local i32 @rds_ib_init(...) #1

declare dso_local i32 @rds_iw_exit(...) #1

declare dso_local i32 @rds_rdma_listen_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
