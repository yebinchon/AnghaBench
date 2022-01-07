; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_wrap_ev.c_zfLnxMicFailureNotify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_wrap_ev.c_zfLnxMicFailureNotify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@zfLnxMicFailureNotify.tag = internal global i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [34 x i8] c"MLME-MICHAELMICFAILURE.indication\00", align 1
@ZM_MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8
@IWEVCUSTOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfLnxMicFailureNotify(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.iwreq_data, align 4
  %8 = alloca [128 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i64 @zfiWlanQueryWlanMode(i32* %9)
  %11 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %15 = load i8*, i8** @zfLnxMicFailureNotify.tag, align 8
  %16 = call i32 @strcpy(i8* %14, i8* %15)
  br label %17

17:                                               ; preds = %13, %3
  %18 = call i32 @memset(%union.iwreq_data* %7, i32 0, i32 4)
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %20 = call i32 @strlen(i8* %19)
  %21 = bitcast %union.iwreq_data* %7 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @IWEVCUSTOM, align 4
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %26 = call i32 @wireless_send_event(i32* %23, i32 %24, %union.iwreq_data* %7, i8* %25)
  ret void
}

declare dso_local i64 @zfiWlanQueryWlanMode(i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @memset(%union.iwreq_data*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @wireless_send_event(i32*, i32, %union.iwreq_data*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
