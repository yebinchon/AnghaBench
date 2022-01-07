; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_sideeffect.c_sctp_cmd_setup_t2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_sideeffect.c_sctp_cmd_setup_t2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32*, %struct.sctp_transport* }
%struct.sctp_transport = type { i32 }
%struct.sctp_chunk = type { %struct.sctp_transport* }

@SCTP_EVENT_TIMEOUT_T2_SHUTDOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.sctp_association*, %struct.sctp_chunk*)* @sctp_cmd_setup_t2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_cmd_setup_t2(i32* %0, %struct.sctp_association* %1, %struct.sctp_chunk* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.sctp_chunk*, align 8
  %7 = alloca %struct.sctp_transport*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %5, align 8
  store %struct.sctp_chunk* %2, %struct.sctp_chunk** %6, align 8
  %8 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %9 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %8, i32 0, i32 0
  %10 = load %struct.sctp_transport*, %struct.sctp_transport** %9, align 8
  %11 = icmp ne %struct.sctp_transport* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %14 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %13, i32 0, i32 0
  %15 = load %struct.sctp_transport*, %struct.sctp_transport** %14, align 8
  store %struct.sctp_transport* %15, %struct.sctp_transport** %7, align 8
  br label %25

16:                                               ; preds = %3
  %17 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %18 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %19 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %18, i32 0, i32 1
  %20 = load %struct.sctp_transport*, %struct.sctp_transport** %19, align 8
  %21 = call %struct.sctp_transport* @sctp_assoc_choose_alter_transport(%struct.sctp_association* %17, %struct.sctp_transport* %20)
  store %struct.sctp_transport* %21, %struct.sctp_transport** %7, align 8
  %22 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %23 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %24 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %23, i32 0, i32 0
  store %struct.sctp_transport* %22, %struct.sctp_transport** %24, align 8
  br label %25

25:                                               ; preds = %16, %12
  %26 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %27 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %28 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %27, i32 0, i32 1
  store %struct.sctp_transport* %26, %struct.sctp_transport** %28, align 8
  %29 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %30 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %33 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @SCTP_EVENT_TIMEOUT_T2_SHUTDOWN, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 %31, i32* %36, align 4
  ret void
}

declare dso_local %struct.sctp_transport* @sctp_assoc_choose_alter_transport(%struct.sctp_association*, %struct.sctp_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
