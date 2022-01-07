; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_lsock.c_check_priv_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_lsock.c_check_priv_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_input = type { i32, i32 }
%struct.xucred = type { i64, i64 }

@LOCAL_PEERCRED = common dso_local global i32 0, align 4
@XUCRED_VERSION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port_input*)* @check_priv_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_priv_stream(%struct.port_input* %0) #0 {
  %2 = alloca %struct.port_input*, align 8
  %3 = alloca %struct.xucred, align 8
  %4 = alloca i32, align 4
  store %struct.port_input* %0, %struct.port_input** %2, align 8
  store i32 16, i32* %4, align 4
  %5 = load %struct.port_input*, %struct.port_input** %2, align 8
  %6 = getelementptr inbounds %struct.port_input, %struct.port_input* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @LOCAL_PEERCRED, align 4
  %9 = call i64 @getsockopt(i32 %7, i32 0, i32 %8, %struct.xucred* %3, i32* %4)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp uge i64 %13, 16
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.xucred, %struct.xucred* %3, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @XUCRED_VERSION, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.xucred, %struct.xucred* %3, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = load %struct.port_input*, %struct.port_input** %2, align 8
  %26 = getelementptr inbounds %struct.port_input, %struct.port_input* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %30

27:                                               ; preds = %15, %11, %1
  %28 = load %struct.port_input*, %struct.port_input** %2, align 8
  %29 = getelementptr inbounds %struct.port_input, %struct.port_input* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %20
  ret void
}

declare dso_local i64 @getsockopt(i32, i32, i32, %struct.xucred*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
