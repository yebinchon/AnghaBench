; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_parse_syntax_uint32.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_parse_syntax_uint32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_value = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@token = common dso_local global i64 0, align 8
@TOK_NUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"bad number syntax\00", align 1
@numval = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"number too large\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snmp_value*)* @parse_syntax_uint32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_syntax_uint32(%struct.snmp_value* %0) #0 {
  %2 = alloca %struct.snmp_value*, align 8
  store %struct.snmp_value* %0, %struct.snmp_value** %2, align 8
  %3 = load i64, i64* @token, align 8
  %4 = load i64, i64* @TOK_NUM, align 8
  %5 = icmp ne i64 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @report(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i32, i32* @numval, align 4
  %10 = icmp ugt i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i32 @report(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %8
  %14 = load i32, i32* @numval, align 4
  %15 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %16 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = call i32 (...) @gettoken()
  ret void
}

declare dso_local i32 @report(i8*) #1

declare dso_local i32 @gettoken(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
