; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_proc_seqopt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_proc_seqopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_sync_conn_options = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"BACKUP, bogus conn options length\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IPVS_OPT_F_SEQ_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"BACKUP, conn options found twice\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, %struct.ip_vs_sync_conn_options*)* @ip_vs_proc_seqopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_proc_seqopt(i32* %0, i32 %1, i32* %2, %struct.ip_vs_sync_conn_options* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ip_vs_sync_conn_options*, align 8
  %10 = alloca %struct.ip_vs_sync_conn_options*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.ip_vs_sync_conn_options* %3, %struct.ip_vs_sync_conn_options** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = bitcast i32* %11 to %struct.ip_vs_sync_conn_options*
  store %struct.ip_vs_sync_conn_options* %12, %struct.ip_vs_sync_conn_options** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = zext i32 %13 to i64
  %15 = icmp ne i64 %14, 8
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = call i32 @IP_VS_DBG(i32 2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %45

20:                                               ; preds = %4
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IPVS_OPT_F_SEQ_DATA, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = call i32 @IP_VS_DBG(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %45

30:                                               ; preds = %20
  %31 = load %struct.ip_vs_sync_conn_options*, %struct.ip_vs_sync_conn_options** %10, align 8
  %32 = getelementptr inbounds %struct.ip_vs_sync_conn_options, %struct.ip_vs_sync_conn_options* %31, i32 0, i32 1
  %33 = load %struct.ip_vs_sync_conn_options*, %struct.ip_vs_sync_conn_options** %9, align 8
  %34 = getelementptr inbounds %struct.ip_vs_sync_conn_options, %struct.ip_vs_sync_conn_options* %33, i32 0, i32 1
  %35 = call i32 @ntoh_seq(i32* %32, i32* %34)
  %36 = load %struct.ip_vs_sync_conn_options*, %struct.ip_vs_sync_conn_options** %10, align 8
  %37 = getelementptr inbounds %struct.ip_vs_sync_conn_options, %struct.ip_vs_sync_conn_options* %36, i32 0, i32 0
  %38 = load %struct.ip_vs_sync_conn_options*, %struct.ip_vs_sync_conn_options** %9, align 8
  %39 = getelementptr inbounds %struct.ip_vs_sync_conn_options, %struct.ip_vs_sync_conn_options* %38, i32 0, i32 0
  %40 = call i32 @ntoh_seq(i32* %37, i32* %39)
  %41 = load i32, i32* @IPVS_OPT_F_SEQ_DATA, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %30, %26, %16
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @IP_VS_DBG(i32, i8*) #1

declare dso_local i32 @ntoh_seq(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
