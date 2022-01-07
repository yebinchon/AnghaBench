; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_inet.c_ipv6_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_inet.c_ipv6_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_port = type { i32 }
%struct.inet_port_params = type { i32 }

@SNMP_ERR_INCONS_VALUE = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inet_port*, %struct.inet_port_params*)* @ipv6_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_create(%struct.inet_port* %0, %struct.inet_port_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inet_port*, align 8
  %5 = alloca %struct.inet_port_params*, align 8
  %6 = alloca i32, align 4
  store %struct.inet_port* %0, %struct.inet_port** %4, align 8
  store %struct.inet_port_params* %1, %struct.inet_port_params** %5, align 8
  %7 = load %struct.inet_port_params*, %struct.inet_port_params** %5, align 8
  %8 = getelementptr inbounds %struct.inet_port_params, %struct.inet_port_params* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 16
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %12, i32* %3, align 4
  br label %24

13:                                               ; preds = %2
  %14 = load %struct.inet_port*, %struct.inet_port** %4, align 8
  %15 = load %struct.inet_port_params*, %struct.inet_port_params** %5, align 8
  %16 = call i32 @ipv6_create_common(%struct.inet_port* %14, %struct.inet_port_params* %15, i32 0)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %24

22:                                               ; preds = %13
  %23 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %22, %20, %11
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @ipv6_create_common(%struct.inet_port*, %struct.inet_port_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
