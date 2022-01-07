; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_snmp_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_main.c_snmp_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.snmp_pdu = type { i32 }
%struct.asn_buf = type { i32*, i32 }

@snmpd = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@SNMP_CODE_OK = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cannot encode message (code=%d)\00", align 1
@debug = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%s <- \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snmp_output(%struct.snmp_pdu* %0, i32* %1, i64* %2, i8* %3) #0 {
  %5 = alloca %struct.snmp_pdu*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.asn_buf, align 8
  %10 = alloca i32, align 4
  store %struct.snmp_pdu* %0, %struct.snmp_pdu** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %9, i32 0, i32 0
  store i32* %11, i32** %12, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @snmpd, i32 0, i32 0), align 4
  %14 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %9, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %16 = call i32 @snmp_pdu_encode(%struct.snmp_pdu* %15, %struct.asn_buf* %9)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @SNMP_CODE_OK, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i32, i32* @LOG_ERR, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @syslog(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = call i32 (...) @abort() #3
  unreachable

24:                                               ; preds = %4
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @debug, i32 0, i32 0), align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i8*, i8** %8, align 8
  %29 = call i32 @snmp_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %31 = call i32 @snmp_pdu_dump(%struct.snmp_pdu* %30)
  br label %32

32:                                               ; preds = %27, %24
  %33 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %9, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = ptrtoint i32* %34 to i64
  %37 = ptrtoint i32* %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 4
  %40 = load i64*, i64** %7, align 8
  store i64 %39, i64* %40, align 8
  ret void
}

declare dso_local i32 @snmp_pdu_encode(%struct.snmp_pdu*, %struct.asn_buf*) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @snmp_printf(i8*, i8*) #1

declare dso_local i32 @snmp_pdu_dump(%struct.snmp_pdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
