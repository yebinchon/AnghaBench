; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_process_message_v0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_process_message_v0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_sync_mesg_v0 = type { i32 }
%struct.ip_vs_sync_conn_v0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ip_vs_sync_conn_options = type { i32 }
%struct.ip_vs_protocol = type { i32, i32 }
%struct.ip_vs_conn_param = type { i32 }
%union.nf_inet_addr = type { i32 }

@SIMPLE_CONN_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"BACKUP v0, bogus conn\0A\00", align 1
@IP_VS_CONN_F_SYNC = common dso_local global i32 0, align 4
@IP_VS_CONN_F_HASHED = common dso_local global i32 0, align 4
@IP_VS_CONN_F_SEQ_MASK = common dso_local global i32 0, align 4
@FULL_CONN_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"BACKUP v0, Dropping buffer bogus conn options\0A\00", align 1
@IP_VS_CONN_F_TEMPLATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"BACKUP v0, Unsupported protocol %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"BACKUP v0, Invalid %s state %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"BACKUP v0, Invalid template state %u\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @ip_vs_process_message_v0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_vs_process_message_v0(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ip_vs_sync_mesg_v0*, align 8
  %6 = alloca %struct.ip_vs_sync_conn_v0*, align 8
  %7 = alloca %struct.ip_vs_sync_conn_options*, align 8
  %8 = alloca %struct.ip_vs_protocol*, align 8
  %9 = alloca %struct.ip_vs_conn_param, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.ip_vs_sync_mesg_v0*
  store %struct.ip_vs_sync_mesg_v0* %15, %struct.ip_vs_sync_mesg_v0** %5, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 4
  store i8* %17, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %147, %2
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.ip_vs_sync_mesg_v0*, %struct.ip_vs_sync_mesg_v0** %5, align 8
  %21 = getelementptr inbounds %struct.ip_vs_sync_mesg_v0, %struct.ip_vs_sync_mesg_v0* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %150

