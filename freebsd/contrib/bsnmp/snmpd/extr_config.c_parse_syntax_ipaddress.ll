; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_parse_syntax_ipaddress.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_parse_syntax_ipaddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_value = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@token = common dso_local global i64 0, align 8
@TOK_NUM = common dso_local global i64 0, align 8
@numval = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ip address part too large\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"expecting '.' in ip address\00", align 1
@TOK_HOST = common dso_local global i64 0, align 8
@strval = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"bad ip address syntax\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snmp_value*)* @parse_syntax_ipaddress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_syntax_ipaddress(%struct.snmp_value* %0) #0 {
  %2 = alloca %struct.snmp_value*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [4 x i32], align 16
  store %struct.snmp_value* %0, %struct.snmp_value** %2, align 8
  %5 = load i64, i64* @token, align 8
  %6 = load i64, i64* @TOK_NUM, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %36

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %33, %8
  %10 = load i32, i32* @numval, align 4
  %11 = icmp sge i32 %10, 256
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i32 @report(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %9
  %15 = load i32, i32* @numval, align 4
  %16 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %17 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  store i32 %15, i32* %23, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %34

27:                                               ; preds = %14
  %28 = call signext i8 (...) @gettoken()
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 46
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @report(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %27
  br label %9

34:                                               ; preds = %26
  %35 = call signext i8 (...) @gettoken()
  br label %67

36:                                               ; preds = %1
  %37 = load i64, i64* @token, align 8
  %38 = load i64, i64* @TOK_HOST, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %36
  %41 = load i32, i32* @strval, align 4
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %43 = call i32 @gethost(i32 %41, i32* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %59, %40
  %45 = load i32, i32* %3, align 4
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %53 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %51, i32* %58, align 4
  br label %59

59:                                               ; preds = %47
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %44

62:                                               ; preds = %44
  %63 = call signext i8 (...) @gettoken()
  br label %66

64:                                               ; preds = %36
  %65 = call i32 @report(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %62
  br label %67

67:                                               ; preds = %66, %34
  ret void
}

declare dso_local i32 @report(i8*) #1

declare dso_local signext i8 @gettoken(...) #1

declare dso_local i32 @gethost(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
