; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_parse_syntax_oid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_parse_syntax_oid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64* }

@token = common dso_local global i64 0, align 8
@TOK_NUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"bad OID syntax\00", align 1
@numval = common dso_local global i64 0, align 8
@ASN_MAXID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"subid too large\00", align 1
@ASN_MAXOIDLEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"OID too long\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snmp_value*)* @parse_syntax_oid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_syntax_oid(%struct.snmp_value* %0) #0 {
  %2 = alloca %struct.snmp_value*, align 8
  store %struct.snmp_value* %0, %struct.snmp_value** %2, align 8
  %3 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %4 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i64 0, i64* %6, align 8
  %7 = load i64, i64* @token, align 8
  %8 = load i64, i64* @TOK_NUM, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %54

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %52, %11
  %13 = load i64, i64* @token, align 8
  %14 = load i64, i64* @TOK_NUM, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = call i32 @report(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %12
  %19 = load i64, i64* @numval, align 8
  %20 = load i64, i64* @ASN_MAXID, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @report(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18
  %25 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %26 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ASN_MAXOIDLEN, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = call i32 @report(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %24
  %35 = load i64, i64* @numval, align 8
  %36 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %37 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %42 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = getelementptr inbounds i64, i64* %40, i64 %45
  store i64 %35, i64* %47, align 8
  %48 = call signext i8 (...) @gettoken()
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 46
  br i1 %50, label %51, label %52

51:                                               ; preds = %34
  br label %54

52:                                               ; preds = %34
  %53 = call signext i8 (...) @gettoken()
  br label %12

54:                                               ; preds = %10, %51
  ret void
}

declare dso_local i32 @report(i8*) #1

declare dso_local signext i8 @gettoken(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
