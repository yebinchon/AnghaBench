; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.sctp_chunk = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SCTP_CID_INIT = common dso_local global i64 0, align 8
@SCTP_CHUNK_FLAG_T = common dso_local global i64 0, align 8
@SCTP_CID_ABORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_make_abort(%struct.sctp_association* %0, %struct.sctp_chunk* %1, i64 %2) #0 {
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sctp_chunk*, align 8
  %8 = alloca i64, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %4, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %10 = icmp ne %struct.sctp_association* %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %3
  %12 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %13 = icmp ne %struct.sctp_chunk* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %16 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %21 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SCTP_CID_INIT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i64 0, i64* %8, align 8
  br label %30

28:                                               ; preds = %19, %14, %11
  %29 = load i64, i64* @SCTP_CHUNK_FLAG_T, align 8
  store i64 %29, i64* %8, align 8
  br label %30

30:                                               ; preds = %28, %27
  br label %31

31:                                               ; preds = %30, %3
  %32 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %33 = load i32, i32* @SCTP_CID_ABORT, align 4
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call %struct.sctp_chunk* @sctp_make_chunk(%struct.sctp_association* %32, i32 %33, i64 %34, i64 %35)
  store %struct.sctp_chunk* %36, %struct.sctp_chunk** %7, align 8
  %37 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %38 = icmp ne %struct.sctp_chunk* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %41 = icmp ne %struct.sctp_chunk* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %44 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  %47 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %42, %39, %31
  %49 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  ret %struct.sctp_chunk* %49
}

declare dso_local %struct.sctp_chunk* @sctp_make_chunk(%struct.sctp_association*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
