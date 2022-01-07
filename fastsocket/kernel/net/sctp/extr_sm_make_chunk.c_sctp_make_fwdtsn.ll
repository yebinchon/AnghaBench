; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_fwdtsn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_fwdtsn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sctp_association = type { i32 }
%struct.sctp_fwdtsn_skip = type { i32, i32, i32 }
%struct.sctp_fwdtsn_chunk = type { i32 }
%struct.sctp_fwdtsn_hdr = type { i32, i32, i32 }

@SCTP_CID_FWD_TSN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunk* @sctp_make_fwdtsn(%struct.sctp_association* %0, i32 %1, i64 %2, %struct.sctp_fwdtsn_skip* %3) #0 {
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.sctp_fwdtsn_skip*, align 8
  %10 = alloca %struct.sctp_chunk*, align 8
  %11 = alloca %struct.sctp_fwdtsn_chunk*, align 8
  %12 = alloca %struct.sctp_fwdtsn_hdr, align 4
  %13 = alloca %struct.sctp_fwdtsn_skip, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.sctp_fwdtsn_skip* %3, %struct.sctp_fwdtsn_skip** %9, align 8
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %10, align 8
  %16 = load i64, i64* %8, align 8
  %17 = add i64 %16, 1
  %18 = mul i64 %17, 4
  store i64 %18, i64* %14, align 8
  %19 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  %20 = load i32, i32* @SCTP_CID_FWD_TSN, align 4
  %21 = load i64, i64* %14, align 8
  %22 = call %struct.sctp_chunk* @sctp_make_chunk(%struct.sctp_association* %19, i32 %20, i32 0, i64 %21)
  store %struct.sctp_chunk* %22, %struct.sctp_chunk** %10, align 8
  %23 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %24 = icmp ne %struct.sctp_chunk* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %5, align 8
  br label %68

26:                                               ; preds = %4
  %27 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %28 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.sctp_fwdtsn_chunk*
  store %struct.sctp_fwdtsn_chunk* %31, %struct.sctp_fwdtsn_chunk** %11, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @htonl(i32 %32)
  %34 = getelementptr inbounds %struct.sctp_fwdtsn_hdr, %struct.sctp_fwdtsn_hdr* %12, i32 0, i32 2
  store i32 %33, i32* %34, align 4
  %35 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %36 = bitcast %struct.sctp_fwdtsn_hdr* %12 to %struct.sctp_fwdtsn_skip*
  %37 = call i64 @sctp_addto_chunk(%struct.sctp_chunk* %35, i32 12, %struct.sctp_fwdtsn_skip* %36)
  %38 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %39 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i64 %37, i64* %40, align 8
  store i32 0, i32* %15, align 4
  br label %41

41:                                               ; preds = %63, %26
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %8, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %41
  %47 = load %struct.sctp_fwdtsn_skip*, %struct.sctp_fwdtsn_skip** %9, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.sctp_fwdtsn_skip, %struct.sctp_fwdtsn_skip* %47, i64 %49
  %51 = getelementptr inbounds %struct.sctp_fwdtsn_skip, %struct.sctp_fwdtsn_skip* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.sctp_fwdtsn_skip, %struct.sctp_fwdtsn_skip* %13, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = load %struct.sctp_fwdtsn_skip*, %struct.sctp_fwdtsn_skip** %9, align 8
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.sctp_fwdtsn_skip, %struct.sctp_fwdtsn_skip* %54, i64 %56
  %58 = getelementptr inbounds %struct.sctp_fwdtsn_skip, %struct.sctp_fwdtsn_skip* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.sctp_fwdtsn_skip, %struct.sctp_fwdtsn_skip* %13, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  %62 = call i64 @sctp_addto_chunk(%struct.sctp_chunk* %61, i32 12, %struct.sctp_fwdtsn_skip* %13)
  br label %63

63:                                               ; preds = %46
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  br label %41

66:                                               ; preds = %41
  %67 = load %struct.sctp_chunk*, %struct.sctp_chunk** %10, align 8
  store %struct.sctp_chunk* %67, %struct.sctp_chunk** %5, align 8
  br label %68

68:                                               ; preds = %66, %25
  %69 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  ret %struct.sctp_chunk* %69
}

declare dso_local %struct.sctp_chunk* @sctp_make_chunk(%struct.sctp_association*, i32, i32, i64) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @sctp_addto_chunk(%struct.sctp_chunk*, i32, %struct.sctp_fwdtsn_skip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
