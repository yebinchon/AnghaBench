; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trap.c_trapsink_dep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trap.c_trapsink_dep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_context = type { i32 }
%struct.snmp_dependency = type { i32 }
%struct.trapsink_dep = type { i32, i32, i32 }
%struct.trapsink = type { i32 }

@trapsink_list = common dso_local global i32 0, align 4
@TDEP_STATUS = common dso_local global i32 0, align 4
@SNMP_ERR_INCONS_VALUE = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@TDEP_CREATE = common dso_local global i32 0, align 4
@TDEP_MODIFY = common dso_local global i32 0, align 4
@TDEP_DESTROY = common dso_local global i32 0, align 4
@SNMP_RET_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_context*, %struct.snmp_dependency*, i32)* @trapsink_dep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trapsink_dep(%struct.snmp_context* %0, %struct.snmp_dependency* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_context*, align 8
  %6 = alloca %struct.snmp_dependency*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.trapsink_dep*, align 8
  %9 = alloca %struct.trapsink*, align 8
  store %struct.snmp_context* %0, %struct.snmp_context** %5, align 8
  store %struct.snmp_dependency* %1, %struct.snmp_dependency** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snmp_dependency*, %struct.snmp_dependency** %6, align 8
  %11 = bitcast %struct.snmp_dependency* %10 to %struct.trapsink_dep*
  store %struct.trapsink_dep* %11, %struct.trapsink_dep** %8, align 8
  %12 = load %struct.snmp_dependency*, %struct.snmp_dependency** %6, align 8
  %13 = getelementptr inbounds %struct.snmp_dependency, %struct.snmp_dependency* %12, i32 0, i32 0
  %14 = call %struct.trapsink* @FIND_OBJECT_OID(i32* @trapsink_list, i32* %13, i32 0)
  store %struct.trapsink* %14, %struct.trapsink** %9, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %123 [
    i32 130, label %16
    i32 128, label %67
    i32 129, label %102
  ]

16:                                               ; preds = %3
  %17 = load %struct.trapsink_dep*, %struct.trapsink_dep** %8, align 8
  %18 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TDEP_STATUS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %16
  %24 = load %struct.trapsink_dep*, %struct.trapsink_dep** %8, align 8
  %25 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %54 [
    i32 1, label %27
    i32 2, label %27
    i32 4, label %36
    i32 5, label %36
    i32 6, label %44
  ]

27:                                               ; preds = %23, %23
  %28 = load %struct.trapsink*, %struct.trapsink** %9, align 8
  %29 = icmp eq %struct.trapsink* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %31, i32* %4, align 4
  br label %125

32:                                               ; preds = %27
  %33 = load %struct.trapsink*, %struct.trapsink** %9, align 8
  %34 = load %struct.trapsink_dep*, %struct.trapsink_dep** %8, align 8
  %35 = call i32 @trapsink_modify(%struct.trapsink* %33, %struct.trapsink_dep* %34)
  store i32 %35, i32* %4, align 4
  br label %125

36:                                               ; preds = %23, %23
  %37 = load %struct.trapsink*, %struct.trapsink** %9, align 8
  %38 = icmp ne %struct.trapsink* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %40, i32* %4, align 4
  br label %125

41:                                               ; preds = %36
  %42 = load %struct.trapsink_dep*, %struct.trapsink_dep** %8, align 8
  %43 = call i32 @trapsink_create(%struct.trapsink_dep* %42)
  store i32 %43, i32* %4, align 4
  br label %125

44:                                               ; preds = %23
  %45 = load %struct.trapsink*, %struct.trapsink** %9, align 8
  %46 = icmp eq %struct.trapsink* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %48, i32* %4, align 4
  br label %125

49:                                               ; preds = %44
  %50 = load %struct.snmp_context*, %struct.snmp_context** %5, align 8
  %51 = load %struct.trapsink*, %struct.trapsink** %9, align 8
  %52 = load %struct.trapsink_dep*, %struct.trapsink_dep** %8, align 8
  %53 = call i32 @trapsink_destroy(%struct.snmp_context* %50, %struct.trapsink* %51, %struct.trapsink_dep* %52)
  store i32 %53, i32* %4, align 4
  br label %125

54:                                               ; preds = %23
  br label %65

55:                                               ; preds = %16
  %56 = load %struct.trapsink_dep*, %struct.trapsink_dep** %8, align 8
  %57 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.trapsink*, %struct.trapsink** %9, align 8
  %62 = load %struct.trapsink_dep*, %struct.trapsink_dep** %8, align 8
  %63 = call i32 @trapsink_modify(%struct.trapsink* %61, %struct.trapsink_dep* %62)
  store i32 %63, i32* %4, align 4
  br label %125

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %54
  %66 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %66, i32* %4, align 4
  br label %125

67:                                               ; preds = %3
  %68 = load %struct.trapsink_dep*, %struct.trapsink_dep** %8, align 8
  %69 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @TDEP_CREATE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load %struct.trapsink*, %struct.trapsink** %9, align 8
  %76 = call i32 @trapsink_free(%struct.trapsink* %75)
  %77 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %77, i32* %4, align 4
  br label %125

78:                                               ; preds = %67
  %79 = load %struct.trapsink_dep*, %struct.trapsink_dep** %8, align 8
  %80 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @TDEP_MODIFY, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load %struct.trapsink*, %struct.trapsink** %9, align 8
  %87 = load %struct.trapsink_dep*, %struct.trapsink_dep** %8, align 8
  %88 = call i32 @trapsink_unmodify(%struct.trapsink* %86, %struct.trapsink_dep* %87)
  store i32 %88, i32* %4, align 4
  br label %125

89:                                               ; preds = %78
  %90 = load %struct.trapsink_dep*, %struct.trapsink_dep** %8, align 8
  %91 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @TDEP_DESTROY, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load %struct.trapsink*, %struct.trapsink** %9, align 8
  %98 = load %struct.trapsink_dep*, %struct.trapsink_dep** %8, align 8
  %99 = call i32 @trapsink_undestroy(%struct.trapsink* %97, %struct.trapsink_dep* %98)
  store i32 %99, i32* %4, align 4
  br label %125

100:                                              ; preds = %89
  %101 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %101, i32* %4, align 4
  br label %125

102:                                              ; preds = %3
  %103 = load %struct.trapsink_dep*, %struct.trapsink_dep** %8, align 8
  %104 = getelementptr inbounds %struct.trapsink_dep, %struct.trapsink_dep* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @TDEP_DESTROY, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %102
  %110 = load %struct.trapsink*, %struct.trapsink** %9, align 8
  %111 = icmp ne %struct.trapsink* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = load %struct.snmp_context*, %struct.snmp_context** %5, align 8
  %114 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @SNMP_RET_OK, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load %struct.trapsink*, %struct.trapsink** %9, align 8
  %120 = call i32 @trapsink_free(%struct.trapsink* %119)
  br label %121

121:                                              ; preds = %118, %112, %109, %102
  %122 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %122, i32* %4, align 4
  br label %125

123:                                              ; preds = %3
  %124 = call i32 (...) @abort() #3
  unreachable

125:                                              ; preds = %121, %100, %96, %85, %74, %65, %60, %49, %47, %41, %39, %32, %30
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.trapsink* @FIND_OBJECT_OID(i32*, i32*, i32) #1

declare dso_local i32 @trapsink_modify(%struct.trapsink*, %struct.trapsink_dep*) #1

declare dso_local i32 @trapsink_create(%struct.trapsink_dep*) #1

declare dso_local i32 @trapsink_destroy(%struct.snmp_context*, %struct.trapsink*, %struct.trapsink_dep*) #1

declare dso_local i32 @trapsink_free(%struct.trapsink*) #1

declare dso_local i32 @trapsink_unmodify(%struct.trapsink*, %struct.trapsink_dep*) #1

declare dso_local i32 @trapsink_undestroy(%struct.trapsink*, %struct.trapsink_dep*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
