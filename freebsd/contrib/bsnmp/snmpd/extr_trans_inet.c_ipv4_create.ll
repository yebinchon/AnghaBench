; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_inet.c_ipv4_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_inet.c_ipv4_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_port = type { i32 }
%struct.inet_port_params = type { i32, i32, i32 }
%struct.port_sock = type { %struct.inet_port*, i32, i32 }
%struct.sockaddr_in = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@SNMP_ERR_INCONS_VALUE = common dso_local global i32 0, align 4
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inet_port*, %struct.inet_port_params*)* @ipv4_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv4_create(%struct.inet_port* %0, %struct.inet_port_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inet_port*, align 8
  %5 = alloca %struct.inet_port_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.port_sock*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  store %struct.inet_port* %0, %struct.inet_port** %4, align 8
  store %struct.inet_port_params* %1, %struct.inet_port_params** %5, align 8
  %9 = load %struct.inet_port_params*, %struct.inet_port_params** %5, align 8
  %10 = getelementptr inbounds %struct.inet_port_params, %struct.inet_port_params* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 4
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %14, i32* %3, align 4
  br label %57

15:                                               ; preds = %2
  %16 = load %struct.inet_port_params*, %struct.inet_port_params** %5, align 8
  %17 = getelementptr inbounds %struct.inet_port_params, %struct.inet_port_params* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @memcpy(i32* %6, i32 %18, i32 4)
  %20 = call %struct.port_sock* @calloc(i32 1, i32 16)
  store %struct.port_sock* %20, %struct.port_sock** %7, align 8
  %21 = load %struct.port_sock*, %struct.port_sock** %7, align 8
  %22 = icmp eq %struct.port_sock* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %24, i32* %3, align 4
  br label %57

25:                                               ; preds = %15
  %26 = load %struct.port_sock*, %struct.port_sock** %7, align 8
  %27 = getelementptr inbounds %struct.port_sock, %struct.port_sock* %26, i32 0, i32 2
  %28 = call i32 @snmpd_input_init(i32* %27)
  %29 = load %struct.inet_port*, %struct.inet_port** %4, align 8
  %30 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %29, i32 0, i32 0
  %31 = load %struct.port_sock*, %struct.port_sock** %7, align 8
  %32 = load i32, i32* @link, align 4
  %33 = call i32 @TAILQ_INSERT_HEAD(i32* %30, %struct.port_sock* %31, i32 %32)
  %34 = load %struct.port_sock*, %struct.port_sock** %7, align 8
  %35 = getelementptr inbounds %struct.port_sock, %struct.port_sock* %34, i32 0, i32 1
  %36 = bitcast i32* %35 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %36, %struct.sockaddr_in** %8, align 8
  %37 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %37, i32 0, i32 0
  store i32 16, i32* %38, align 4
  %39 = load i32, i32* @AF_INET, align 4
  %40 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @htonl(i32 %42)
  %44 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load %struct.inet_port_params*, %struct.inet_port_params** %5, align 8
  %48 = getelementptr inbounds %struct.inet_port_params, %struct.inet_port_params* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @htons(i32 %49)
  %51 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %52 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.inet_port*, %struct.inet_port** %4, align 8
  %54 = load %struct.port_sock*, %struct.port_sock** %7, align 8
  %55 = getelementptr inbounds %struct.port_sock, %struct.port_sock* %54, i32 0, i32 0
  store %struct.inet_port* %53, %struct.inet_port** %55, align 8
  %56 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %25, %23, %13
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local %struct.port_sock* @calloc(i32, i32) #1

declare dso_local i32 @snmpd_input_init(i32*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.port_sock*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
