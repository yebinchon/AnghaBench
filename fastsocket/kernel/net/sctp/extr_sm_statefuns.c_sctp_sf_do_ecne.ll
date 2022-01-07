; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_ecne.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_ecne.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@SCTP_CMD_ECN_ECNE = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_ecne(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca %struct.sctp_chunk*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = bitcast i8* %14 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %15, %struct.sctp_chunk** %13, align 8
  %16 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %17 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %18 = call i32 @sctp_vtag_verify(%struct.sctp_chunk* %16, %struct.sctp_association* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %5
  %21 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %22 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i8*, i8** %10, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @sctp_sf_pdiscard(%struct.sctp_endpoint* %21, %struct.sctp_association* %22, i32 %23, i8* %24, i32* %25)
  store i32 %26, i32* %6, align 4
  br label %58

27:                                               ; preds = %5
  %28 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %29 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %28, i32 4)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %33 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint* %32, %struct.sctp_association* %33, i32 %34, i8* %35, i32* %36)
  store i32 %37, i32* %6, align 4
  br label %58

38:                                               ; preds = %27
  %39 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %40 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %44, %struct.TYPE_3__** %12, align 8
  %45 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %46 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = call i32 @skb_pull(%struct.TYPE_4__* %47, i32 4)
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* @SCTP_CMD_ECN_ECNE, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ntohl(i32 %53)
  %55 = call i32 @SCTP_U32(i32 %54)
  %56 = call i32 @sctp_add_cmd_sf(i32* %49, i32 %50, i32 %55)
  %57 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %38, %31, %20
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @sctp_vtag_verify(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @skb_pull(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_U32(i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
