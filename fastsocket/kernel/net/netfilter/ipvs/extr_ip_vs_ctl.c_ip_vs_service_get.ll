; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_service_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_service_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_service = type { i32 }
%union.nf_inet_addr = type { i32 }

@__ip_vs_svc_lock = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@ip_vs_ftpsvc_counter = common dso_local global i32 0, align 4
@FTPDATA = common dso_local global i64 0, align 8
@PROT_SOCK = common dso_local global i64 0, align 8
@FTPPORT = common dso_local global i64 0, align 8
@ip_vs_nullsvc_counter = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"lookup service: fwm %u %s %s:%u %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"hit\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"not hit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ip_vs_service* @ip_vs_service_get(i32 %0, i64 %1, i64 %2, %union.nf_inet_addr* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %union.nf_inet_addr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ip_vs_service*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %union.nf_inet_addr* %3, %union.nf_inet_addr** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = call i32 @read_lock(i32* @__ip_vs_svc_lock)
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %5
  %16 = load i32, i32* %6, align 4
  %17 = load i64, i64* %7, align 8
  %18 = call %struct.ip_vs_service* @__ip_vs_svc_fwm_get(i32 %16, i64 %17)
  store %struct.ip_vs_service* %18, %struct.ip_vs_service** %11, align 8
  %19 = icmp ne %struct.ip_vs_service* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %63

21:                                               ; preds = %15, %5
  %22 = load i32, i32* %6, align 4
  %23 = load i64, i64* %8, align 8
  %24 = load %union.nf_inet_addr*, %union.nf_inet_addr** %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call %struct.ip_vs_service* @__ip_vs_service_get(i32 %22, i64 %23, %union.nf_inet_addr* %24, i64 %25)
  store %struct.ip_vs_service* %26, %struct.ip_vs_service** %11, align 8
  %27 = load %struct.ip_vs_service*, %struct.ip_vs_service** %11, align 8
  %28 = icmp eq %struct.ip_vs_service* %27, null
  br i1 %28, label %29, label %51

29:                                               ; preds = %21
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @IPPROTO_TCP, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = call i64 @atomic_read(i32* @ip_vs_ftpsvc_counter)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @FTPDATA, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %10, align 8
  %42 = call i64 @ntohs(i64 %41)
  %43 = load i64, i64* @PROT_SOCK, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %40, %36
  %46 = load i32, i32* %6, align 4
  %47 = load i64, i64* %8, align 8
  %48 = load %union.nf_inet_addr*, %union.nf_inet_addr** %9, align 8
  %49 = load i64, i64* @FTPPORT, align 8
  %50 = call %struct.ip_vs_service* @__ip_vs_service_get(i32 %46, i64 %47, %union.nf_inet_addr* %48, i64 %49)
  store %struct.ip_vs_service* %50, %struct.ip_vs_service** %11, align 8
  br label %51

51:                                               ; preds = %45, %40, %33, %29, %21
  %52 = load %struct.ip_vs_service*, %struct.ip_vs_service** %11, align 8
  %53 = icmp eq %struct.ip_vs_service* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = call i64 @atomic_read(i32* @ip_vs_nullsvc_counter)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = load i64, i64* %8, align 8
  %60 = load %union.nf_inet_addr*, %union.nf_inet_addr** %9, align 8
  %61 = call %struct.ip_vs_service* @__ip_vs_service_get(i32 %58, i64 %59, %union.nf_inet_addr* %60, i64 0)
  store %struct.ip_vs_service* %61, %struct.ip_vs_service** %11, align 8
  br label %62

62:                                               ; preds = %57, %54, %51
  br label %63

63:                                               ; preds = %62, %20
  %64 = call i32 @read_unlock(i32* @__ip_vs_svc_lock)
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @ip_vs_proto_name(i64 %66)
  %68 = load i32, i32* %6, align 4
  %69 = load %union.nf_inet_addr*, %union.nf_inet_addr** %9, align 8
  %70 = call i32 @IP_VS_DBG_ADDR(i32 %68, %union.nf_inet_addr* %69)
  %71 = load i64, i64* %10, align 8
  %72 = call i64 @ntohs(i64 %71)
  %73 = load %struct.ip_vs_service*, %struct.ip_vs_service** %11, align 8
  %74 = icmp ne %struct.ip_vs_service* %73, null
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %77 = call i32 @IP_VS_DBG_BUF(i32 9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %65, i32 %67, i32 %70, i64 %72, i8* %76)
  %78 = load %struct.ip_vs_service*, %struct.ip_vs_service** %11, align 8
  ret %struct.ip_vs_service* %78
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.ip_vs_service* @__ip_vs_svc_fwm_get(i32, i64) #1

declare dso_local %struct.ip_vs_service* @__ip_vs_service_get(i32, i64, %union.nf_inet_addr*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @ntohs(i64) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @IP_VS_DBG_BUF(i32, i8*, i64, i32, i32, i64, i8*) #1

declare dso_local i32 @ip_vs_proto_name(i64) #1

declare dso_local i32 @IP_VS_DBG_ADDR(i32, %union.nf_inet_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
