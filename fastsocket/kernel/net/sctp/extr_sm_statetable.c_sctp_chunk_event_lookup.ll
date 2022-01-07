; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statetable.c_sctp_chunk_event_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statetable.c_sctp_chunk_event_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCTP_STATE_MAX = common dso_local global i64 0, align 8
@bug = common dso_local global i32 0, align 4
@SCTP_CID_BASE_MAX = common dso_local global i64 0, align 8
@chunk_event_table = common dso_local global i32** null, align 8
@sctp_prsctp_enable = common dso_local global i64 0, align 8
@SCTP_CID_FWD_TSN = common dso_local global i64 0, align 8
@prsctp_chunk_event_table = common dso_local global i32** null, align 8
@sctp_addip_enable = common dso_local global i64 0, align 8
@SCTP_CID_ASCONF = common dso_local global i64 0, align 8
@addip_chunk_event_table = common dso_local global i32** null, align 8
@SCTP_CID_ASCONF_ACK = common dso_local global i64 0, align 8
@sctp_auth_enable = common dso_local global i64 0, align 8
@SCTP_CID_AUTH = common dso_local global i64 0, align 8
@auth_chunk_event_table = common dso_local global i32** null, align 8
@chunk_event_table_unknown = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64, i64)* @sctp_chunk_event_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @sctp_chunk_event_lookup(i64 %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SCTP_STATE_MAX, align 8
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32* @bug, i32** %3, align 8
  br label %77

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @SCTP_CID_BASE_MAX, align 8
  %13 = icmp ule i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i32**, i32*** @chunk_event_table, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds i32*, i32** %15, i64 %16
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32* %20, i32** %3, align 8
  br label %77

21:                                               ; preds = %10
  %22 = load i64, i64* @sctp_prsctp_enable, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @SCTP_CID_FWD_TSN, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i32**, i32*** @prsctp_chunk_event_table, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32* %33, i32** %3, align 8
  br label %77

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %21
  %36 = load i64, i64* @sctp_addip_enable, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %35
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @SCTP_CID_ASCONF, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32**, i32*** @addip_chunk_event_table, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32* %47, i32** %3, align 8
  br label %77

48:                                               ; preds = %38
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @SCTP_CID_ASCONF_ACK, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32**, i32*** @addip_chunk_event_table, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %3, align 8
  br label %77

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %35
  %60 = load i64, i64* @sctp_auth_enable, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* @SCTP_CID_AUTH, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i32**, i32*** @auth_chunk_event_table, align 8
  %68 = getelementptr inbounds i32*, i32** %67, i64 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %5, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %3, align 8
  br label %77

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %59
  %74 = load i32*, i32** @chunk_event_table_unknown, align 8
  %75 = load i64, i64* %5, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %3, align 8
  br label %77

77:                                               ; preds = %73, %66, %52, %42, %28, %14, %9
  %78 = load i32*, i32** %3, align 8
  ret i32* %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
