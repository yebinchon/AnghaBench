; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_log.c_xlog_ticket_reservation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_log.c_xlog_ticket_reservation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.log = type { %struct.xlog_grant_head }
%struct.xlog_grant_head = type { i32 }
%struct.xlog_ticket = type { i32, i32, i32 }

@XLOG_TIC_PERM_RESERV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.log*, %struct.xlog_grant_head*, %struct.xlog_ticket*)* @xlog_ticket_reservation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlog_ticket_reservation(%struct.log* %0, %struct.xlog_grant_head* %1, %struct.xlog_ticket* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.log*, align 8
  %6 = alloca %struct.xlog_grant_head*, align 8
  %7 = alloca %struct.xlog_ticket*, align 8
  store %struct.log* %0, %struct.log** %5, align 8
  store %struct.xlog_grant_head* %1, %struct.xlog_grant_head** %6, align 8
  store %struct.xlog_ticket* %2, %struct.xlog_ticket** %7, align 8
  %8 = load %struct.xlog_grant_head*, %struct.xlog_grant_head** %6, align 8
  %9 = load %struct.log*, %struct.log** %5, align 8
  %10 = getelementptr inbounds %struct.log, %struct.log* %9, i32 0, i32 0
  %11 = icmp eq %struct.xlog_grant_head* %8, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load %struct.xlog_ticket*, %struct.xlog_ticket** %7, align 8
  %14 = getelementptr inbounds %struct.xlog_ticket, %struct.xlog_ticket* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @XLOG_TIC_PERM_RESERV, align 4
  %17 = and i32 %15, %16
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load %struct.xlog_ticket*, %struct.xlog_ticket** %7, align 8
  %20 = getelementptr inbounds %struct.xlog_ticket, %struct.xlog_ticket* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  br label %41

22:                                               ; preds = %3
  %23 = load %struct.xlog_ticket*, %struct.xlog_ticket** %7, align 8
  %24 = getelementptr inbounds %struct.xlog_ticket, %struct.xlog_ticket* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @XLOG_TIC_PERM_RESERV, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.xlog_ticket*, %struct.xlog_ticket** %7, align 8
  %31 = getelementptr inbounds %struct.xlog_ticket, %struct.xlog_ticket* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.xlog_ticket*, %struct.xlog_ticket** %7, align 8
  %34 = getelementptr inbounds %struct.xlog_ticket, %struct.xlog_ticket* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  store i32 %36, i32* %4, align 4
  br label %41

37:                                               ; preds = %22
  %38 = load %struct.xlog_ticket*, %struct.xlog_ticket** %7, align 8
  %39 = getelementptr inbounds %struct.xlog_ticket, %struct.xlog_ticket* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %29, %12
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
