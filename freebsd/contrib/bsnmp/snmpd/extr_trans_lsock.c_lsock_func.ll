; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_lsock.c_lsock_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_lsock.c_lsock_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_context = type { i32 }
%struct.snmp_dependency = type { i32 }
%struct.lsock_dep = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@LD_STATUS = common dso_local global i32 0, align 4
@SNMP_ERR_BADVALUE = common dso_local global i32 0, align 4
@LD_CREATE = common dso_local global i32 0, align 4
@LD_DELETE = common dso_local global i32 0, align 4
@SNMP_ERR_READONLY = common dso_local global i32 0, align 4
@SNMP_RET_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_context*, %struct.snmp_dependency*, i32)* @lsock_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lsock_func(%struct.snmp_context* %0, %struct.snmp_dependency* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_context*, align 8
  %6 = alloca %struct.snmp_dependency*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lsock_dep*, align 8
  %9 = alloca i32, align 4
  store %struct.snmp_context* %0, %struct.snmp_context** %5, align 8
  store %struct.snmp_dependency* %1, %struct.snmp_dependency** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.snmp_dependency*, %struct.snmp_dependency** %6, align 8
  %11 = bitcast %struct.snmp_dependency* %10 to i8*
  %12 = bitcast i8* %11 to %struct.lsock_dep*
  store %struct.lsock_dep* %12, %struct.lsock_dep** %8, align 8
  %13 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %117 [
    i32 130, label %15
    i32 128, label %77
    i32 129, label %92
  ]

15:                                               ; preds = %3
  %16 = load %struct.lsock_dep*, %struct.lsock_dep** %8, align 8
  %17 = getelementptr inbounds %struct.lsock_dep, %struct.lsock_dep* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @LD_STATUS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @SNMP_ERR_BADVALUE, align 4
  store i32 %23, i32* %9, align 4
  br label %75

24:                                               ; preds = %15
  %25 = load %struct.lsock_dep*, %struct.lsock_dep** %8, align 8
  %26 = getelementptr inbounds %struct.lsock_dep, %struct.lsock_dep* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp eq %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %60

29:                                               ; preds = %24
  %30 = load %struct.lsock_dep*, %struct.lsock_dep** %8, align 8
  %31 = getelementptr inbounds %struct.lsock_dep, %struct.lsock_dep* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @SNMP_ERR_BADVALUE, align 4
  store i32 %35, i32* %9, align 4
  br label %59

36:                                               ; preds = %29
  %37 = load %struct.lsock_dep*, %struct.lsock_dep** %8, align 8
  %38 = getelementptr inbounds %struct.lsock_dep, %struct.lsock_dep* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.lsock_dep*, %struct.lsock_dep** %8, align 8
  %41 = getelementptr inbounds %struct.lsock_dep, %struct.lsock_dep* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.lsock_dep*, %struct.lsock_dep** %8, align 8
  %44 = getelementptr inbounds %struct.lsock_dep, %struct.lsock_dep* %43, i32 0, i32 2
  %45 = load %struct.lsock_dep*, %struct.lsock_dep** %8, align 8
  %46 = getelementptr inbounds %struct.lsock_dep, %struct.lsock_dep* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @lsock_open_port(i32 %39, i32 %42, %struct.TYPE_2__** %44, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %36
  %53 = load i32, i32* @LD_CREATE, align 4
  %54 = load %struct.lsock_dep*, %struct.lsock_dep** %8, align 8
  %55 = getelementptr inbounds %struct.lsock_dep, %struct.lsock_dep* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %52, %36
  br label %59

59:                                               ; preds = %58, %34
  br label %74

60:                                               ; preds = %24
  %61 = load %struct.lsock_dep*, %struct.lsock_dep** %8, align 8
  %62 = getelementptr inbounds %struct.lsock_dep, %struct.lsock_dep* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @LD_DELETE, align 4
  %67 = load %struct.lsock_dep*, %struct.lsock_dep** %8, align 8
  %68 = getelementptr inbounds %struct.lsock_dep, %struct.lsock_dep* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %73

71:                                               ; preds = %60
  %72 = load i32, i32* @SNMP_ERR_READONLY, align 4
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %71, %65
  br label %74

74:                                               ; preds = %73, %59
  br label %75

75:                                               ; preds = %74, %22
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %4, align 4
  br label %119

77:                                               ; preds = %3
  %78 = load %struct.lsock_dep*, %struct.lsock_dep** %8, align 8
  %79 = getelementptr inbounds %struct.lsock_dep, %struct.lsock_dep* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @LD_CREATE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %77
  %85 = load %struct.lsock_dep*, %struct.lsock_dep** %8, align 8
  %86 = getelementptr inbounds %struct.lsock_dep, %struct.lsock_dep* %85, i32 0, i32 2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = call i32 @lsock_close_port(i32* %88)
  br label %90

90:                                               ; preds = %84, %77
  %91 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %91, i32* %4, align 4
  br label %119

92:                                               ; preds = %3
  %93 = load %struct.lsock_dep*, %struct.lsock_dep** %8, align 8
  %94 = getelementptr inbounds %struct.lsock_dep, %struct.lsock_dep* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @LD_DELETE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %92
  %100 = load %struct.snmp_context*, %struct.snmp_context** %5, align 8
  %101 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @SNMP_RET_OK, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %99
  %106 = load %struct.lsock_dep*, %struct.lsock_dep** %8, align 8
  %107 = getelementptr inbounds %struct.lsock_dep, %struct.lsock_dep* %106, i32 0, i32 2
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = call i32 @lsock_close_port(i32* %109)
  br label %111

111:                                              ; preds = %105, %99, %92
  %112 = load %struct.lsock_dep*, %struct.lsock_dep** %8, align 8
  %113 = getelementptr inbounds %struct.lsock_dep, %struct.lsock_dep* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @free(i32 %114)
  %116 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %116, i32* %4, align 4
  br label %119

117:                                              ; preds = %3
  %118 = call i32 (...) @abort() #3
  unreachable

119:                                              ; preds = %111, %90, %75
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @lsock_open_port(i32, i32, %struct.TYPE_2__**, i32) #1

declare dso_local i32 @lsock_close_port(i32*) #1

declare dso_local i32 @free(i32) #1

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
