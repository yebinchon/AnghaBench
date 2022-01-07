; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_cm.c_rds_iw_set_flow_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_cm.c_rds_iw_set_flow_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { %struct.rds_iw_connection* }
%struct.rds_iw_connection = type { i32 }

@rds_iw_sysctl_flow_control = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rds_connection*, i64)* @rds_iw_set_flow_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rds_iw_set_flow_control(%struct.rds_connection* %0, i64 %1) #0 {
  %3 = alloca %struct.rds_connection*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rds_iw_connection*, align 8
  store %struct.rds_connection* %0, %struct.rds_connection** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %7 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %6, i32 0, i32 0
  %8 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %7, align 8
  store %struct.rds_iw_connection* %8, %struct.rds_iw_connection** %5, align 8
  %9 = load i64, i64* @rds_iw_sysctl_flow_control, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %5, align 8
  %16 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @rds_iw_send_add_credits(%struct.rds_connection* %17, i64 %18)
  br label %23

20:                                               ; preds = %11, %2
  %21 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %5, align 8
  %22 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %21, i32 0, i32 0
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %14
  ret void
}

declare dso_local i32 @rds_iw_send_add_credits(%struct.rds_connection*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
