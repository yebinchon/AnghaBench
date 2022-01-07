; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_conn_fill_param_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_conn_fill_param_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ip_vs_sync_conn = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.ip_vs_conn_param = type { i8*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%union.nf_inet_addr = type { i32 }

@IP_VS_PENAME_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"BACKUP, no %s engine found/loaded\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"BACKUP, Invalid PE parameters\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %union.ip_vs_sync_conn*, %struct.ip_vs_conn_param*, i32*, i32, i32*, i32)* @ip_vs_conn_fill_param_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_conn_fill_param_sync(i32 %0, %union.ip_vs_sync_conn* %1, %struct.ip_vs_conn_param* %2, i32* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.ip_vs_sync_conn*, align 8
  %11 = alloca %struct.ip_vs_conn_param*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %union.ip_vs_sync_conn* %1, %union.ip_vs_sync_conn** %10, align 8
  store %struct.ip_vs_conn_param* %2, %struct.ip_vs_conn_param** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %10, align 8
  %21 = bitcast %union.ip_vs_sync_conn* %20 to %struct.TYPE_5__*
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %10, align 8
  %25 = bitcast %union.ip_vs_sync_conn* %24 to %struct.TYPE_5__*
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  %27 = bitcast i32* %26 to %union.nf_inet_addr*
  %28 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %10, align 8
  %29 = bitcast %union.ip_vs_sync_conn* %28 to %struct.TYPE_5__*
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %10, align 8
  %33 = bitcast %union.ip_vs_sync_conn* %32 to %struct.TYPE_5__*
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = bitcast i32* %34 to %union.nf_inet_addr*
  %36 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %10, align 8
  %37 = bitcast %union.ip_vs_sync_conn* %36 to %struct.TYPE_5__*
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %11, align 8
  %41 = call i32 @ip_vs_conn_fill_param(i32 %19, i32 %23, %union.nf_inet_addr* %27, i32 %31, %union.nf_inet_addr* %35, i32 %39, %struct.ip_vs_conn_param* %40)
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %112

44:                                               ; preds = %7
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %44
  %48 = load i32, i32* @IP_VS_PENAME_MAXLEN, align 4
  %49 = add nsw i32 %48, 1
  %50 = zext i32 %49 to i64
  %51 = call i8* @llvm.stacksave()
  store i8* %51, i8** %16, align 8
  %52 = alloca i8, i64 %50, align 16
  store i64 %50, i64* %17, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @memcpy(i8* %52, i32* %53, i32 %54)
  %56 = load i32, i32* %15, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %52, i64 %57
  store i8 0, i8* %58, align 1
  %59 = call %struct.TYPE_6__* @__ip_vs_pe_getbyname(i8* %52)
  %60 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %11, align 8
  %61 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %60, i32 0, i32 2
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %61, align 8
  %62 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %11, align 8
  %63 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %62, i32 0, i32 2
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = icmp ne %struct.TYPE_6__* %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %47
  %67 = call i32 @IP_VS_DBG(i32 3, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %52)
  store i32 1, i32* %8, align 4
  store i32 1, i32* %18, align 4
  br label %69

68:                                               ; preds = %47
  store i32 0, i32* %18, align 4
  br label %69

69:                                               ; preds = %68, %66
  %70 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %18, align 4
  switch i32 %71, label %115 [
    i32 0, label %72
    i32 1, label %113
  ]

72:                                               ; preds = %69
  br label %75

73:                                               ; preds = %44
  %74 = call i32 @IP_VS_ERR_RL(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %113

75:                                               ; preds = %72
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @GFP_ATOMIC, align 4
  %78 = call i8* @kmalloc(i32 %76, i32 %77)
  %79 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %11, align 8
  %80 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %11, align 8
  %82 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %102, label %85

85:                                               ; preds = %75
  %86 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %11, align 8
  %87 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %86, i32 0, i32 2
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %85
  %93 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %11, align 8
  %94 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %93, i32 0, i32 2
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @module_put(i64 %97)
  br label %99

99:                                               ; preds = %92, %85
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %8, align 4
  br label %113

102:                                              ; preds = %75
  %103 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %11, align 8
  %104 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load i32*, i32** %12, align 8
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @memcpy(i8* %105, i32* %106, i32 %107)
  %109 = load i32, i32* %13, align 4
  %110 = load %struct.ip_vs_conn_param*, %struct.ip_vs_conn_param** %11, align 8
  %111 = getelementptr inbounds %struct.ip_vs_conn_param, %struct.ip_vs_conn_param* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 8
  br label %112

112:                                              ; preds = %102, %7
  store i32 0, i32* %8, align 4
  br label %113

113:                                              ; preds = %112, %99, %73, %69
  %114 = load i32, i32* %8, align 4
  ret i32 %114

115:                                              ; preds = %69
  unreachable
}

declare dso_local i32 @ip_vs_conn_fill_param(i32, i32, %union.nf_inet_addr*, i32, %union.nf_inet_addr*, i32, %struct.ip_vs_conn_param*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local %struct.TYPE_6__* @__ip_vs_pe_getbyname(i8*) #1

declare dso_local i32 @IP_VS_DBG(i32, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @IP_VS_ERR_RL(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @module_put(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
