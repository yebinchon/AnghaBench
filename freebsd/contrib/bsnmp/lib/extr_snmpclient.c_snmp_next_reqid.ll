; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_snmp_next_reqid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_snmp_next_reqid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_client = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snmp_client*)* @snmp_next_reqid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snmp_next_reqid(%struct.snmp_client* %0) #0 {
  %2 = alloca %struct.snmp_client*, align 8
  %3 = alloca i64, align 8
  store %struct.snmp_client* %0, %struct.snmp_client** %2, align 8
  %4 = load %struct.snmp_client*, %struct.snmp_client** %2, align 8
  %5 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %3, align 8
  %7 = load %struct.snmp_client*, %struct.snmp_client** %2, align 8
  %8 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.snmp_client*, %struct.snmp_client** %2, align 8
  %11 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %9, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.snmp_client*, %struct.snmp_client** %2, align 8
  %16 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.snmp_client*, %struct.snmp_client** %2, align 8
  %19 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %25

20:                                               ; preds = %1
  %21 = load %struct.snmp_client*, %struct.snmp_client** %2, align 8
  %22 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %22, align 8
  br label %25

25:                                               ; preds = %20, %14
  %26 = load i64, i64* %3, align 8
  ret i64 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
