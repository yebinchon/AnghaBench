; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_sideeffect.c_sctp_cmd_new_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_sideeffect.c_sctp_cmd_new_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i64, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sock* }
%struct.sock = type { i32 (%struct.sock*)*, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"sctp_cmd_new_state: asoc %p[%s]\0A\00", align 1
@sctp_state_tbl = common dso_local global i32* null, align 8
@TCP = common dso_local global i32 0, align 4
@ESTABLISHED = common dso_local global i32 0, align 4
@CLOSED = common dso_local global i32 0, align 4
@SCTP_SS_ESTABLISHED = common dso_local global i32 0, align 4
@SHUTDOWN_RECEIVED = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@COOKIE_WAIT = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T1_INIT = common dso_local global i64 0, align 8
@SCTP_EVENT_TIMEOUT_T1_COOKIE = common dso_local global i64 0, align 8
@UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.sctp_association*, i64)* @sctp_cmd_new_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_cmd_new_state(i32* %0, %struct.sctp_association* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sock*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %9 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %14 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %16 = load i32*, i32** @sctp_state_tbl, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @SCTP_DEBUG_PRINTK(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), %struct.sctp_association* %15, i32 %19)
  %21 = load %struct.sock*, %struct.sock** %7, align 8
  %22 = load i32, i32* @TCP, align 4
  %23 = call i64 @sctp_style(%struct.sock* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %3
  %26 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %27 = load i32, i32* @ESTABLISHED, align 4
  %28 = call i64 @sctp_state(%struct.sctp_association* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.sock*, %struct.sock** %7, align 8
  %32 = load i32, i32* @CLOSED, align 4
  %33 = call i64 @sctp_sstate(%struct.sock* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @SCTP_SS_ESTABLISHED, align 4
  %37 = load %struct.sock*, %struct.sock** %7, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %30, %25
  %40 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %41 = load i32, i32* @SHUTDOWN_RECEIVED, align 4
  %42 = call i64 @sctp_state(%struct.sctp_association* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load %struct.sock*, %struct.sock** %7, align 8
  %46 = load i32, i32* @ESTABLISHED, align 4
  %47 = call i64 @sctp_sstate(%struct.sock* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32, i32* @RCV_SHUTDOWN, align 4
  %51 = load %struct.sock*, %struct.sock** %7, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %49, %44, %39
  br label %56

56:                                               ; preds = %55, %3
  %57 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %58 = load i32, i32* @COOKIE_WAIT, align 4
  %59 = call i64 @sctp_state(%struct.sctp_association* %57, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %56
  %62 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %63 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %66 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @SCTP_EVENT_TIMEOUT_T1_INIT, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  store i32 %64, i32* %69, align 4
  %70 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %71 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %74 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* @SCTP_EVENT_TIMEOUT_T1_COOKIE, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32 %72, i32* %77, align 4
  br label %78

78:                                               ; preds = %61, %56
  %79 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %80 = load i32, i32* @ESTABLISHED, align 4
  %81 = call i64 @sctp_state(%struct.sctp_association* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %78
  %84 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %85 = load i32, i32* @CLOSED, align 4
  %86 = call i64 @sctp_state(%struct.sctp_association* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %90 = load i32, i32* @SHUTDOWN_RECEIVED, align 4
  %91 = call i64 @sctp_state(%struct.sctp_association* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %114

93:                                               ; preds = %88, %83, %78
  %94 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %95 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %94, i32 0, i32 1
  %96 = call i64 @waitqueue_active(i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %100 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %99, i32 0, i32 1
  %101 = call i32 @wake_up_interruptible(i32* %100)
  br label %102

102:                                              ; preds = %98, %93
  %103 = load %struct.sock*, %struct.sock** %7, align 8
  %104 = load i32, i32* @UDP, align 4
  %105 = call i64 @sctp_style(%struct.sock* %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %102
  %108 = load %struct.sock*, %struct.sock** %7, align 8
  %109 = getelementptr inbounds %struct.sock, %struct.sock* %108, i32 0, i32 0
  %110 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %109, align 8
  %111 = load %struct.sock*, %struct.sock** %7, align 8
  %112 = call i32 %110(%struct.sock* %111)
  br label %113

113:                                              ; preds = %107, %102
  br label %114

114:                                              ; preds = %113, %88
  ret void
}

declare dso_local i32 @SCTP_DEBUG_PRINTK(i8*, %struct.sctp_association*, i32) #1

declare dso_local i64 @sctp_style(%struct.sock*, i32) #1

declare dso_local i64 @sctp_state(%struct.sctp_association*, i32) #1

declare dso_local i64 @sctp_sstate(%struct.sock*, i32) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
