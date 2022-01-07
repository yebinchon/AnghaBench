; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_violation_paramlen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_violation_paramlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { i32 }
%struct.sctp_paramhdr = type { i32 }

@sctp_make_violation_paramlen.error = internal constant [44 x i8] c"The following parameter had invalid length:\00", align 16
@SCTP_ERROR_PROTO_VIOLATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_make_violation_paramlen(%struct.sctp_association* %0, %struct.sctp_chunk* %1, %struct.sctp_paramhdr* %2) #0 {
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca %struct.sctp_paramhdr*, align 8
  %7 = alloca %struct.sctp_chunk*, align 8
  %8 = alloca i64, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %4, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %5, align 8
  store %struct.sctp_paramhdr* %2, %struct.sctp_paramhdr** %6, align 8
  store i64 52, i64* %8, align 8
  %9 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %10 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %11 = load i64, i64* %8, align 8
  %12 = call %struct.sctp_chunk* @sctp_make_abort(%struct.sctp_association* %9, %struct.sctp_chunk* %10, i64 %11)
  store %struct.sctp_chunk* %12, %struct.sctp_chunk** %7, align 8
  %13 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %14 = icmp ne %struct.sctp_chunk* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %25

16:                                               ; preds = %3
  %17 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %18 = load i32, i32* @SCTP_ERROR_PROTO_VIOLATION, align 4
  %19 = call i32 @sctp_init_cause(%struct.sctp_chunk* %17, i32 %18, i32 48)
  %20 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %21 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %20, i32 44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @sctp_make_violation_paramlen.error, i64 0, i64 0))
  %22 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %23 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %6, align 8
  %24 = call i32 @sctp_addto_param(%struct.sctp_chunk* %22, i32 4, %struct.sctp_paramhdr* %23)
  br label %25

25:                                               ; preds = %16, %15
  %26 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  ret %struct.sctp_chunk* %26
}

declare dso_local %struct.sctp_chunk* @sctp_make_abort(%struct.sctp_association*, %struct.sctp_chunk*, i64) #1

declare dso_local i32 @sctp_init_cause(%struct.sctp_chunk*, i32, i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, i8*) #1

declare dso_local i32 @sctp_addto_param(%struct.sctp_chunk*, i32, %struct.sctp_paramhdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
