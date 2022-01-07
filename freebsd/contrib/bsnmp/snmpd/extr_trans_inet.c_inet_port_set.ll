; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_inet.c_inet_port_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_inet.c_inet_port_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.inet_port = type { i32, i32 }
%struct.inet_port_params = type { i32 }

@SNMP_ERR_INCONS_VALUE = common dso_local global i32 0, align 4
@SET_CREATED = common dso_local global i8* null, align 8
@SET_ACTIVATED = common dso_local global i8* null, align 8
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@SET_DEACTIVATE = common dso_local global i8* null, align 8
@SET_DESTROY = common dso_local global i8* null, align 8
@SNMP_ERR_WRONG_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_context*, %struct.inet_port*, %struct.inet_port_params*, i32)* @inet_port_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_port_set(%struct.snmp_context* %0, %struct.inet_port* %1, %struct.inet_port_params* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snmp_context*, align 8
  %7 = alloca %struct.inet_port*, align 8
  %8 = alloca %struct.inet_port_params*, align 8
  %9 = alloca i32, align 4
  store %struct.snmp_context* %0, %struct.snmp_context** %6, align 8
  store %struct.inet_port* %1, %struct.inet_port** %7, align 8
  store %struct.inet_port_params* %2, %struct.inet_port_params** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %96 [
    i32 132, label %11
    i32 131, label %25
    i32 133, label %39
    i32 129, label %64
    i32 130, label %87
    i32 128, label %94
  ]

11:                                               ; preds = %4
  %12 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %13 = icmp ne %struct.inet_port* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %15, i32* %5, align 4
  br label %98

16:                                               ; preds = %11
  %17 = load i8*, i8** @SET_CREATED, align 8
  %18 = load %struct.snmp_context*, %struct.snmp_context** %6, align 8
  %19 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i8* %17, i8** %21, align 8
  %22 = load %struct.snmp_context*, %struct.snmp_context** %6, align 8
  %23 = load %struct.inet_port_params*, %struct.inet_port_params** %8, align 8
  %24 = call i32 @create_and_go(%struct.snmp_context* %22, %struct.inet_port_params* %23)
  store i32 %24, i32* %5, align 4
  br label %98

25:                                               ; preds = %4
  %26 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %27 = icmp ne %struct.inet_port* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %29, i32* %5, align 4
  br label %98

30:                                               ; preds = %25
  %31 = load i8*, i8** @SET_CREATED, align 8
  %32 = load %struct.snmp_context*, %struct.snmp_context** %6, align 8
  %33 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i8* %31, i8** %35, align 8
  %36 = load %struct.snmp_context*, %struct.snmp_context** %6, align 8
  %37 = load %struct.inet_port_params*, %struct.inet_port_params** %8, align 8
  %38 = call i32 @create_and_wait(%struct.snmp_context* %36, %struct.inet_port_params* %37)
  store i32 %38, i32* %5, align 4
  br label %98

39:                                               ; preds = %4
  %40 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %41 = icmp eq %struct.inet_port* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %43, i32* %5, align 4
  br label %98

44:                                               ; preds = %39
  %45 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %46 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %63 [
    i32 128, label %48
    i32 129, label %50
    i32 133, label %59
    i32 132, label %61
    i32 131, label %61
    i32 130, label %61
  ]

48:                                               ; preds = %44
  %49 = call i32 (...) @abort() #3
  unreachable

50:                                               ; preds = %44
  %51 = load i8*, i8** @SET_ACTIVATED, align 8
  %52 = load %struct.snmp_context*, %struct.snmp_context** %6, align 8
  %53 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i8* %51, i8** %55, align 8
  %56 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %57 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %56, i32 0, i32 1
  %58 = call i32 @inet_activate(i32* %57)
  store i32 %58, i32* %5, align 4
  br label %98

59:                                               ; preds = %44
  %60 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %60, i32* %5, align 4
  br label %98

61:                                               ; preds = %44, %44, %44
  %62 = call i32 (...) @abort() #3
  unreachable

63:                                               ; preds = %44
  br label %96

64:                                               ; preds = %4
  %65 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %66 = icmp eq %struct.inet_port* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %68, i32* %5, align 4
  br label %98

69:                                               ; preds = %64
  %70 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %71 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %86 [
    i32 128, label %73
    i32 129, label %75
    i32 133, label %77
    i32 132, label %84
    i32 131, label %84
    i32 130, label %84
  ]

73:                                               ; preds = %69
  %74 = call i32 (...) @abort() #3
  unreachable

75:                                               ; preds = %69
  %76 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %76, i32* %5, align 4
  br label %98

77:                                               ; preds = %69
  %78 = load i8*, i8** @SET_DEACTIVATE, align 8
  %79 = load %struct.snmp_context*, %struct.snmp_context** %6, align 8
  %80 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i8* %78, i8** %82, align 8
  %83 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %83, i32* %5, align 4
  br label %98

84:                                               ; preds = %69, %69, %69
  %85 = call i32 (...) @abort() #3
  unreachable

86:                                               ; preds = %69
  br label %96

87:                                               ; preds = %4
  %88 = load i8*, i8** @SET_DESTROY, align 8
  %89 = load %struct.snmp_context*, %struct.snmp_context** %6, align 8
  %90 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i8* %88, i8** %92, align 8
  %93 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %93, i32* %5, align 4
  br label %98

94:                                               ; preds = %4
  %95 = load i32, i32* @SNMP_ERR_WRONG_VALUE, align 4
  store i32 %95, i32* %5, align 4
  br label %98

96:                                               ; preds = %4, %86, %63
  %97 = call i32 (...) @abort() #3
  unreachable

98:                                               ; preds = %94, %87, %77, %75, %67, %59, %50, %42, %30, %28, %16, %14
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @create_and_go(%struct.snmp_context*, %struct.inet_port_params*) #1

declare dso_local i32 @create_and_wait(%struct.snmp_context*, %struct.inet_port_params*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @inet_activate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
