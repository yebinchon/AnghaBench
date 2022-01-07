; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_inet.c_dns_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_inet.c_dns_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_port = type { i8*, i32 }
%struct.inet_port_params = type { i32, i32, i32* }

@SNMP_ERR_INCONS_VALUE = common dso_local global i32 0, align 4
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inet_port*, %struct.inet_port_params*)* @dns_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dns_create(%struct.inet_port* %0, %struct.inet_port_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inet_port*, align 8
  %5 = alloca %struct.inet_port_params*, align 8
  store %struct.inet_port* %0, %struct.inet_port** %4, align 8
  store %struct.inet_port_params* %1, %struct.inet_port_params** %5, align 8
  %6 = load %struct.inet_port_params*, %struct.inet_port_params** %5, align 8
  %7 = getelementptr inbounds %struct.inet_port_params, %struct.inet_port_params* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sgt i32 %8, 64
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %11, i32* %3, align 4
  br label %58

12:                                               ; preds = %2
  %13 = load %struct.inet_port_params*, %struct.inet_port_params** %5, align 8
  %14 = getelementptr inbounds %struct.inet_port_params, %struct.inet_port_params* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.inet_port_params*, %struct.inet_port_params** %5, align 8
  %17 = getelementptr inbounds %struct.inet_port_params, %struct.inet_port_params* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @strnlen(i32* %15, i32 %18)
  %20 = load %struct.inet_port_params*, %struct.inet_port_params** %5, align 8
  %21 = getelementptr inbounds %struct.inet_port_params, %struct.inet_port_params* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %12
  %25 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %25, i32* %3, align 4
  br label %58

26:                                               ; preds = %12
  %27 = load %struct.inet_port_params*, %struct.inet_port_params** %5, align 8
  %28 = getelementptr inbounds %struct.inet_port_params, %struct.inet_port_params* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.inet_port_params*, %struct.inet_port_params** %5, align 8
  %31 = getelementptr inbounds %struct.inet_port_params, %struct.inet_port_params* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  %34 = call i8* @realloc(i32* %29, i32 %33)
  %35 = load %struct.inet_port*, %struct.inet_port** %4, align 8
  %36 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = icmp eq i8* %34, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %39, i32* %3, align 4
  br label %58

40:                                               ; preds = %26
  %41 = load %struct.inet_port*, %struct.inet_port** %4, align 8
  %42 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.inet_port_params*, %struct.inet_port_params** %5, align 8
  %45 = getelementptr inbounds %struct.inet_port_params, %struct.inet_port_params* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %43, i64 %47
  store i8 0, i8* %48, align 1
  %49 = load %struct.inet_port_params*, %struct.inet_port_params** %5, align 8
  %50 = getelementptr inbounds %struct.inet_port_params, %struct.inet_port_params* %49, i32 0, i32 2
  store i32* null, i32** %50, align 8
  %51 = load %struct.inet_port_params*, %struct.inet_port_params** %5, align 8
  %52 = getelementptr inbounds %struct.inet_port_params, %struct.inet_port_params* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @htons(i32 %53)
  %55 = load %struct.inet_port*, %struct.inet_port** %4, align 8
  %56 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %40, %38, %24, %10
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @strnlen(i32*, i32) #1

declare dso_local i8* @realloc(i32*, i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
