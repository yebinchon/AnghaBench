; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_associola.c_sctp_assoc_choose_alter_transport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_associola.c_sctp_assoc_choose_alter_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sctp_transport*, %struct.sctp_transport* }
%struct.sctp_transport = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_transport* @sctp_assoc_choose_alter_transport(%struct.sctp_association* %0, %struct.sctp_transport* %1) #0 {
  %3 = alloca %struct.sctp_transport*, align 8
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca %struct.sctp_transport*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %4, align 8
  store %struct.sctp_transport* %1, %struct.sctp_transport** %5, align 8
  %6 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %7 = icmp ne %struct.sctp_transport* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %10 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.sctp_transport*, %struct.sctp_transport** %11, align 8
  store %struct.sctp_transport* %12, %struct.sctp_transport** %3, align 8
  br label %28

13:                                               ; preds = %2
  %14 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %15 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %16 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.sctp_transport*, %struct.sctp_transport** %17, align 8
  %19 = icmp eq %struct.sctp_transport* %14, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %22 = call i32 @sctp_assoc_update_retran_path(%struct.sctp_association* %21)
  br label %23

23:                                               ; preds = %20, %13
  %24 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %25 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.sctp_transport*, %struct.sctp_transport** %26, align 8
  store %struct.sctp_transport* %27, %struct.sctp_transport** %3, align 8
  br label %28

28:                                               ; preds = %23, %8
  %29 = load %struct.sctp_transport*, %struct.sctp_transport** %3, align 8
  ret %struct.sctp_transport* %29
}

declare dso_local i32 @sctp_assoc_update_retran_path(%struct.sctp_association*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
