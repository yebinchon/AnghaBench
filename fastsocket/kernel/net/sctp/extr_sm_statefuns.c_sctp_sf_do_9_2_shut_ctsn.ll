; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_9_2_shut_ctsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statefuns.c_sctp_sf_do_9_2_shut_ctsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i32, i32 }
%struct.sctp_chunk = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"ctsn %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"ctsn_ack_point %x\0A\00", align 1
@SCTP_DISPOSITION_DISCARD = common dso_local global i32 0, align 4
@SCTP_CMD_PROCESS_CTSN = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_do_9_2_shut_ctsn(%struct.sctp_endpoint* %0, %struct.sctp_association* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_endpoint*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sctp_chunk*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
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
  br label %87

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
  br label %87

39:                                               ; preds = %28
  %40 = load %struct.sctp_chunk*, %struct.sctp_chunk** %12, align 8
  %41 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %13, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ntohl(i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %52 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @TSN_lt(i32 %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %39
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @SCTP_DEBUG_PRINTK(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %60 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @SCTP_DEBUG_PRINTK(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @SCTP_DISPOSITION_DISCARD, align 4
  store i32 %63, i32* %6, align 4
  br label %87

64:                                               ; preds = %39
  %65 = load i32, i32* %14, align 4
  %66 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %67 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @TSN_lt(i32 %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %64
  %72 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %7, align 8
  %73 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i8*, i8** %10, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @sctp_sf_violation_ctsn(%struct.sctp_endpoint* %72, %struct.sctp_association* %73, i32 %74, i8* %75, i32* %76)
  store i32 %77, i32* %6, align 4
  br label %87

78:                                               ; preds = %64
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* @SCTP_CMD_PROCESS_CTSN, align 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @SCTP_BE32(i32 %83)
  %85 = call i32 @sctp_add_cmd_sf(i32* %79, i32 %80, i32 %84)
  %86 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %78, %71, %56, %32, %21
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32 @sctp_vtag_verify(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @TSN_lt(i32, i32) #1

declare dso_local i32 @SCTP_DEBUG_PRINTK(i8*, i32) #1

declare dso_local i32 @sctp_sf_violation_ctsn(%struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, i32*) #1

declare dso_local i32 @sctp_add_cmd_sf(i32*, i32, i32) #1

declare dso_local i32 @SCTP_BE32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
