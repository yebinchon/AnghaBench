; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_snmp_pdu_init_secparams.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_snmp_pdu_init_secparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_pdu = type { i32, i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@SNMP_AUTH_NOAUTH = common dso_local global i64 0, align 8
@SNMP_MSG_AUTH_FLAG = common dso_local global i32 0, align 4
@SNMP_MSG_PRIV_FLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snmp_pdu_init_secparams(%struct.snmp_pdu* %0) #0 {
  %2 = alloca %struct.snmp_pdu*, align 8
  %3 = alloca i32, align 4
  store %struct.snmp_pdu* %0, %struct.snmp_pdu** %2, align 8
  %4 = load %struct.snmp_pdu*, %struct.snmp_pdu** %2, align 8
  %5 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SNMP_AUTH_NOAUTH, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* @SNMP_MSG_AUTH_FLAG, align 4
  %12 = load %struct.snmp_pdu*, %struct.snmp_pdu** %2, align 8
  %13 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 8
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.snmp_pdu*, %struct.snmp_pdu** %2, align 8
  %18 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %61 [
    i32 128, label %21
    i32 129, label %42
  ]

21:                                               ; preds = %16
  %22 = load %struct.snmp_pdu*, %struct.snmp_pdu** %2, align 8
  %23 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.snmp_pdu*, %struct.snmp_pdu** %2, align 8
  %26 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @memcpy(i32 %24, i32* %27, i32 4)
  %29 = call i32 (...) @random()
  store i32 %29, i32* %3, align 4
  %30 = load %struct.snmp_pdu*, %struct.snmp_pdu** %2, align 8
  %31 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 %33, 4
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memcpy(i32 %35, i32* %3, i32 4)
  %37 = load i32, i32* @SNMP_MSG_PRIV_FLAG, align 4
  %38 = load %struct.snmp_pdu*, %struct.snmp_pdu** %2, align 8
  %39 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %62

42:                                               ; preds = %16
  %43 = call i32 (...) @random()
  store i32 %43, i32* %3, align 4
  %44 = load %struct.snmp_pdu*, %struct.snmp_pdu** %2, align 8
  %45 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @memcpy(i32 %46, i32* %3, i32 4)
  %48 = call i32 (...) @random()
  store i32 %48, i32* %3, align 4
  %49 = load %struct.snmp_pdu*, %struct.snmp_pdu** %2, align 8
  %50 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = call i32 @memcpy(i32 %54, i32* %3, i32 4)
  %56 = load i32, i32* @SNMP_MSG_PRIV_FLAG, align 4
  %57 = load %struct.snmp_pdu*, %struct.snmp_pdu** %2, align 8
  %58 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %62

61:                                               ; preds = %16
  br label %62

62:                                               ; preds = %61, %42, %21
  ret void
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