24:                                               ; preds = %18
  %25 = load i8*, i8** %10, align 8
  %26 = load i32, i32* @SIMPLE_CONN_SIZE, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8*, i8** %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = icmp ugt i8* %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = call i32 @IP_VS_ERR_RL(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %150

35:                                               ; preds = %24
  %36 = load i8*, i8** %10, align 8
  %37 = bitcast i8* %36 to %struct.ip_vs_sync_conn_v0*
  store %struct.ip_vs_sync_conn_v0* %37, %struct.ip_vs_sync_conn_v0** %6, align 8
  %38 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %6, align 8
  %39 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ntohs(i32 %40)
  %42 = load i32, i32* @IP_VS_CONN_F_SYNC, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* @IP_VS_CONN_F_HASHED, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %12, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @IP_VS_CONN_F_SEQ_MASK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %35
  %53 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %6, align 8
  %54 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %53, i64 1
  %55 = bitcast %struct.ip_vs_sync_conn_v0* %54 to %struct.ip_vs_sync_conn_options*
  store %struct.ip_vs_sync_conn_options* %55, %struct.ip_vs_sync_conn_options** %7, align 8
  %56 = load i32, i32* @FULL_CONN_SIZE, align 4
  %57 = load i8*, i8** %10, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %10, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %3, align 8
  %62 = load i64, i64* %4, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  %64 = icmp ugt i8* %60, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %52
  %66 = call i32 @IP_VS_ERR_RL(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %150

67:                                               ; preds = %52
  br label %73

68:                                               ; preds = %35
  store %struct.ip_vs_sync_conn_options* null, %struct.ip_vs_sync_conn_options** %7, align 8
  %69 = load i32, i32* @SIMPLE_CONN_SIZE, align 4
  %70 = load i8*, i8** %10, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %10, align 8
  br label %73

73:                                               ; preds = %68, %67
  %74 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %6, align 8
  %75 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ntohs(i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @IP_VS_CONN_F_TEMPLATE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %107, label %82

82:                                               ; preds = %73
  %83 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %6, align 8
  %84 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call %struct.ip_vs_protocol* @ip_vs_proto_get(i32 %85)
  store %struct.ip_vs_protocol* %86, %struct.ip_vs_protocol** %8, align 8
  %87 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %8, align 8
  %88 = icmp ne %struct.ip_vs_protocol* %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %82
  %90 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %6, align 8
  %91 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32, i8*, i32, ...) @IP_VS_DBG(i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  br label %147

94:                                               ; preds = %82
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %8, align 8
  %97 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp uge i32 %95, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %8, align 8
  %102 = getelementptr inbounds %struct.ip_vs_protocol, %struct.ip_vs_protocol* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %13, align 4
  %105 = call i32 (i32, i8*, i32, ...) @IP_VS_DBG(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %103, i32 %104)
  br label %147

106:                                              ; preds = %94
  br label %114

107:                                              ; preds = %73
  store %struct.ip_vs_protocol* null, %struct.ip_vs_protocol** %8, align 8
  %108 = load i32, i32* %13, align 4
  %109 = icmp ugt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* %13, align 4
  %112 = call i32 (i32, i8*, i32, ...) @IP_VS_DBG(i32 2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  store i32 0, i32* %13, align 4
  br label %113

113:                                              ; preds = %110, %107
  br label %114

114:                                              ; preds = %113, %106
  %115 = load i32, i32* @AF_INET, align 4
  %116 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %6, align 8
  %117 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %6, align 8
  %120 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %119, i32 0, i32 6
  %121 = bitcast i32* %120 to %union.nf_inet_addr*
  %122 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %6, align 8
  %123 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %6, align 8
  %126 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %125, i32 0, i32 4
  %127 = bitcast i32* %126 to %union.nf_inet_addr*
  %128 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %6, align 8
  %129 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @ip_vs_conn_fill_param(i32 %115, i32 %118, %union.nf_inet_addr* %121, i32 %124, %union.nf_inet_addr* %127, i32 %130, %struct.ip_vs_conn_param* %9)
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %13, align 4
  %134 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %6, align 8
  %135 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @AF_INET, align 4
  %138 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %6, align 8
  %139 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %138, i32 0, i32 2
  %140 = bitcast i32* %139 to %union.nf_inet_addr*
  %141 = load %struct.ip_vs_sync_conn_v0*, %struct.ip_vs_sync_conn_v0** %6, align 8
  %142 = getelementptr inbounds %struct.ip_vs_sync_conn_v0, %struct.ip_vs_sync_conn_v0* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ip_vs_sync_conn_options*, %struct.ip_vs_sync_conn_options** %7, align 8
  %145 = load %struct.ip_vs_protocol*, %struct.ip_vs_protocol** %8, align 8
  %146 = call i32 @ip_vs_proc_conn(%struct.ip_vs_conn_param* %9, i32 %132, i32 %133, i32 %136, i32 %137, %union.nf_inet_addr* %140, i32 %143, i32 0, i32 0, %struct.ip_vs_sync_conn_options* %144, %struct.ip_vs_protocol* %145)
  br label %147

147:                                              ; preds = %114, %100, %89
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %11, align 4
  br label %18

150:                                              ; preds = %33, %65, %18
  ret void
}

declare dso_local i32 @IP_VS_ERR_RL(i8*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.ip_vs_protocol* @ip_vs_proto_get(i32) #1

declare dso_local i32 @IP_VS_DBG(i32, i8*, i32, ...) #1

declare dso_local i32 @ip_vs_conn_fill_param(i32, i32, %union.nf_inet_addr*, i32, %union.nf_inet_addr*, i32, %struct.ip_vs_conn_param*) #1

declare dso_local i32 @ip_vs_proc_conn(%struct.ip_vs_conn_param*, i32, i32, i32, i32, %union.nf_inet_addr*, i32, i32, i32, %struct.ip_vs_sync_conn_options*, %struct.ip_vs_protocol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
