; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_snmp_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_snmp_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, %struct.sent_pdu*, %struct.sent_pdu*, i32 (i32*)* }
%struct.sent_pdu = type { i32* }

@snmp_client = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@sent_pdus = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snmp_close() #0 {
  %1 = alloca %struct.sent_pdu*, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmp_client, i32 0, i32 0), align 8
  %3 = icmp ne i32 %2, -1
  br i1 %3, label %4, label %16

4:                                                ; preds = %0
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmp_client, i32 0, i32 0), align 8
  %6 = call i32 @close(i32 %5)
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmp_client, i32 0, i32 0), align 8
  %7 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmp_client, i32 0, i32 1), align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmp_client, i32 0, i32 1), align 8
  %14 = call i32 @remove(i8* %13)
  br label %15

15:                                               ; preds = %12, %4
  br label %16

16:                                               ; preds = %15, %0
  br label %17

17:                                               ; preds = %33, %16
  %18 = call i32 @LIST_EMPTY(i32* @sent_pdus)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = call %struct.sent_pdu* @LIST_FIRST(i32* @sent_pdus)
  store %struct.sent_pdu* %22, %struct.sent_pdu** %1, align 8
  %23 = load %struct.sent_pdu*, %struct.sent_pdu** %1, align 8
  %24 = getelementptr inbounds %struct.sent_pdu, %struct.sent_pdu* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmp_client, i32 0, i32 4), align 8
  %29 = load %struct.sent_pdu*, %struct.sent_pdu** %1, align 8
  %30 = getelementptr inbounds %struct.sent_pdu, %struct.sent_pdu* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 %28(i32* %31)
  br label %33

33:                                               ; preds = %27, %21
  %34 = load %struct.sent_pdu*, %struct.sent_pdu** %1, align 8
  %35 = load i32, i32* @entries, align 4
  %36 = call i32 @LIST_REMOVE(%struct.sent_pdu* %34, i32 %35)
  %37 = load %struct.sent_pdu*, %struct.sent_pdu** %1, align 8
  %38 = call i32 @free(%struct.sent_pdu* %37)
  br label %17

39:                                               ; preds = %17
  %40 = load %struct.sent_pdu*, %struct.sent_pdu** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmp_client, i32 0, i32 3), align 8
  %41 = call i32 @free(%struct.sent_pdu* %40)
  %42 = load %struct.sent_pdu*, %struct.sent_pdu** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmp_client, i32 0, i32 2), align 8
  %43 = call i32 @free(%struct.sent_pdu* %42)
  ret void
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @remove(i8*) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local %struct.sent_pdu* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.sent_pdu*, i32) #1

declare dso_local i32 @free(%struct.sent_pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
