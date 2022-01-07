; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_action.c_init_snmpd_engine.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_action.c_init_snmpd_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32*, i32 }

@snmpd_engine = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@OID_freeBSD = common dso_local global i32 0, align 4
@KERN_HOSTID = common dso_local global i32 0, align 4
@SNMP_ENGINE_ID_SIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_snmpd_engine() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_engine, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_engine, i32 0, i32 1), align 4
  store i32 1500, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_engine, i32 0, i32 2), align 8
  %3 = load i32, i32* @OID_freeBSD, align 4
  %4 = and i32 %3, -16777216
  %5 = lshr i32 %4, 24
  %6 = or i32 %5, 128
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_engine, i32 0, i32 3), align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @OID_freeBSD, align 4
  %10 = and i32 %9, 16711680
  %11 = ashr i32 %10, 16
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_engine, i32 0, i32 3), align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @OID_freeBSD, align 4
  %15 = and i32 %14, 65280
  %16 = ashr i32 %15, 8
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_engine, i32 0, i32 3), align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @OID_freeBSD, align 4
  %20 = and i32 %19, 255
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_engine, i32 0, i32 3), align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 3
  store i32 %20, i32* %22, align 4
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_engine, i32 0, i32 3), align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 4
  store i32 128, i32* %24, align 4
  store i32 5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_engine, i32 0, i32 4), align 8
  %25 = load i32, i32* @KERN_HOSTID, align 4
  %26 = call i8* @act_getkernint(i32 %25)
  store i8* %26, i8** %2, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %63

29:                                               ; preds = %0
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = load i32, i32* @SNMP_ENGINE_ID_SIZ, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_engine, i32 0, i32 4), align 8
  %34 = sub nsw i32 %32, %33
  %35 = icmp sgt i32 %31, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %29
  %37 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_engine, i32 0, i32 3), align 8
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_engine, i32 0, i32 4), align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i8*, i8** %2, align 8
  %42 = load i32, i32* @SNMP_ENGINE_ID_SIZ, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_engine, i32 0, i32 4), align 8
  %44 = sub nsw i32 %42, %43
  %45 = call i32 @memcpy(i32* %40, i8* %41, i32 %44)
  %46 = load i32, i32* @SNMP_ENGINE_ID_SIZ, align 4
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_engine, i32 0, i32 4), align 8
  br label %60

47:                                               ; preds = %29
  %48 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_engine, i32 0, i32 3), align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_engine, i32 0, i32 4), align 8
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i8*, i8** %2, align 8
  %53 = load i8*, i8** %2, align 8
  %54 = call i32 @strlen(i8* %53)
  %55 = call i32 @memcpy(i32* %51, i8* %52, i32 %54)
  %56 = load i8*, i8** %2, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_engine, i32 0, i32 4), align 8
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @snmpd_engine, i32 0, i32 4), align 8
  br label %60

60:                                               ; preds = %47, %36
  %61 = load i8*, i8** %2, align 8
  %62 = call i32 @free(i8* %61)
  store i32 0, i32* %1, align 4
  br label %63

63:                                               ; preds = %60, %28
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

declare dso_local i8* @act_getkernint(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
