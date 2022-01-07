; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_snmp_pdu_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_snmp_pdu_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (i32*, i32, %struct.sent_pdu*)* }
%struct.sent_pdu = type { i32, i32, i8*, i32, i32, i32, %struct.snmp_pdu* }
%struct.snmp_pdu = type { i32 }

@snmp_client = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"gettimeofday() failed\00", align 1
@snmp_timeout = common dso_local global i32 0, align 4
@sent_pdus = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_pdu_send(%struct.snmp_pdu* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_pdu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sent_pdu*, align 8
  %9 = alloca i32, align 4
  store %struct.snmp_pdu* %0, %struct.snmp_pdu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = call %struct.sent_pdu* @malloc(i32 40)
  store %struct.sent_pdu* %10, %struct.sent_pdu** %8, align 8
  %11 = icmp eq %struct.sent_pdu* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* @errno, align 4
  %14 = call i32 @strerror(i32 %13)
  %15 = call i32 @seterr(%struct.TYPE_3__* @snmp_client, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 -1, i32* %4, align 4
  br label %57

16:                                               ; preds = %3
  %17 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %18 = call i32 @snmp_send_packet(%struct.snmp_pdu* %17)
  store i32 %18, i32* %9, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.sent_pdu*, %struct.sent_pdu** %8, align 8
  %22 = call i32 @free(%struct.sent_pdu* %21)
  store i32 -1, i32* %4, align 4
  br label %57

23:                                               ; preds = %16
  %24 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %25 = load %struct.sent_pdu*, %struct.sent_pdu** %8, align 8
  %26 = getelementptr inbounds %struct.sent_pdu, %struct.sent_pdu* %25, i32 0, i32 6
  store %struct.snmp_pdu* %24, %struct.snmp_pdu** %26, align 8
  %27 = load %struct.sent_pdu*, %struct.sent_pdu** %8, align 8
  %28 = getelementptr inbounds %struct.sent_pdu, %struct.sent_pdu* %27, i32 0, i32 5
  %29 = call i32 @gettimeofday(i32* %28, i32* null)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = call i32 @warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %23
  %34 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %35 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sent_pdu*, %struct.sent_pdu** %8, align 8
  %38 = getelementptr inbounds %struct.sent_pdu, %struct.sent_pdu* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.sent_pdu*, %struct.sent_pdu** %8, align 8
  %41 = getelementptr inbounds %struct.sent_pdu, %struct.sent_pdu* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.sent_pdu*, %struct.sent_pdu** %8, align 8
  %44 = getelementptr inbounds %struct.sent_pdu, %struct.sent_pdu* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.sent_pdu*, %struct.sent_pdu** %8, align 8
  %46 = getelementptr inbounds %struct.sent_pdu, %struct.sent_pdu* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load i32 (i32*, i32, %struct.sent_pdu*)*, i32 (i32*, i32, %struct.sent_pdu*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snmp_client, i32 0, i32 1), align 8
  %48 = load i32, i32* @snmp_timeout, align 4
  %49 = load %struct.sent_pdu*, %struct.sent_pdu** %8, align 8
  %50 = call i32 %47(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snmp_client, i32 0, i32 0), i32 %48, %struct.sent_pdu* %49)
  %51 = load %struct.sent_pdu*, %struct.sent_pdu** %8, align 8
  %52 = getelementptr inbounds %struct.sent_pdu, %struct.sent_pdu* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.sent_pdu*, %struct.sent_pdu** %8, align 8
  %54 = load i32, i32* @entries, align 4
  %55 = call i32 @LIST_INSERT_HEAD(i32* @sent_pdus, %struct.sent_pdu* %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %33, %20, %12
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.sent_pdu* @malloc(i32) #1

declare dso_local i32 @seterr(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @snmp_send_packet(%struct.snmp_pdu*) #1

declare dso_local i32 @free(%struct.sent_pdu*) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.sent_pdu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
