; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_inet.c_ipv4_activate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_inet.c_ipv4_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_port = type { i32, i32 }
%struct.port_sock = type { i32 }

@link = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@RowStatus_active = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inet_port*)* @ipv4_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv4_activate(%struct.inet_port* %0) #0 {
  %2 = alloca %struct.inet_port*, align 8
  %3 = alloca %struct.port_sock*, align 8
  %4 = alloca i32, align 4
  store %struct.inet_port* %0, %struct.inet_port** %2, align 8
  %5 = load %struct.inet_port*, %struct.inet_port** %2, align 8
  %6 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %5, i32 0, i32 1
  %7 = call %struct.port_sock* @TAILQ_FIRST(i32* %6)
  store %struct.port_sock* %7, %struct.port_sock** %3, align 8
  %8 = load %struct.port_sock*, %struct.port_sock** %3, align 8
  %9 = ptrtoint %struct.port_sock* %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.port_sock*, %struct.port_sock** %3, align 8
  %12 = load i32, i32* @link, align 4
  %13 = call i32 @TAILQ_NEXT(%struct.port_sock* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.port_sock*, %struct.port_sock** %3, align 8
  %19 = call i32 @ipv4_activate_sock(%struct.port_sock* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @RowStatus_active, align 4
  %25 = load %struct.inet_port*, %struct.inet_port** %2, align 8
  %26 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %1
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.port_sock* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TAILQ_NEXT(%struct.port_sock*, i32) #1

declare dso_local i32 @ipv4_activate_sock(%struct.port_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
