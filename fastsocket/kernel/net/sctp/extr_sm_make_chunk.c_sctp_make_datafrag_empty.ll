; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_datafrag_empty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_datafrag_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_sndrcvinfo = type { i32, i32, i32 }
%struct.sctp_datahdr = type { i8*, i32, i8*, i64 }

@SCTP_UNORDERED = common dso_local global i32 0, align 4
@SCTP_DATA_UNORDERED = common dso_local global i32 0, align 4
@SCTP_CID_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_make_datafrag_empty(%struct.sctp_association* %0, %struct.sctp_sndrcvinfo* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca %struct.sctp_sndrcvinfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sctp_chunk*, align 8
  %12 = alloca %struct.sctp_datahdr, align 8
  %13 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %6, align 8
  store %struct.sctp_sndrcvinfo* %1, %struct.sctp_sndrcvinfo** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = getelementptr inbounds %struct.sctp_datahdr, %struct.sctp_datahdr* %12, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %7, align 8
  %16 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @htons(i32 %17)
  %19 = getelementptr inbounds %struct.sctp_datahdr, %struct.sctp_datahdr* %12, i32 0, i32 2
  store i8* %18, i8** %19, align 8
  %20 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %7, align 8
  %21 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.sctp_datahdr, %struct.sctp_datahdr* %12, i32 0, i32 1
  store i32 %22, i32* %23, align 8
  %24 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %7, align 8
  %25 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SCTP_UNORDERED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %5
  %31 = load i32, i32* @SCTP_DATA_UNORDERED, align 4
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %9, align 4
  %34 = getelementptr inbounds %struct.sctp_datahdr, %struct.sctp_datahdr* %12, i32 0, i32 0
  store i8* null, i8** %34, align 8
  br label %39

35:                                               ; preds = %5
  %36 = load i32, i32* %10, align 4
  %37 = call i8* @htons(i32 %36)
  %38 = getelementptr inbounds %struct.sctp_datahdr, %struct.sctp_datahdr* %12, i32 0, i32 0
  store i8* %37, i8** %38, align 8
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = add i64 32, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %13, align 4
  %44 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %45 = load i32, i32* @SCTP_CID_DATA, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call %struct.sctp_chunk* @sctp_make_chunk(%struct.sctp_association* %44, i32 %45, i32 %46, i32 %47)
  store %struct.sctp_chunk* %48, %struct.sctp_chunk** %11, align 8
  %49 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %50 = icmp ne %struct.sctp_chunk* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %39
  br label %62

52:                                               ; preds = %39
  %53 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %54 = call i32 @sctp_addto_chunk(%struct.sctp_chunk* %53, i32 32, %struct.sctp_datahdr* %12)
  %55 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %56 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  %59 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %58, i32 0, i32 0
  %60 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %7, align 8
  %61 = call i32 @memcpy(i32* %59, %struct.sctp_sndrcvinfo* %60, i32 12)
  br label %62

62:                                               ; preds = %52, %51
  %63 = load %struct.sctp_chunk*, %struct.sctp_chunk** %11, align 8
  ret %struct.sctp_chunk* %63
}

declare dso_local i8* @htons(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_chunk(%struct.sctp_association*, i32, i32, i32) #1

declare dso_local i32 @sctp_addto_chunk(%struct.sctp_chunk*, i32, %struct.sctp_datahdr*) #1

declare dso_local i32 @memcpy(i32*, %struct.sctp_sndrcvinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
