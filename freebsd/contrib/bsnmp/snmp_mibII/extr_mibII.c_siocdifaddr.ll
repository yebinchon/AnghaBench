; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII.c_siocdifaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bsnmp/snmp_mibII/extr_mibII.c_siocdifaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.ifreq = type { i32, i32 }
%struct.sockaddr_in = type { i32, %struct.in_addr, i32 }

@AF_INET = common dso_local global i32 0, align 4
@mib_netsock = common dso_local global i32 0, align 4
@SIOCDIFADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @siocdifaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siocdifaddr(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.in_addr, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ifreq, align 4
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %3, i32 0, i32 0
  store i32 %1, i32* %7, align 4
  store i8* %0, i8** %4, align 8
  %8 = call i32 @memset(%struct.ifreq* %5, i32 0, i32 8)
  %9 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strlcpy(i32 %10, i8* %11, i32 4)
  %13 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %5, i32 0, i32 0
  %14 = bitcast i32* %13 to i8*
  %15 = bitcast i8* %14 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %15, %struct.sockaddr_in** %6, align 8
  %16 = load i32, i32* @AF_INET, align 4
  %17 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 0
  store i32 12, i32* %20, align 4
  %21 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 1
  %23 = bitcast %struct.in_addr* %22 to i8*
  %24 = bitcast %struct.in_addr* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load i32, i32* @mib_netsock, align 4
  %26 = load i32, i32* @SIOCDIFADDR, align 4
  %27 = call i32 @ioctl(i32 %25, i32 %26, %struct.ifreq* %5)
  ret i32 %27
}

declare dso_local i32 @memset(%struct.ifreq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
