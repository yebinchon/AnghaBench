; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_eat_sack_6_2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_eat_sack_6_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32, i32 }
%struct.sctp_chunk = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"ctsn %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"ctsn_ack_point %x\0A\00", align 1
@SCTP_DISPOSITION_DISCARD = common dso_local global i32 0, align 4
@SCTP_CMD_PROCESS_SACK = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_eat_sack_6_2(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sctp_chunk*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %7, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = bitcast i8* %15 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %16, %struct.sctp_chunk** %12, align 8
  %17 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %18 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %19 = call i32 @sctp_vtag_verify(%struct.sctp_chunk* %17, %struct.sctp_association* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %5
  %22 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %23 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @sctp_sf_pdiscard(%struct.sctp_endpoint* %22, %struct.sctp_association* %23, i32 %24, i8* %25, i32* %26)
  store i32 %27, i32* %6, align 4
  br label %95

28:                                               ; preds = %5
  %29 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %30 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %29, i32 4)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %34 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint* %33, %struct.sctp_association* %34, i32 %35, i8* %36, i32* %37)
  store i32 %38, i32* %6, align 4
  br label %95

39:                                               ; preds = %28
  %40 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %41 = call %struct.TYPE_6__* @sctp_sm_pull_sack(%struct.sctp_chunk* %40)
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %13, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %43 = icmp ne %struct.TYPE_6__* %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %39
  %45 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %46 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i8*, i8** %10, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @sctp_sf_pdiscard(%struct.sctp_endpoint* %45, %struct.sctp_association* %46, i32 %47, i8* %48, i32* %49)
  store i32 %50, i32* %6, align 4
  br label %95

51:                                               ; preds = %39
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %53 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %54 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %55, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ntohl(i32 %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %62 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @TSN_lt(i32 %60, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %51
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @SCTP_DEBUG_PRINTK(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %70 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @SCTP_DEBUG_PRINTK(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @SCTP_DISPOSITION_DISCARD, align 4
  store i32 %73, i32* %6, align 4
  br label %95

74:                                               ; preds = %51
  %75 = load i32, i32* %14, align 4
  %76 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %77 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @TSN_lt(i32 %75, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %74
  %82 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %83 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i8*, i8** %10, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 @sctp_sf_violation_ctsn(%struct.sctp_endpoint* %82, %struct.sctp_association* %83, i32 %84, i8* %85, i32* %86)
  store i32 %87, i32* %6, align 4
  br label %95

88:                                               ; preds = %74
  %89 = load i32*, i32** %11, align 8
  %90 = load i32, i32* @SCTP_CMD_PROCESS_SACK, align 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %92 = call i32 @SCTP_SACKH(%struct.TYPE_6__* %91)
  %93 = call i32 @sctp_add_cmd_sf(i32* %89, i32 %90, i32 %92)
  %94 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %88, %81, %66, %44, %32, %21
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32 @sctp_vtag_verify(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_6__* @sctp_sm_pull_sack(%struct.sctp_chunk*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @TSN_lt(i32, i32) #1

declare dso_local i32 @SCTP_DEBUG_PRINTK(i8*, i32) #1

declare dso_local i32 @sctp_sf_violation_ctsn(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_SACKH(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
