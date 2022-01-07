; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_snmp_client_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_snmp_client_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_client = type { i32, i32, i32, i32, %struct.TYPE_4__, i64, i64, i32, i64, %struct.TYPE_3__, i32, i32, i32, i32, i32*, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }

@SNMP_V2c = common dso_local global i32 0, align 4
@SNMP_TRANS_UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@SNMP_SECMODEL_USM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@INT32_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snmp_client_init(%struct.snmp_client* %0) #0 {
  %2 = alloca %struct.snmp_client*, align 8
  store %struct.snmp_client* %0, %struct.snmp_client** %2, align 8
  %3 = load %struct.snmp_client*, %struct.snmp_client** %2, align 8
  %4 = call i32 @memset(%struct.snmp_client* %3, i32 0, i32 112)
  %5 = load i32, i32* @SNMP_V2c, align 4
  %6 = load %struct.snmp_client*, %struct.snmp_client** %2, align 8
  %7 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %6, i32 0, i32 17
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @SNMP_TRANS_UDP, align 4
  %9 = load %struct.snmp_client*, %struct.snmp_client** %2, align 8
  %10 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %9, i32 0, i32 16
  store i32 %8, i32* %10, align 8
  %11 = load %struct.snmp_client*, %struct.snmp_client** %2, align 8
  %12 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %11, i32 0, i32 15
  store i32* null, i32** %12, align 8
  %13 = load %struct.snmp_client*, %struct.snmp_client** %2, align 8
  %14 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %13, i32 0, i32 14
  store i32* null, i32** %14, align 8
  %15 = load %struct.snmp_client*, %struct.snmp_client** %2, align 8
  %16 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %15, i32 0, i32 13
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strcpy(i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.snmp_client*, %struct.snmp_client** %2, align 8
  %20 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %19, i32 0, i32 12
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @strcpy(i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @SNMP_SECMODEL_USM, align 4
  %24 = load %struct.snmp_client*, %struct.snmp_client** %2, align 8
  %25 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %24, i32 0, i32 11
  store i32 %23, i32* %25, align 4
  %26 = load %struct.snmp_client*, %struct.snmp_client** %2, align 8
  %27 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @strcpy(i32 %28, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %30 = load %struct.snmp_client*, %struct.snmp_client** %2, align 8
  %31 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %30, i32 0, i32 9
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 3, i32* %32, align 8
  %33 = load %struct.snmp_client*, %struct.snmp_client** %2, align 8
  %34 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %33, i32 0, i32 9
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.snmp_client*, %struct.snmp_client** %2, align 8
  %37 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %36, i32 0, i32 0
  store i32 3, i32* %37, align 8
  %38 = load %struct.snmp_client*, %struct.snmp_client** %2, align 8
  %39 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %38, i32 0, i32 8
  store i64 0, i64* %39, align 8
  %40 = load %struct.snmp_client*, %struct.snmp_client** %2, align 8
  %41 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %40, i32 0, i32 2
  store i32 10000, i32* %41, align 8
  %42 = load %struct.snmp_client*, %struct.snmp_client** %2, align 8
  %43 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %42, i32 0, i32 1
  store i32 10000, i32* %43, align 4
  %44 = load %struct.snmp_client*, %struct.snmp_client** %2, align 8
  %45 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %44, i32 0, i32 3
  store i32 -1, i32* %45, align 4
  %46 = load i32, i32* @INT32_MAX, align 4
  %47 = load %struct.snmp_client*, %struct.snmp_client** %2, align 8
  %48 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 8
  %49 = load %struct.snmp_client*, %struct.snmp_client** %2, align 8
  %50 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %49, i32 0, i32 6
  store i64 0, i64* %50, align 8
  %51 = load %struct.snmp_client*, %struct.snmp_client** %2, align 8
  %52 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %51, i32 0, i32 5
  store i64 0, i64* %52, align 8
  %53 = load %struct.snmp_client*, %struct.snmp_client** %2, align 8
  %54 = getelementptr inbounds %struct.snmp_client, %struct.snmp_client* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 1500, i32* %55, align 8
  ret void
}

declare dso_local i32 @memset(%struct.snmp_client*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
