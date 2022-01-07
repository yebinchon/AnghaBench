; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_inet.c_inet_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_inet.c_inet_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_port_params = type { i32, i32, i32, i32 }
%struct.inet_port = type { i32 (%struct.inet_port*, %struct.inet_port_params*)*, %struct.inet_port*, %struct.TYPE_2__, i8*, i8*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@SNMP_ERR_NO_CREATION = common dso_local global i32 0, align 4
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@ipv4_activate = common dso_local global i8* null, align 8
@ipv4_deactivate = common dso_local global i8* null, align 8
@ipv6_activate = common dso_local global i8* null, align 8
@ipv6_deactivate = common dso_local global i8* null, align 8
@dns_activate = common dso_local global i8* null, align 8
@dns_deactivate = common dso_local global i8* null, align 8
@my_trans = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inet_port_params*, %struct.inet_port**)* @inet_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_create(%struct.inet_port_params* %0, %struct.inet_port** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inet_port_params*, align 8
  %5 = alloca %struct.inet_port**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inet_port*, align 8
  store %struct.inet_port_params* %0, %struct.inet_port_params** %4, align 8
  store %struct.inet_port** %1, %struct.inet_port*** %5, align 8
  %8 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %8, i32* %6, align 4
  store %struct.inet_port* null, %struct.inet_port** %7, align 8
  %9 = load %struct.inet_port_params*, %struct.inet_port_params** %4, align 8
  %10 = getelementptr inbounds %struct.inet_port_params, %struct.inet_port_params* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %11, 65535
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @SNMP_ERR_NO_CREATION, align 4
  store i32 %14, i32* %6, align 4
  br label %96

15:                                               ; preds = %2
  %16 = call %struct.inet_port* @malloc(i32 48)
  store %struct.inet_port* %16, %struct.inet_port** %7, align 8
  %17 = icmp eq %struct.inet_port* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %19, i32* %6, align 4
  br label %96

20:                                               ; preds = %15
  %21 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %22 = call i32 @memset(%struct.inet_port* %21, i32 0, i32 48)
  %23 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %24 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %23, i32 0, i32 6
  %25 = call i32 @TAILQ_INIT(i32* %24)
  %26 = load %struct.inet_port_params*, %struct.inet_port_params** %4, align 8
  %27 = getelementptr inbounds %struct.inet_port_params, %struct.inet_port_params* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %30 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load %struct.inet_port_params*, %struct.inet_port_params** %4, align 8
  %32 = getelementptr inbounds %struct.inet_port_params, %struct.inet_port_params* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %35 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.inet_port_params*, %struct.inet_port_params** %4, align 8
  %38 = getelementptr inbounds %struct.inet_port_params, %struct.inet_port_params* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %76 [
    i32 130, label %40
    i32 129, label %49
    i32 128, label %58
    i32 131, label %67
  ]

40:                                               ; preds = %20
  %41 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %42 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %41, i32 0, i32 0
  store i32 (%struct.inet_port*, %struct.inet_port_params*)* @ipv4_create, i32 (%struct.inet_port*, %struct.inet_port_params*)** %42, align 8
  %43 = load i8*, i8** @ipv4_activate, align 8
  %44 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %45 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @ipv4_deactivate, align 8
  %47 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %48 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  br label %78

49:                                               ; preds = %20
  %50 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %51 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %50, i32 0, i32 0
  store i32 (%struct.inet_port*, %struct.inet_port_params*)* @ipv6_create, i32 (%struct.inet_port*, %struct.inet_port_params*)** %51, align 8
  %52 = load i8*, i8** @ipv6_activate, align 8
  %53 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %54 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** @ipv6_deactivate, align 8
  %56 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %57 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  br label %78

58:                                               ; preds = %20
  %59 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %60 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %59, i32 0, i32 0
  store i32 (%struct.inet_port*, %struct.inet_port_params*)* @ipv6z_create, i32 (%struct.inet_port*, %struct.inet_port_params*)** %60, align 8
  %61 = load i8*, i8** @ipv6_activate, align 8
  %62 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %63 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** @ipv6_deactivate, align 8
  %65 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %66 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  br label %78

67:                                               ; preds = %20
  %68 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %69 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %68, i32 0, i32 0
  store i32 (%struct.inet_port*, %struct.inet_port_params*)* @dns_create, i32 (%struct.inet_port*, %struct.inet_port_params*)** %69, align 8
  %70 = load i8*, i8** @dns_activate, align 8
  %71 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %72 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** @dns_deactivate, align 8
  %74 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %75 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %74, i32 0, i32 3
  store i8* %73, i8** %75, align 8
  br label %78

76:                                               ; preds = %20
  %77 = load i32, i32* @SNMP_ERR_NO_CREATION, align 4
  store i32 %77, i32* %6, align 4
  br label %96

78:                                               ; preds = %67, %58, %49, %40
  %79 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %80 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %79, i32 0, i32 0
  %81 = load i32 (%struct.inet_port*, %struct.inet_port_params*)*, i32 (%struct.inet_port*, %struct.inet_port_params*)** %80, align 8
  %82 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %83 = load %struct.inet_port_params*, %struct.inet_port_params** %4, align 8
  %84 = call i32 %81(%struct.inet_port* %82, %struct.inet_port_params* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %96

88:                                               ; preds = %78
  %89 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %90 = load %struct.inet_port**, %struct.inet_port*** %5, align 8
  store %struct.inet_port* %89, %struct.inet_port** %90, align 8
  %91 = load i32, i32* @my_trans, align 4
  %92 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %93 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %92, i32 0, i32 2
  %94 = call i32 @trans_insert_port(i32 %91, %struct.TYPE_2__* %93)
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %3, align 4
  br label %104

96:                                               ; preds = %87, %76, %18, %13
  %97 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %98 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %97, i32 0, i32 1
  %99 = load %struct.inet_port*, %struct.inet_port** %98, align 8
  %100 = call i32 @free(%struct.inet_port* %99)
  %101 = load %struct.inet_port*, %struct.inet_port** %7, align 8
  %102 = call i32 @free(%struct.inet_port* %101)
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %96, %88
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.inet_port* @malloc(i32) #1

declare dso_local i32 @memset(%struct.inet_port*, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @ipv4_create(%struct.inet_port*, %struct.inet_port_params*) #1

declare dso_local i32 @ipv6_create(%struct.inet_port*, %struct.inet_port_params*) #1

declare dso_local i32 @ipv6z_create(%struct.inet_port*, %struct.inet_port_params*) #1

declare dso_local i32 @dns_create(%struct.inet_port*, %struct.inet_port_params*) #1

declare dso_local i32 @trans_insert_port(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @free(%struct.inet_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
