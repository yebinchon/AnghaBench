; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_snmp_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_snmp_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 (i32*, void (i8*)*, %struct.sent_pdu*)* }
%struct.sent_pdu = type { i64, i32, i32, i32, i32, i32 (i32, i32*, i32)* }

@snmp_client = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@entries = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @snmp_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snmp_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sent_pdu*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.sent_pdu*
  store %struct.sent_pdu* %5, %struct.sent_pdu** %3, align 8
  %6 = load %struct.sent_pdu*, %struct.sent_pdu** %3, align 8
  %7 = getelementptr inbounds %struct.sent_pdu, %struct.sent_pdu* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* %7, align 8
  %10 = load %struct.sent_pdu*, %struct.sent_pdu** %3, align 8
  %11 = getelementptr inbounds %struct.sent_pdu, %struct.sent_pdu* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmp_client, i32 0, i32 0), align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load %struct.sent_pdu*, %struct.sent_pdu** %3, align 8
  %17 = load i32, i32* @entries, align 4
  %18 = call i32 @LIST_REMOVE(%struct.sent_pdu* %16, i32 %17)
  %19 = load %struct.sent_pdu*, %struct.sent_pdu** %3, align 8
  %20 = getelementptr inbounds %struct.sent_pdu, %struct.sent_pdu* %19, i32 0, i32 5
  %21 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %20, align 8
  %22 = load %struct.sent_pdu*, %struct.sent_pdu** %3, align 8
  %23 = getelementptr inbounds %struct.sent_pdu, %struct.sent_pdu* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sent_pdu*, %struct.sent_pdu** %3, align 8
  %26 = getelementptr inbounds %struct.sent_pdu, %struct.sent_pdu* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 %21(i32 %24, i32* null, i32 %27)
  %29 = load %struct.sent_pdu*, %struct.sent_pdu** %3, align 8
  %30 = call i32 @free(%struct.sent_pdu* %29)
  br label %43

31:                                               ; preds = %1
  %32 = load %struct.sent_pdu*, %struct.sent_pdu** %3, align 8
  %33 = getelementptr inbounds %struct.sent_pdu, %struct.sent_pdu* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @snmp_send_packet(i32 %34)
  %36 = load %struct.sent_pdu*, %struct.sent_pdu** %3, align 8
  %37 = getelementptr inbounds %struct.sent_pdu, %struct.sent_pdu* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load i32 (i32*, void (i8*)*, %struct.sent_pdu*)*, i32 (i32*, void (i8*)*, %struct.sent_pdu*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmp_client, i32 0, i32 2), align 8
  %39 = load %struct.sent_pdu*, %struct.sent_pdu** %3, align 8
  %40 = call i32 %38(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmp_client, i32 0, i32 1), void (i8*)* @snmp_timeout, %struct.sent_pdu* %39)
  %41 = load %struct.sent_pdu*, %struct.sent_pdu** %3, align 8
  %42 = getelementptr inbounds %struct.sent_pdu, %struct.sent_pdu* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %31, %15
  ret void
}

declare dso_local i32 @LIST_REMOVE(%struct.sent_pdu*, i32) #1

declare dso_local i32 @free(%struct.sent_pdu*) #1

declare dso_local i32 @snmp_send_packet(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
