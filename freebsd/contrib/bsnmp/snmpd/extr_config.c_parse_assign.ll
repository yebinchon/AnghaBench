; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_parse_assign.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_parse_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_value = type { i32 }
%struct.asn_oid = type { i32 }
%struct.snmp_node = type { i32 }

@token = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [23 x i8] c"'=' expected, got '%c'\00", align 1
@ignore = common dso_local global i64 0, align 8
@TOK_EOL = common dso_local global i8 0, align 1
@TOK_EOF = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"unknown variable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @parse_assign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_assign(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.snmp_value, align 4
  %4 = alloca %struct.asn_oid, align 4
  %5 = alloca %struct.snmp_node*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call %struct.snmp_node* @parse_oid(i8* %6, %struct.asn_oid* %4)
  store %struct.snmp_node* %7, %struct.snmp_node** %5, align 8
  %8 = load i8, i8* @token, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 61
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i8, i8* @token, align 1
  %13 = sext i8 %12 to i32
  %14 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %11, %1
  %16 = call i32 (...) @gettoken()
  %17 = load i64, i64* @ignore, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %34, %19
  %21 = load i8, i8* @token, align 1
  %22 = sext i8 %21 to i32
  %23 = load i8, i8* @TOK_EOL, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i8, i8* @token, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* @TOK_EOF, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %28, %30
  br label %32

32:                                               ; preds = %26, %20
  %33 = phi i1 [ false, %20 ], [ %31, %26 ]
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  %35 = call i32 (...) @gettoken()
  br label %20

36:                                               ; preds = %32
  br label %73

37:                                               ; preds = %15
  %38 = load %struct.snmp_node*, %struct.snmp_node** %5, align 8
  %39 = icmp eq %struct.snmp_node* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 (i8*, ...) @report(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37
  %43 = load %struct.snmp_node*, %struct.snmp_node** %5, align 8
  %44 = getelementptr inbounds %struct.snmp_node, %struct.snmp_node* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %3, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  switch i32 %45, label %63 [
    i32 131, label %47
    i32 135, label %49
    i32 138, label %51
    i32 130, label %53
    i32 129, label %55
    i32 134, label %57
    i32 139, label %59
    i32 136, label %59
    i32 128, label %59
    i32 132, label %61
    i32 133, label %61
    i32 137, label %61
  ]

47:                                               ; preds = %42
  %48 = call i32 @parse_syntax_null(%struct.snmp_value* %3)
  br label %63

49:                                               ; preds = %42
  %50 = call i32 @parse_syntax_integer(%struct.snmp_value* %3)
  br label %63

51:                                               ; preds = %42
  %52 = call i32 @parse_syntax_counter64(%struct.snmp_value* %3)
  br label %63

53:                                               ; preds = %42
  %54 = call i32 @parse_syntax_octetstring(%struct.snmp_value* %3)
  br label %63

55:                                               ; preds = %42
  %56 = call i32 @parse_syntax_oid(%struct.snmp_value* %3)
  br label %63

57:                                               ; preds = %42
  %58 = call i32 @parse_syntax_ipaddress(%struct.snmp_value* %3)
  br label %63

59:                                               ; preds = %42, %42, %42
  %60 = call i32 @parse_syntax_uint32(%struct.snmp_value* %3)
  br label %63

61:                                               ; preds = %42, %42, %42
  %62 = call i32 (...) @abort() #3
  unreachable

63:                                               ; preds = %42, %59, %57, %55, %53, %51, %49, %47
  %64 = call i64 (...) @ERRPUSH()
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = call i32 @snmp_value_free(%struct.snmp_value* %3)
  %68 = call i32 (...) @ERRNEXT()
  br label %69

69:                                               ; preds = %66, %63
  %70 = load %struct.snmp_node*, %struct.snmp_node** %5, align 8
  %71 = call i32 @handle_assignment(%struct.snmp_node* %70, %struct.asn_oid* %4, %struct.snmp_value* %3)
  %72 = call i32 (...) @ERRPOP()
  br label %73

73:                                               ; preds = %69, %36
  ret void
}

declare dso_local %struct.snmp_node* @parse_oid(i8*, %struct.asn_oid*) #1

declare dso_local i32 @report(i8*, ...) #1

declare dso_local i32 @gettoken(...) #1

declare dso_local i32 @parse_syntax_null(%struct.snmp_value*) #1

declare dso_local i32 @parse_syntax_integer(%struct.snmp_value*) #1

declare dso_local i32 @parse_syntax_counter64(%struct.snmp_value*) #1

declare dso_local i32 @parse_syntax_octetstring(%struct.snmp_value*) #1

declare dso_local i32 @parse_syntax_oid(%struct.snmp_value*) #1

declare dso_local i32 @parse_syntax_ipaddress(%struct.snmp_value*) #1

declare dso_local i32 @parse_syntax_uint32(%struct.snmp_value*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i64 @ERRPUSH(...) #1

declare dso_local i32 @snmp_value_free(%struct.snmp_value*) #1

declare dso_local i32 @ERRNEXT(...) #1

declare dso_local i32 @handle_assignment(%struct.snmp_node*, %struct.asn_oid*, %struct.snmp_value*) #1

declare dso_local i32 @ERRPOP(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
