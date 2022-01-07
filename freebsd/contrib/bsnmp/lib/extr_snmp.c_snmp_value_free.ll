; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_snmp_value_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/lib/extr_snmp.c_snmp_value_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_value = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@SNMP_SYNTAX_OCTETSTRING = common dso_local global i64 0, align 8
@SNMP_SYNTAX_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snmp_value_free(%struct.snmp_value* %0) #0 {
  %2 = alloca %struct.snmp_value*, align 8
  store %struct.snmp_value* %0, %struct.snmp_value** %2, align 8
  %3 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %4 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @SNMP_SYNTAX_OCTETSTRING, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %10 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @free(i32* %13)
  %15 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %16 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %8, %1
  %20 = load i64, i64* @SNMP_SYNTAX_NULL, align 8
  %21 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %22 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  ret void
}

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
