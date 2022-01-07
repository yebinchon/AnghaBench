; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_op_error_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_op_error_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { i32 }

@SCTP_CID_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_chunk* (%struct.sctp_association*, %struct.sctp_chunk*, i64)* @sctp_make_op_error_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_chunk* @sctp_make_op_error_space(%struct.sctp_association* %0, %struct.sctp_chunk* %1, i64 %2) #0 {
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sctp_chunk*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %4, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %9 = load i32, i32* @SCTP_CID_ERROR, align 4
  %10 = load i64, i64* %6, align 8
  %11 = add i64 4, %10
  %12 = trunc i64 %11 to i32
  %13 = call %struct.sctp_chunk* @sctp_make_chunk(%struct.sctp_association* %8, i32 %9, i32 0, i32 %12)
  store %struct.sctp_chunk* %13, %struct.sctp_chunk** %7, align 8
  %14 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %15 = icmp ne %struct.sctp_chunk* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %27

17:                                               ; preds = %3
  %18 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %19 = icmp ne %struct.sctp_chunk* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %22 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %25 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %20, %17
  br label %27

27:                                               ; preds = %26, %16
  %28 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  ret %struct.sctp_chunk* %28
}

declare dso_local %struct.sctp_chunk* @sctp_make_chunk(%struct.sctp_association*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
