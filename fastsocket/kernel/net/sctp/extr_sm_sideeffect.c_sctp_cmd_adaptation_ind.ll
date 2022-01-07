; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_sideeffect.c_sctp_cmd_adaptation_ind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_sideeffect.c_sctp_cmd_adaptation_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.sctp_ulpevent = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.sctp_association*)* @sctp_cmd_adaptation_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_cmd_adaptation_ind(i32* %0, %struct.sctp_association* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca %struct.sctp_ulpevent*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %4, align 8
  %6 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_adaptation_indication(%struct.sctp_association* %6, i32 %7)
  store %struct.sctp_ulpevent* %8, %struct.sctp_ulpevent** %5, align 8
  %9 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %10 = icmp ne %struct.sctp_ulpevent* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %13 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %12, i32 0, i32 0
  %14 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %15 = call i32 @sctp_ulpq_tail_event(i32* %13, %struct.sctp_ulpevent* %14)
  br label %16

16:                                               ; preds = %11, %2
  ret void
}

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_adaptation_indication(%struct.sctp_association*, i32) #1

declare dso_local i32 @sctp_ulpq_tail_event(i32*, %struct.sctp_ulpevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
