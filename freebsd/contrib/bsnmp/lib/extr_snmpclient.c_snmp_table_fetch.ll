; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_snmp_table_fetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_snmp_table_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_table = type { i32 }
%struct.snmp_pdu = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.tabwork = type { i32, %struct.TYPE_7__, i64, i32*, i32*, %struct.table, %struct.table*, i64, %struct.snmp_table* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.table = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snmp_table_fetch(%struct.snmp_table* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snmp_table*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snmp_pdu, align 8
  %7 = alloca %struct.tabwork, align 8
  %8 = alloca i32, align 4
  store %struct.snmp_table* %0, %struct.snmp_table** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.snmp_table*, %struct.snmp_table** %4, align 8
  %10 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %7, i32 0, i32 8
  store %struct.snmp_table* %9, %struct.snmp_table** %10, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.table*
  %13 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %7, i32 0, i32 6
  store %struct.table* %12, %struct.table** %13, align 8
  %14 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %7, i32 0, i32 7
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %7, i32 0, i32 6
  %16 = load %struct.table*, %struct.table** %15, align 8
  %17 = call i32 @TAILQ_INIT(%struct.table* %16)
  %18 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %7, i32 0, i32 5
  %19 = call i32 @TAILQ_INIT(%struct.table* %18)
  %20 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %7, i32 0, i32 4
  store i32* null, i32** %20, align 8
  %21 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %7, i32 0, i32 3
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %79, %48, %2
  %23 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %7, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %7, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.snmp_table*, %struct.snmp_table** %4, align 8
  %26 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %7, i32 0, i32 1
  %27 = call i32 @table_init_pdu(%struct.snmp_table* %25, %struct.TYPE_7__* %26)
  br label %28

28:                                               ; preds = %50, %22
  %29 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %7, i32 0, i32 1
  %30 = call i64 @snmp_dialog(%struct.TYPE_7__* %29, %struct.snmp_pdu* %6)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 @table_free(%struct.tabwork* %7, i32 1)
  store i32 -1, i32* %3, align 4
  br label %83

34:                                               ; preds = %28
  %35 = call i32 @table_check_response(%struct.tabwork* %7, %struct.snmp_pdu* %6)
  store i32 %35, i32* %8, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %6)
  br label %71

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %6)
  %44 = call i32 @table_free(%struct.tabwork* %7, i32 1)
  store i32 -1, i32* %3, align 4
  br label %83

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, -2
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %6)
  br label %22

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %6, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %7, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.tabwork, %struct.tabwork* %7, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i32 %59, i32* %69, align 4
  %70 = call i32 @snmp_pdu_free(%struct.snmp_pdu* %6)
  br label %28

71:                                               ; preds = %37
  %72 = call i32 @table_check_cons(%struct.tabwork* %7)
  store i32 %72, i32* %8, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call i32 @table_free(%struct.tabwork* %7, i32 1)
  store i32 -1, i32* %3, align 4
  br label %83

76:                                               ; preds = %71
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %77, -2
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = call i32 @table_free(%struct.tabwork* %7, i32 1)
  br label %22

81:                                               ; preds = %76
  %82 = call i32 @table_free(%struct.tabwork* %7, i32 0)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %74, %42, %32
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @TAILQ_INIT(%struct.table*) #1

declare dso_local i32 @table_init_pdu(%struct.snmp_table*, %struct.TYPE_7__*) #1

declare dso_local i64 @snmp_dialog(%struct.TYPE_7__*, %struct.snmp_pdu*) #1

declare dso_local i32 @table_free(%struct.tabwork*, i32) #1

declare dso_local i32 @table_check_response(%struct.tabwork*, %struct.snmp_pdu*) #1

declare dso_local i32 @snmp_pdu_free(%struct.snmp_pdu*) #1

declare dso_local i32 @table_check_cons(%struct.tabwork*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
