; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_5_2_3_initack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_5_2_3_initack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.TYPE_2__ = type { %struct.sctp_endpoint* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_5_2_3_initack(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %13 = call i32 (...) @sctp_get_ctl_sock()
  %14 = call %struct.TYPE_2__* @sctp_sk(i32 %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %15, align 8
  %17 = icmp eq %struct.sctp_endpoint* %12, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %5
  %19 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %20 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @sctp_sf_ootb(%struct.sctp_endpoint* %19, %struct.sctp_association* %20, i32 %21, i8* %22, i32* %23)
  store i32 %24, i32* %6, align 4
  br label %32

25:                                               ; preds = %5
  %26 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %27 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i8*, i8** %10, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @sctp_sf_discard_chunk(%struct.sctp_endpoint* %26, %struct.sctp_association* %27, i32 %28, i8* %29, i32* %30)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %25, %18
  %33 = load i32, i32* %6, align 4
  ret i32 %33
}

declare dso_local %struct.TYPE_2__* @sctp_sk(i32) #1

declare dso_local i32 @sctp_get_ctl_sock(...) #1

declare dso_local i32 @sctp_sf_ootb(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_sf_discard_chunk(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
