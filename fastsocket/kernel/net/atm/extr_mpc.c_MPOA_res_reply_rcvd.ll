; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_MPOA_res_reply_rcvd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_MPOA_res_reply_rcvd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_message = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.mpoa_client = type { %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_16__*)*, %struct.TYPE_16__* (i32, %struct.mpoa_client*)* }
%struct.TYPE_16__ = type { i64, i64, i64, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"mpoa: (%s) MPOA_res_reply_rcvd: ip %pI4\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"mpoa: (%s) MPOA_res_reply_rcvd() entry = %p\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"\0Ampoa: (%s) ARGH, received res. reply for an entry that doesn't exist.\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c" entry_state = %d \00", align 1
@INGRESS_RESOLVED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [53 x i8] c"\0Ampoa: (%s) MPOA_res_reply_rcvd for RESOLVED entry!\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"entry->shortcut = %p\0A\00", align 1
@INGRESS_RESOLVING = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [70 x i8] c"mpoa: (%s) MPOA_res_reply_rcvd: entry->shortcut != NULL, impossible!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k_message*, %struct.mpoa_client*)* @MPOA_res_reply_rcvd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MPOA_res_reply_rcvd(%struct.k_message* %0, %struct.mpoa_client* %1) #0 {
  %3 = alloca %struct.k_message*, align 8
  %4 = alloca %struct.mpoa_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  store %struct.k_message* %0, %struct.k_message** %3, align 8
  store %struct.mpoa_client* %1, %struct.mpoa_client** %4, align 8
  %7 = load %struct.k_message*, %struct.k_message** %3, align 8
  %8 = getelementptr inbounds %struct.k_message, %struct.k_message* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %13 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %12, i32 0, i32 0
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_16__* (i32, %struct.mpoa_client*)*, %struct.TYPE_16__* (i32, %struct.mpoa_client*)** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %19 = call %struct.TYPE_16__* %16(i32 %17, %struct.mpoa_client* %18)
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %6, align 8
  %20 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %21 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %20, i32 0, i32 1
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dprintk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24, i32* %5)
  %26 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %27 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %26, i32 0, i32 1
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = call i32 (i8*, i64, ...) @ddprintk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %31, %struct.TYPE_16__* %32)
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = icmp eq %struct.TYPE_16__* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %2
  %37 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %38 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %37, i32 0, i32 1
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @printk(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %144

43:                                               ; preds = %2
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (i8*, i64, ...) @ddprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %46)
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @INGRESS_RESOLVED, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %43
  %54 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %55 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %54, i32 0, i32 1
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %58)
  %60 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %61 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %60, i32 0, i32 0
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %63, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %66 = call i32 %64(%struct.TYPE_16__* %65)
  br label %144

67:                                               ; preds = %43
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 5
  %70 = load %struct.k_message*, %struct.k_message** %3, align 8
  %71 = getelementptr inbounds %struct.k_message, %struct.k_message* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = bitcast %struct.TYPE_12__* %69 to i8*
  %74 = bitcast %struct.TYPE_12__* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 4 %74, i64 4, i1 false)
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 4
  %77 = call i32 @do_gettimeofday(i32* %76)
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 3
  %80 = call i32 @do_gettimeofday(i32* %79)
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 (i8*, i64, ...) @ddprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i64 %85)
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @INGRESS_RESOLVING, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %109

92:                                               ; preds = %67
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %109

98:                                               ; preds = %92
  %99 = load i64, i64* @INGRESS_RESOLVED, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %103 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %102, i32 0, i32 0
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %105, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %108 = call i32 %106(%struct.TYPE_16__* %107)
  br label %144

109:                                              ; preds = %92, %67
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to i8*
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %129

115:                                              ; preds = %109
  %116 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %117 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %116, i32 0, i32 1
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @printk(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0), i32 %120)
  %122 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %123 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %122, i32 0, i32 0
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 0
  %126 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %125, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %128 = call i32 %126(%struct.TYPE_16__* %127)
  br label %144

129:                                              ; preds = %109
  %130 = load %struct.k_message*, %struct.k_message** %3, align 8
  %131 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %133 = call i32 @check_qos_and_open_shortcut(%struct.k_message* %130, %struct.mpoa_client* %131, %struct.TYPE_16__* %132)
  %134 = load i64, i64* @INGRESS_RESOLVED, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  %137 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %138 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %137, i32 0, i32 0
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %140, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %143 = call i32 %141(%struct.TYPE_16__* %142)
  br label %144

144:                                              ; preds = %129, %115, %98, %53, %36
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, i32*) #1

declare dso_local i32 @ddprintk(i8*, i64, ...) #1

declare dso_local i32 @printk(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @do_gettimeofday(i32*) #1

declare dso_local i32 @check_qos_and_open_shortcut(%struct.k_message*, %struct.mpoa_client*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
