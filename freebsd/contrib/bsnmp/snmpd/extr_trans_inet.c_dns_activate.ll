; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_inet.c_dns_activate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmpd/extr_trans_inet.c_dns_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_port = type { i8*, i32, i32, i32 }
%struct.addrinfo = type { i64, i32, i64, %struct.addrinfo*, i32 }
%struct.port_sock = type { i32, %struct.inet_port*, i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@AF_UNSPEC = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i32 0, align 4
@AI_ADDRCONFIG = common dso_local global i32 0, align 4
@AI_PASSIVE = common dso_local global i32 0, align 4
@AI_NUMERICSERV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%hu\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot resolve address '%s': %s\00", align 1
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@RowStatus_active = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inet_port*)* @dns_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dns_activate(%struct.inet_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inet_port*, align 8
  %4 = alloca %struct.addrinfo, align 8
  %5 = alloca [8 x i8], align 1
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca %struct.port_sock*, align 8
  %10 = alloca i32, align 4
  store %struct.inet_port* %0, %struct.inet_port** %3, align 8
  %11 = call i32 @memset(%struct.addrinfo* %4, i32 0, i32 40)
  %12 = load i64, i64* @AF_UNSPEC, align 8
  %13 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 0
  store i64 %12, i64* %13, align 8
  %14 = load i32, i32* @SOCK_DGRAM, align 4
  %15 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 4
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* @AI_ADDRCONFIG, align 4
  %17 = load i32, i32* @AI_PASSIVE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @AI_NUMERICSERV, align 4
  %20 = or i32 %18, %19
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %4, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %23 = load %struct.inet_port*, %struct.inet_port** %3, align 8
  %24 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @ntohs(i32 %25)
  %27 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.inet_port*, %struct.inet_port** %3, align 8
  %29 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  br label %40

36:                                               ; preds = %1
  %37 = load %struct.inet_port*, %struct.inet_port** %3, align 8
  %38 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  br label %40

40:                                               ; preds = %36, %35
  %41 = phi i8* [ null, %35 ], [ %39, %36 ]
  %42 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 0
  %43 = call i32 @getaddrinfo(i8* %41, i8* %42, %struct.addrinfo* %4, %struct.addrinfo** %6)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load i32, i32* @LOG_ERR, align 4
  %48 = load %struct.inet_port*, %struct.inet_port** %3, align 8
  %49 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @gai_strerror(i32 %51)
  %53 = call i32 @syslog(i32 %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %50, i32 %52)
  %54 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %54, i32* %2, align 4
  br label %149

55:                                               ; preds = %40
  %56 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  store %struct.addrinfo* %56, %struct.addrinfo** %8, align 8
  br label %57

57:                                               ; preds = %132, %55
  %58 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %59 = icmp ne %struct.addrinfo* %58, null
  br i1 %59, label %60, label %136

60:                                               ; preds = %57
  %61 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %62 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @AF_INET, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %68 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @AF_INET6, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %132

73:                                               ; preds = %66, %60
  %74 = call %struct.port_sock* @calloc(i32 1, i32 24)
  store %struct.port_sock* %74, %struct.port_sock** %9, align 8
  %75 = load %struct.port_sock*, %struct.port_sock** %9, align 8
  %76 = icmp eq %struct.port_sock* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %78, i32* %2, align 4
  br label %149

79:                                               ; preds = %73
  %80 = load %struct.port_sock*, %struct.port_sock** %9, align 8
  %81 = getelementptr inbounds %struct.port_sock, %struct.port_sock* %80, i32 0, i32 2
  %82 = call i32 @snmpd_input_init(i32* %81)
  %83 = load %struct.inet_port*, %struct.inet_port** %3, align 8
  %84 = load %struct.port_sock*, %struct.port_sock** %9, align 8
  %85 = getelementptr inbounds %struct.port_sock, %struct.port_sock* %84, i32 0, i32 1
  store %struct.inet_port* %83, %struct.inet_port** %85, align 8
  %86 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %86, i32* %10, align 4
  %87 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %88 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @AF_INET, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %79
  %93 = load %struct.port_sock*, %struct.port_sock** %9, align 8
  %94 = getelementptr inbounds %struct.port_sock, %struct.port_sock* %93, i32 0, i32 0
  %95 = bitcast i32* %94 to %struct.sockaddr_in*
  %96 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %97 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to i8*
  %100 = bitcast i8* %99 to %struct.sockaddr_in*
  %101 = bitcast %struct.sockaddr_in* %95 to i8*
  %102 = bitcast %struct.sockaddr_in* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 4 %102, i64 4, i1 false)
  %103 = load %struct.port_sock*, %struct.port_sock** %9, align 8
  %104 = call i32 @ipv4_activate_sock(%struct.port_sock* %103)
  store i32 %104, i32* %10, align 4
  br label %118

105:                                              ; preds = %79
  %106 = load %struct.port_sock*, %struct.port_sock** %9, align 8
  %107 = getelementptr inbounds %struct.port_sock, %struct.port_sock* %106, i32 0, i32 0
  %108 = bitcast i32* %107 to %struct.sockaddr_in6*
  %109 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %110 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i8*
  %113 = bitcast i8* %112 to %struct.sockaddr_in6*
  %114 = bitcast %struct.sockaddr_in6* %108 to i8*
  %115 = bitcast %struct.sockaddr_in6* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %114, i8* align 4 %115, i64 4, i1 false)
  %116 = load %struct.port_sock*, %struct.port_sock** %9, align 8
  %117 = call i32 @ipv6_activate_sock(%struct.port_sock* %116)
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %105, %92
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load %struct.port_sock*, %struct.port_sock** %9, align 8
  %124 = call i32 @free(%struct.port_sock* %123)
  br label %131

125:                                              ; preds = %118
  %126 = load %struct.inet_port*, %struct.inet_port** %3, align 8
  %127 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %126, i32 0, i32 2
  %128 = load %struct.port_sock*, %struct.port_sock** %9, align 8
  %129 = load i32, i32* @link, align 4
  %130 = call i32 @TAILQ_INSERT_HEAD(i32* %127, %struct.port_sock* %128, i32 %129)
  br label %131

131:                                              ; preds = %125, %122
  br label %132

132:                                              ; preds = %131, %72
  %133 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %134 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %133, i32 0, i32 3
  %135 = load %struct.addrinfo*, %struct.addrinfo** %134, align 8
  store %struct.addrinfo* %135, %struct.addrinfo** %8, align 8
  br label %57

136:                                              ; preds = %57
  %137 = load %struct.inet_port*, %struct.inet_port** %3, align 8
  %138 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %137, i32 0, i32 2
  %139 = call i32 @TAILQ_EMPTY(i32* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %136
  %142 = load i32, i32* @RowStatus_active, align 4
  %143 = load %struct.inet_port*, %struct.inet_port** %3, align 8
  %144 = getelementptr inbounds %struct.inet_port, %struct.inet_port* %143, i32 0, i32 1
  store i32 %142, i32* %144, align 8
  br label %145

145:                                              ; preds = %141, %136
  %146 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %147 = call i32 @freeaddrinfo(%struct.addrinfo* %146)
  %148 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %145, %77, %46
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @syslog(i32, i8*, i8*, i32) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local %struct.port_sock* @calloc(i32, i32) #1

declare dso_local i32 @snmpd_input_init(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ipv4_activate_sock(%struct.port_sock*) #1

declare dso_local i32 @ipv6_activate_sock(%struct.port_sock*) #1

declare dso_local i32 @free(%struct.port_sock*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.port_sock*, i32) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
