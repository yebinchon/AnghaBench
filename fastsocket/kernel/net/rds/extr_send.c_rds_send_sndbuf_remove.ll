; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_send.c_rds_send_sndbuf_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_send.c_rds_send_sndbuf_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_sock = type { i64, i32 }
%struct.rds_message = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@s_send_queue_empty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_sock*, %struct.rds_message*)* @rds_send_sndbuf_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_send_sndbuf_remove(%struct.rds_sock* %0, %struct.rds_message* %1) #0 {
  %3 = alloca %struct.rds_sock*, align 8
  %4 = alloca %struct.rds_message*, align 8
  %5 = alloca i64, align 8
  store %struct.rds_sock* %0, %struct.rds_sock** %3, align 8
  store %struct.rds_message* %1, %struct.rds_message** %4, align 8
  %6 = load %struct.rds_message*, %struct.rds_message** %4, align 8
  %7 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @be32_to_cpu(i32 %10)
  store i64 %11, i64* %5, align 8
  %12 = load %struct.rds_sock*, %struct.rds_sock** %3, align 8
  %13 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %12, i32 0, i32 1
  %14 = call i32 @assert_spin_locked(i32* %13)
  %15 = load %struct.rds_sock*, %struct.rds_sock** %3, align 8
  %16 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp slt i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.rds_sock*, %struct.rds_sock** %3, align 8
  %24 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %25, %22
  store i64 %26, i64* %24, align 8
  %27 = load %struct.rds_sock*, %struct.rds_sock** %3, align 8
  %28 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load i32, i32* @s_send_queue_empty, align 4
  %33 = call i32 @rds_stats_inc(i32 %32)
  br label %34

34:                                               ; preds = %31, %2
  ret void
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rds_stats_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
