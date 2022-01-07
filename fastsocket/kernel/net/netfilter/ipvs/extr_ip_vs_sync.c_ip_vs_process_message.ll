; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_process_message.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_process_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_sync_mesg = type { i32, i64, i64, i64, i64, i32 }
%union.ip_vs_sync_conn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"BACKUP, message header too short\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"BACKUP, bogus message size\0A\00", align 1
@ip_vs_backup_syncid = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"BACKUP, Ignoring syncid = %d\0A\00", align 1
@SYNC_PROTO_VER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"BACKUP, Dropping buffer, to small\0A\00", align 1
@SVER_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"BACKUP, Dropping buffer, msg > buffer\0A\00", align 1
@SVER_SHIFT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"BACKUP, Dropping buffer, Unknown version %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"BACKUP, Dropping buffer, Err: %d in decoding\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @ip_vs_process_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_vs_process_message(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ip_vs_sync_mesg*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.ip_vs_sync_conn*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = bitcast i32* %13 to %struct.ip_vs_sync_mesg*
  store %struct.ip_vs_sync_mesg* %14, %struct.ip_vs_sync_mesg** %5, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ult i64 %15, 4
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 (i32, i8*, ...) @IP_VS_DBG(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %146

19:                                               ; preds = %2
  %20 = load %struct.ip_vs_sync_mesg*, %struct.ip_vs_sync_mesg** %5, align 8
  %21 = getelementptr inbounds %struct.ip_vs_sync_mesg, %struct.ip_vs_sync_mesg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ntohs(i32 %22)
  %24 = load %struct.ip_vs_sync_mesg*, %struct.ip_vs_sync_mesg** %5, align 8
  %25 = getelementptr inbounds %struct.ip_vs_sync_mesg, %struct.ip_vs_sync_mesg* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.ip_vs_sync_mesg*, %struct.ip_vs_sync_mesg** %5, align 8
  %28 = getelementptr inbounds %struct.ip_vs_sync_mesg, %struct.ip_vs_sync_mesg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %26, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = call i32 (i32, i8*, ...) @IP_VS_DBG(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %146

34:                                               ; preds = %19
  %35 = load i64, i64* @ip_vs_backup_syncid, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load %struct.ip_vs_sync_mesg*, %struct.ip_vs_sync_mesg** %5, align 8
  %39 = getelementptr inbounds %struct.ip_vs_sync_mesg, %struct.ip_vs_sync_mesg* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ip_vs_backup_syncid, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.ip_vs_sync_mesg*, %struct.ip_vs_sync_mesg** %5, align 8
  %45 = getelementptr inbounds %struct.ip_vs_sync_mesg, %struct.ip_vs_sync_mesg* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (i32, i8*, ...) @IP_VS_DBG(i32 7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  br label %146

48:                                               ; preds = %37, %34
  %49 = load %struct.ip_vs_sync_mesg*, %struct.ip_vs_sync_mesg** %5, align 8
  %50 = getelementptr inbounds %struct.ip_vs_sync_mesg, %struct.ip_vs_sync_mesg* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SYNC_PROTO_VER, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %142

54:                                               ; preds = %48
  %55 = load %struct.ip_vs_sync_mesg*, %struct.ip_vs_sync_mesg** %5, align 8
  %56 = getelementptr inbounds %struct.ip_vs_sync_mesg, %struct.ip_vs_sync_mesg* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %142

59:                                               ; preds = %54
  %60 = load %struct.ip_vs_sync_mesg*, %struct.ip_vs_sync_mesg** %5, align 8
  %61 = getelementptr inbounds %struct.ip_vs_sync_mesg, %struct.ip_vs_sync_mesg* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %142

64:                                               ; preds = %59
  %65 = load i32*, i32** %3, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 48
  store i32* %66, i32** %7, align 8
  %67 = load %struct.ip_vs_sync_mesg*, %struct.ip_vs_sync_mesg** %5, align 8
  %68 = getelementptr inbounds %struct.ip_vs_sync_mesg, %struct.ip_vs_sync_mesg* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %138, %64
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %141

74:                                               ; preds = %70
  %75 = load i32*, i32** %7, align 8
  store i32* %75, i32** %6, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = load i32*, i32** %3, align 8
  %79 = load i64, i64* %4, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = icmp ugt i32* %77, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = call i32 (i8*, ...) @IP_VS_ERR_RL(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %146

84:                                               ; preds = %74
  %85 = load i32*, i32** %6, align 8
  %86 = bitcast i32* %85 to %union.ip_vs_sync_conn*
  store %union.ip_vs_sync_conn* %86, %union.ip_vs_sync_conn** %10, align 8
  %87 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %10, align 8
  %88 = bitcast %union.ip_vs_sync_conn* %87 to %struct.TYPE_2__*
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ntohs(i32 %90)
  %92 = load i32, i32* @SVER_MASK, align 4
  %93 = and i32 %91, %92
  store i32 %93, i32* %11, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %11, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32* %97, i32** %7, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = load i32*, i32** %3, align 8
  %100 = load i64, i64* %4, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = icmp ugt i32* %98, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %84
  %104 = call i32 (i8*, ...) @IP_VS_ERR_RL(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %146

105:                                              ; preds = %84
  %106 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %10, align 8
  %107 = bitcast %union.ip_vs_sync_conn* %106 to %struct.TYPE_2__*
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @ntohs(i32 %109)
  %111 = load i32, i32* @SVER_SHIFT, align 4
  %112 = ashr i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %105
  %115 = load %union.ip_vs_sync_conn*, %union.ip_vs_sync_conn** %10, align 8
  %116 = bitcast %union.ip_vs_sync_conn* %115 to %struct.TYPE_2__*
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ntohs(i32 %118)
  %120 = load i32, i32* @SVER_SHIFT, align 4
  %121 = ashr i32 %119, %120
  %122 = call i32 (i8*, ...) @IP_VS_ERR_RL(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %121)
  br label %146

123:                                              ; preds = %105
  %124 = load i32*, i32** %6, align 8
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 @ip_vs_proc_sync_conn(i32* %124, i32* %125)
  store i32 %126, i32* %12, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i32, i32* %12, align 4
  %130 = call i32 (i8*, ...) @IP_VS_ERR_RL(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %129)
  br label %146

131:                                              ; preds = %123
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %11, align 4
  %134 = add i32 %133, 3
  %135 = and i32 %134, -4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %132, i64 %136
  store i32* %137, i32** %7, align 8
  br label %138

138:                                              ; preds = %131
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %70

141:                                              ; preds = %70
  br label %146

142:                                              ; preds = %59, %54, %48
  %143 = load i32*, i32** %3, align 8
  %144 = load i64, i64* %4, align 8
  %145 = call i32 @ip_vs_process_message_v0(i32* %143, i64 %144)
  br label %146

146:                                              ; preds = %17, %32, %43, %82, %103, %114, %128, %142, %141
  ret void
}

declare dso_local i32 @IP_VS_DBG(i32, i8*, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @IP_VS_ERR_RL(i8*, ...) #1

declare dso_local i32 @ip_vs_proc_sync_conn(i32*, i32*) #1

declare dso_local i32 @ip_vs_process_message_v0(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
