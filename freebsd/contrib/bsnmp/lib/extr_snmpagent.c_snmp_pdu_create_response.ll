; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpagent.c_snmp_pdu_create_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpagent.c_snmp_pdu_create_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_pdu = type { i64, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32 }

@SNMP_MSG_AUTODISCOVER = common dso_local global i32 0, align 4
@SNMP_PDU_REPORT = common dso_local global i32 0, align 4
@SNMP_PDU_RESPONSE = common dso_local global i32 0, align 4
@SNMP_V3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snmp_pdu*, %struct.snmp_pdu*)* @snmp_pdu_create_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snmp_pdu_create_response(%struct.snmp_pdu* %0, %struct.snmp_pdu* %1) #0 {
  %3 = alloca %struct.snmp_pdu*, align 8
  %4 = alloca %struct.snmp_pdu*, align 8
  store %struct.snmp_pdu* %0, %struct.snmp_pdu** %3, align 8
  store %struct.snmp_pdu* %1, %struct.snmp_pdu** %4, align 8
  %5 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %6 = call i32 @memset(%struct.snmp_pdu* %5, i32 0, i32 64)
  %7 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %8 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %7, i32 0, i32 11
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %11 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %10, i32 0, i32 11
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @strcpy(i32 %9, i32 %12)
  %14 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %15 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %18 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %20 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SNMP_MSG_AUTODISCOVER, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @SNMP_PDU_REPORT, align 4
  %27 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %28 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %27, i32 0, i32 10
  store i32 %26, i32* %28, align 4
  br label %33

29:                                               ; preds = %2
  %30 = load i32, i32* @SNMP_PDU_RESPONSE, align 4
  %31 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %32 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %31, i32 0, i32 10
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %35 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %38 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %37, i32 0, i32 9
  store i32 %36, i32* %38, align 8
  %39 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %40 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %43 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %45 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SNMP_V3, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %33
  br label %95

50:                                               ; preds = %33
  %51 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %52 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %51, i32 0, i32 8
  %53 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %54 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %53, i32 0, i32 8
  %55 = call i32 @memcpy(i32* %52, i32* %54, i32 4)
  %56 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %57 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %56, i32 0, i32 7
  %58 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %59 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %58, i32 0, i32 7
  %60 = call i32 @memcpy(i32* %57, i32* %59, i32 4)
  %61 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %62 = call i32 @snmp_pdu_init_secparams(%struct.snmp_pdu* %61)
  %63 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %64 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %67 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %66, i32 0, i32 6
  store i32 %65, i32* %67, align 4
  %68 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %69 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %72 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 8
  %73 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %74 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %77 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %79 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %82 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %81, i32 0, i32 4
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %85 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @memcpy(i32* %80, i32* %83, i32 %86)
  %88 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %89 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.snmp_pdu*, %struct.snmp_pdu** %3, align 8
  %92 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @strlcpy(i32 %90, i32 %93, i32 4)
  br label %95

95:                                               ; preds = %50, %49
  ret void
}

declare dso_local i32 @memset(%struct.snmp_pdu*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @snmp_pdu_init_secparams(%struct.snmp_pdu*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
