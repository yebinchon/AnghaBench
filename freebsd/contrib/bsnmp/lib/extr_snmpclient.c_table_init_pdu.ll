; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_table_init_pdu.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpclient.c_table_init_pdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.snmp_table = type { %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.snmp_pdu = type { i32, i64, i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__ }

@snmp_client = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@SNMP_V1 = common dso_local global i64 0, align 8
@SNMP_PDU_GETNEXT = common dso_local global i32 0, align 4
@SNMP_PDU_GETBULK = common dso_local global i32 0, align 4
@SNMP_SYNTAX_NULL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snmp_table*, %struct.snmp_pdu*)* @table_init_pdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @table_init_pdu(%struct.snmp_table* %0, %struct.snmp_pdu* %1) #0 {
  %3 = alloca %struct.snmp_table*, align 8
  %4 = alloca %struct.snmp_pdu*, align 8
  store %struct.snmp_table* %0, %struct.snmp_table** %3, align 8
  store %struct.snmp_pdu* %1, %struct.snmp_pdu** %4, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @snmp_client, i32 0, i32 0), align 8
  %6 = load i64, i64* @SNMP_V1, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %10 = load i32, i32* @SNMP_PDU_GETNEXT, align 4
  %11 = call i32 @snmp_pdu_create(%struct.snmp_pdu* %9, i32 %10)
  br label %18

12:                                               ; preds = %2
  %13 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %14 = load i32, i32* @SNMP_PDU_GETBULK, align 4
  %15 = call i32 @snmp_pdu_create(%struct.snmp_pdu* %13, i32 %14)
  %16 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %17 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %16, i32 0, i32 0
  store i32 10, i32* %17, align 8
  br label %18

18:                                               ; preds = %12, %8
  %19 = load %struct.snmp_table*, %struct.snmp_table** %3, align 8
  %20 = getelementptr inbounds %struct.snmp_table, %struct.snmp_table* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %61

24:                                               ; preds = %18
  %25 = load i8*, i8** @SNMP_SYNTAX_NULL, align 8
  %26 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %27 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %26, i32 0, i32 3
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %30 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i8* %25, i8** %33, align 8
  %34 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %35 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %34, i32 0, i32 3
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %38 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load %struct.snmp_table*, %struct.snmp_table** %3, align 8
  %43 = getelementptr inbounds %struct.snmp_table, %struct.snmp_table* %42, i32 0, i32 1
  %44 = bitcast %struct.TYPE_4__* %41 to i8*
  %45 = bitcast %struct.TYPE_4__* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 8, i1 false)
  %46 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %47 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %51 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SNMP_V1, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %24
  %56 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %57 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %55, %24
  br label %61

61:                                               ; preds = %60, %18
  %62 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %63 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %62, i32 0, i32 3
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %66 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load %struct.snmp_table*, %struct.snmp_table** %3, align 8
  %71 = getelementptr inbounds %struct.snmp_table, %struct.snmp_table* %70, i32 0, i32 0
  %72 = bitcast %struct.TYPE_4__* %69 to i8*
  %73 = bitcast %struct.TYPE_4__* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 8, i1 false)
  %74 = load i8*, i8** @SNMP_SYNTAX_NULL, align 8
  %75 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %76 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %75, i32 0, i32 3
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %79 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i8* %74, i8** %82, align 8
  %83 = load %struct.snmp_pdu*, %struct.snmp_pdu** %4, align 8
  %84 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %84, align 8
  ret void
}

declare dso_local i32 @snmp_pdu_create(%struct.snmp_pdu*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
