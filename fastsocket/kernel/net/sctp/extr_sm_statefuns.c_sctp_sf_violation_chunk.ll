; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_violation_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_violation_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }

@sctp_sf_violation_chunk.err_str = internal constant [39 x i8] c"The following chunk violates protocol:\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*)* @sctp_sf_violation_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_sf_violation_chunk(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
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
  %12 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %13 = icmp ne %struct.sctp_association* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %5
  %15 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %16 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = call i32 @sctp_sf_violation(%struct.sctp_endpoint* %15, %struct.sctp_association* %16, i32 %17, i8* %18, i32* %19)
  store i32 %20, i32* %6, align 4
  br label %27

21:                                               ; preds = %5
  %22 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %23 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @sctp_sf_abort_violation(%struct.sctp_endpoint* %22, %struct.sctp_association* %23, i8* %24, i32* %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @sctp_sf_violation_chunk.err_str, i64 0, i64 0), i32 39)
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %21, %14
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local i32 @sctp_sf_violation(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_sf_abort_violation(%struct.sctp_endpoint*, %struct.sctp_association*, i8*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
