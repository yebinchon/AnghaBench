; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_debug.c_sctp_tname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_debug.c_sctp_tname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@SCTP_EVENT_TIMEOUT_MAX = common dso_local global i64 0, align 8
@sctp_timer_tbl = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [14 x i8] c"unknown_timer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sctp_tname(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @SCTP_EVENT_TIMEOUT_MAX, align 8
  %8 = icmp ule i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i8**, i8*** @sctp_timer_tbl, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i8*, i8** %10, i64 %12
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %2, align 8
  br label %16

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %16

16:                                               ; preds = %15, %9
  %17 = load i8*, i8** %2, align 8
  ret i8* %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
