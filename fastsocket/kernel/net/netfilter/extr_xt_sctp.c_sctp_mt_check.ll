; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_sctp.c_sctp_mt_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_sctp.c_sctp_mt_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_mtchk_param = type { %struct.xt_sctp_info* }
%struct.xt_sctp_info = type { i32, i32, i32 }

@XT_SCTP_VALID_FLAGS = common dso_local global i32 0, align 4
@XT_SCTP_CHUNK_TYPES = common dso_local global i32 0, align 4
@SCTP_CHUNK_MATCH_ALL = common dso_local global i32 0, align 4
@SCTP_CHUNK_MATCH_ANY = common dso_local global i32 0, align 4
@SCTP_CHUNK_MATCH_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_mtchk_param*)* @sctp_mt_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_mt_check(%struct.xt_mtchk_param* %0) #0 {
  %2 = alloca %struct.xt_mtchk_param*, align 8
  %3 = alloca %struct.xt_sctp_info*, align 8
  store %struct.xt_mtchk_param* %0, %struct.xt_mtchk_param** %2, align 8
  %4 = load %struct.xt_mtchk_param*, %struct.xt_mtchk_param** %2, align 8
  %5 = getelementptr inbounds %struct.xt_mtchk_param, %struct.xt_mtchk_param* %4, i32 0, i32 0
  %6 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %5, align 8
  store %struct.xt_sctp_info* %6, %struct.xt_sctp_info** %3, align 8
  %7 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %3, align 8
  %8 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @XT_SCTP_VALID_FLAGS, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %52, label %14

14:                                               ; preds = %1
  %15 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %3, align 8
  %16 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @XT_SCTP_VALID_FLAGS, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %52, label %22

22:                                               ; preds = %14
  %23 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %3, align 8
  %24 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %3, align 8
  %27 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %25, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %22
  %33 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %3, align 8
  %34 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @XT_SCTP_CHUNK_TYPES, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %32
  %40 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %3, align 8
  %41 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SCTP_CHUNK_MATCH_ALL, align 4
  %44 = load i32, i32* @SCTP_CHUNK_MATCH_ANY, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @SCTP_CHUNK_MATCH_ONLY, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %42, %47
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %39, %32
  %51 = phi i1 [ true, %32 ], [ %49, %39 ]
  br label %52

52:                                               ; preds = %50, %22, %14, %1
  %53 = phi i1 [ false, %22 ], [ false, %14 ], [ false, %1 ], [ %51, %50 ]
  %54 = zext i1 %53 to i32
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
