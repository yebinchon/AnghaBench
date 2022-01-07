; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_inet.c_ipv6z_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_inet.c_ipv6z_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_port = type { i32 }
%struct.inet_port_params = type { i32, i32* }

@SNMP_ERR_INCONS_VALUE = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inet_port*, %struct.inet_port_params*)* @ipv6z_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6z_create(%struct.inet_port* %0, %struct.inet_port_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inet_port*, align 8
  %5 = alloca %struct.inet_port_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.inet_port* %0, %struct.inet_port** %4, align 8
  store %struct.inet_port_params* %1, %struct.inet_port_params** %5, align 8
  %9 = load %struct.inet_port_params*, %struct.inet_port_params** %5, align 8
  %10 = getelementptr inbounds %struct.inet_port_params, %struct.inet_port_params* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 20
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %14, i32* %3, align 4
  br label %46

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 16, i32* %7, align 4
  br label %16

16:                                               ; preds = %31, %15
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 20
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 %20, 8
  store i32 %21, i32* %6, align 4
  %22 = load %struct.inet_port_params*, %struct.inet_port_params** %5, align 8
  %23 = getelementptr inbounds %struct.inet_port_params, %struct.inet_port_params* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %19
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %16

34:                                               ; preds = %16
  %35 = load %struct.inet_port*, %struct.inet_port** %4, align 8
  %36 = load %struct.inet_port_params*, %struct.inet_port_params** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @ipv6_create_common(%struct.inet_port* %35, %struct.inet_port_params* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %42, %13
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @ipv6_create_common(%struct.inet_port*, %struct.inet_port_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
