; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_recv.c_rds_cmsg_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_recv.c_rds_cmsg_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_incoming = type { i64 }
%struct.msghdr = type { i32 }

@SOL_RDS = common dso_local global i32 0, align 4
@RDS_CMSG_RDMA_DEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rds_incoming*, %struct.msghdr*)* @rds_cmsg_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_cmsg_recv(%struct.rds_incoming* %0, %struct.msghdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rds_incoming*, align 8
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca i32, align 4
  store %struct.rds_incoming* %0, %struct.rds_incoming** %4, align 8
  store %struct.msghdr* %1, %struct.msghdr** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.rds_incoming*, %struct.rds_incoming** %4, align 8
  %8 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %13 = load i32, i32* @SOL_RDS, align 4
  %14 = load i32, i32* @RDS_CMSG_RDMA_DEST, align 4
  %15 = load %struct.rds_incoming*, %struct.rds_incoming** %4, align 8
  %16 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %15, i32 0, i32 0
  %17 = call i32 @put_cmsg(%struct.msghdr* %12, i32 %13, i32 %14, i32 8, i64* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %24

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22, %2
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %20
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @put_cmsg(%struct.msghdr*, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
