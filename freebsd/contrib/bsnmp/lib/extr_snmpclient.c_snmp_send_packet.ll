; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_snmp_send_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_snmp_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.snmp_pdu = type { i32 }
%struct.asn_buf = type { i32*, i32 }

@snmp_client = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_pdu*)* @snmp_send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snmp_send_packet(%struct.snmp_pdu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snmp_pdu*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.asn_buf, align 8
  %6 = alloca i32, align 4
  store %struct.snmp_pdu* %0, %struct.snmp_pdu** %3, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmp_client, i32 0, i32 2), align 8
  %8 = call i32* @calloc(i32 1, i32 %7)
  store i32* %8, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @errno, align 4
  %12 = call i32 @strerror(i32 %11)
  %13 = call i32 @seterr(%struct.TYPE_4__* @snmp_client, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 -1, i32* %2, align 4
  br label %62

14:                                               ; preds = %1
  %15 = call i32 @snmp_next_reqid(%struct.TYPE_4__* @snmp_client)
  %16 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %17 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %5, i32 0, i32 0
  store i32* %18, i32** %19, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmp_client, i32 0, i32 2), align 8
  %21 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %5, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %23 = call i64 @snmp_pdu_encode(%struct.snmp_pdu* %22, %struct.asn_buf* %5)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %14
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 @strerror(i32 %26)
  %28 = call i32 @seterr(%struct.TYPE_4__* @snmp_client, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @free(i32* %29)
  store i32 -1, i32* %2, align 4
  br label %62

31:                                               ; preds = %14
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmp_client, i32 0, i32 1), align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %36 = call i32 @snmp_pdu_dump(%struct.snmp_pdu* %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmp_client, i32 0, i32 0), align 8
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds %struct.asn_buf, %struct.asn_buf* %5, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = ptrtoint i32* %41 to i64
  %44 = ptrtoint i32* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 4
  %47 = inttoptr i64 %46 to i32*
  %48 = call i32 @send(i32 %38, i32* %39, i32* %47, i32 0)
  store i32 %48, i32* %6, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %56

50:                                               ; preds = %37
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 @strerror(i32 %51)
  %53 = call i32 @seterr(%struct.TYPE_4__* @snmp_client, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @free(i32* %54)
  store i32 -1, i32* %2, align 4
  br label %62

56:                                               ; preds = %37
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @free(i32* %57)
  %59 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %60 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %56, %50, %25, %10
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @seterr(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @snmp_next_reqid(%struct.TYPE_4__*) #1

declare dso_local i64 @snmp_pdu_encode(%struct.snmp_pdu*, %struct.asn_buf*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @snmp_pdu_dump(%struct.snmp_pdu*) #1

declare dso_local i32 @send(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
