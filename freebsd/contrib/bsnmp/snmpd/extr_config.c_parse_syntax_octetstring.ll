; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_parse_syntax_octetstring.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_config.c_parse_syntax_octetstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32* }

@token = common dso_local global i64 0, align 8
@TOK_STR = common dso_local global i64 0, align 8
@strvallen = common dso_local global i64 0, align 8
@strval = common dso_local global i32 0, align 4
@TOK_NUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"bad OCTETSTRING syntax\00", align 1
@numval = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"byte value too large\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snmp_value*)* @parse_syntax_octetstring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_syntax_octetstring(%struct.snmp_value* %0) #0 {
  %2 = alloca %struct.snmp_value*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  store %struct.snmp_value* %0, %struct.snmp_value** %2, align 8
  %5 = load i64, i64* @token, align 8
  %6 = load i64, i64* @TOK_STR, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = load i64, i64* @strvallen, align 8
  %10 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %11 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i64 %9, i64* %13, align 8
  %14 = load i64, i64* @strvallen, align 8
  %15 = call i32* @malloc(i64 %14)
  %16 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %17 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i32* %15, i32** %19, align 8
  %20 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %21 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @strval, align 4
  %26 = load i64, i64* @strvallen, align 8
  %27 = call i32 @memcpy(i32* %24, i32 %25, i64 %26)
  %28 = call signext i8 (...) @gettoken()
  br label %115

29:                                               ; preds = %1
  %30 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %31 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32* null, i32** %33, align 8
  %34 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %35 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load i64, i64* @token, align 8
  %39 = load i64, i64* @TOK_NUM, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %115

42:                                               ; preds = %29
  %43 = call i64 (...) @ERRPUSH()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %47 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @free(i32* %50)
  %52 = call i32 (...) @ERRNEXT()
  br label %53

53:                                               ; preds = %45, %42
  store i64 0, i64* %3, align 8
  br label %54

54:                                               ; preds = %111, %53
  %55 = load i64, i64* @token, align 8
  %56 = load i64, i64* @TOK_NUM, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 @report(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i32, i32* @numval, align 4
  %62 = icmp sgt i32 %61, 255
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 @report(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %60
  %66 = load i64, i64* %3, align 8
  %67 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %68 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %66, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %65
  %74 = load i64, i64* %3, align 8
  %75 = add nsw i64 %74, 100
  store i64 %75, i64* %3, align 8
  %76 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %77 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %3, align 8
  %82 = call i32* @realloc(i32* %80, i64 %81)
  store i32* %82, i32** %4, align 8
  %83 = load i32*, i32** %4, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %73
  %86 = call i32 @report(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %73
  %88 = load i32*, i32** %4, align 8
  %89 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %90 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store i32* %88, i32** %92, align 8
  br label %93

93:                                               ; preds = %87, %65
  %94 = load i32, i32* @numval, align 4
  %95 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %96 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.snmp_value*, %struct.snmp_value** %2, align 8
  %101 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %103, align 8
  %106 = getelementptr inbounds i32, i32* %99, i64 %104
  store i32 %94, i32* %106, align 4
  %107 = call signext i8 (...) @gettoken()
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 58
  br i1 %109, label %110, label %111

110:                                              ; preds = %93
  br label %113

111:                                              ; preds = %93
  %112 = call signext i8 (...) @gettoken()
  br label %54

113:                                              ; preds = %110
  %114 = call i32 (...) @ERRPOP()
  br label %115

115:                                              ; preds = %113, %41, %8
  ret void
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local signext i8 @gettoken(...) #1

declare dso_local i64 @ERRPUSH(...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @ERRNEXT(...) #1

declare dso_local i32 @report(i8*) #1

declare dso_local i32* @realloc(i32*, i64) #1

declare dso_local i32 @ERRPOP(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
