; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpagent.c_rollback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmpagent.c_rollback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_4__, i32*, %struct.snmp_node** }
%struct.TYPE_4__ = type { i32* }
%struct.snmp_node = type { i32 (%struct.TYPE_4__*, %struct.snmp_value*, i32, i32, i32)*, i32, %struct.TYPE_3__ }
%struct.snmp_value = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.snmp_pdu = type { i64, i64, i32, %struct.snmp_value* }

@SNMP_OP_ROLLBACK = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"set: rollback failed (%d) on variable %s index %u\00", align 1
@SNMP_V1 = common dso_local global i64 0, align 8
@SNMP_ERR_UNDO_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*, %struct.snmp_pdu*, i64)* @rollback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rollback(%struct.context* %0, %struct.snmp_pdu* %1, i64 %2) #0 {
  %4 = alloca %struct.context*, align 8
  %5 = alloca %struct.snmp_pdu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.snmp_value*, align 8
  %8 = alloca %struct.snmp_node*, align 8
  %9 = alloca i32, align 4
  store %struct.context* %0, %struct.context** %4, align 8
  store %struct.snmp_pdu* %1, %struct.snmp_pdu** %5, align 8
  store i64 %2, i64* %6, align 8
  br label %10

10:                                               ; preds = %71, %3
  %11 = load i64, i64* %6, align 8
  %12 = add i64 %11, -1
  store i64 %12, i64* %6, align 8
  %13 = icmp ugt i64 %11, 0
  br i1 %13, label %14, label %72

14:                                               ; preds = %10
  %15 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %16 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %15, i32 0, i32 3
  %17 = load %struct.snmp_value*, %struct.snmp_value** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %17, i64 %18
  store %struct.snmp_value* %19, %struct.snmp_value** %7, align 8
  %20 = load %struct.context*, %struct.context** %4, align 8
  %21 = getelementptr inbounds %struct.context, %struct.context* %20, i32 0, i32 2
  %22 = load %struct.snmp_node**, %struct.snmp_node*** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.snmp_node*, %struct.snmp_node** %22, i64 %23
  %25 = load %struct.snmp_node*, %struct.snmp_node** %24, align 8
  store %struct.snmp_node* %25, %struct.snmp_node** %8, align 8
  %26 = load %struct.context*, %struct.context** %4, align 8
  %27 = getelementptr inbounds %struct.context, %struct.context* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load %struct.context*, %struct.context** %4, align 8
  %32 = getelementptr inbounds %struct.context, %struct.context* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32* %30, i32** %33, align 8
  %34 = load %struct.snmp_node*, %struct.snmp_node** %8, align 8
  %35 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_4__*, %struct.snmp_value*, i32, i32, i32)*, i32 (%struct.TYPE_4__*, %struct.snmp_value*, i32, i32, i32)** %35, align 8
  %37 = load %struct.context*, %struct.context** %4, align 8
  %38 = getelementptr inbounds %struct.context, %struct.context* %37, i32 0, i32 0
  %39 = load %struct.snmp_value*, %struct.snmp_value** %7, align 8
  %40 = load %struct.snmp_node*, %struct.snmp_node** %8, align 8
  %41 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.snmp_node*, %struct.snmp_node** %8, align 8
  %45 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SNMP_OP_ROLLBACK, align 4
  %48 = call i32 %36(%struct.TYPE_4__* %38, %struct.snmp_value* %39, i32 %43, i32 %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %14
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.snmp_value*, %struct.snmp_value** %7, align 8
  %55 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %54, i32 0, i32 0
  %56 = call i32 @asn_oid2str(i32* %55)
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @snmp_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56, i64 %57)
  %59 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %60 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SNMP_V1, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %52
  %65 = load i32, i32* @SNMP_ERR_UNDO_FAILED, align 4
  %66 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %67 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.snmp_pdu*, %struct.snmp_pdu** %5, align 8
  %69 = getelementptr inbounds %struct.snmp_pdu, %struct.snmp_pdu* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %64, %52
  br label %71

71:                                               ; preds = %70, %14
  br label %10

72:                                               ; preds = %10
  ret void
}

declare dso_local i32 @snmp_error(i8*, i32, i32, i64) #1

declare dso_local i32 @asn_oid2str(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
