; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_snmp_table_fetch_async.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_snmp_table_fetch_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_table = type { i32 }
%struct.tabwork = type { i32, i32, i64, i8*, i32, %struct.table, %struct.table*, i64, %struct.snmp_table* }
%struct.table = type { i32 }

@snmp_client = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@errno = common dso_local global i32 0, align 4
@table_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_table_fetch_async(%struct.snmp_table* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snmp_table*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.tabwork*, align 8
  store %struct.snmp_table* %0, %struct.snmp_table** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = call %struct.tabwork* @malloc(i32 56)
  store %struct.tabwork* %11, %struct.tabwork** %10, align 8
  %12 = icmp eq %struct.tabwork* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i32, i32* @errno, align 4
  %15 = call i32 @strerror(i32 %14)
  %16 = call i32 @seterr(i32* @snmp_client, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 -1, i32* %5, align 4
  br label %58

17:                                               ; preds = %4
  %18 = load %struct.snmp_table*, %struct.snmp_table** %6, align 8
  %19 = load %struct.tabwork*, %struct.tabwork** %10, align 8
  %20 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %19, i32 0, i32 8
  store %struct.snmp_table* %18, %struct.snmp_table** %20, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.table*
  %23 = load %struct.tabwork*, %struct.tabwork** %10, align 8
  %24 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %23, i32 0, i32 6
  store %struct.table* %22, %struct.table** %24, align 8
  %25 = load %struct.tabwork*, %struct.tabwork** %10, align 8
  %26 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %25, i32 0, i32 7
  store i64 0, i64* %26, align 8
  %27 = load %struct.tabwork*, %struct.tabwork** %10, align 8
  %28 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %27, i32 0, i32 6
  %29 = load %struct.table*, %struct.table** %28, align 8
  %30 = call i32 @TAILQ_INIT(%struct.table* %29)
  %31 = load %struct.tabwork*, %struct.tabwork** %10, align 8
  %32 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %31, i32 0, i32 5
  %33 = call i32 @TAILQ_INIT(%struct.table* %32)
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.tabwork*, %struct.tabwork** %10, align 8
  %36 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load %struct.tabwork*, %struct.tabwork** %10, align 8
  %39 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load %struct.tabwork*, %struct.tabwork** %10, align 8
  %41 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.tabwork*, %struct.tabwork** %10, align 8
  %43 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.snmp_table*, %struct.snmp_table** %6, align 8
  %45 = load %struct.tabwork*, %struct.tabwork** %10, align 8
  %46 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %45, i32 0, i32 1
  %47 = call i32 @table_init_pdu(%struct.snmp_table* %44, i32* %46)
  %48 = load %struct.tabwork*, %struct.tabwork** %10, align 8
  %49 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %48, i32 0, i32 1
  %50 = load i32, i32* @table_cb, align 4
  %51 = load %struct.tabwork*, %struct.tabwork** %10, align 8
  %52 = call i32 @snmp_pdu_send(i32* %49, i32 %50, %struct.tabwork* %51)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %57

54:                                               ; preds = %17
  %55 = load %struct.tabwork*, %struct.tabwork** %10, align 8
  %56 = call i32 @free(%struct.tabwork* %55)
  store %struct.tabwork* null, %struct.tabwork** %10, align 8
  store i32 -1, i32* %5, align 4
  br label %58

57:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %54, %13
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.tabwork* @malloc(i32) #1

declare dso_local i32 @seterr(i32*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @TAILQ_INIT(%struct.table*) #1

declare dso_local i32 @table_init_pdu(%struct.snmp_table*, i32*) #1

declare dso_local i32 @snmp_pdu_send(i32*, i32, %struct.tabwork*) #1

declare dso_local i32 @free(%struct.tabwork*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
