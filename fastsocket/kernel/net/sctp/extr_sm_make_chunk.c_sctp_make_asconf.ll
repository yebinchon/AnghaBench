; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_asconf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_asconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }
%struct.sctp_association = type { i32 }
%union.sctp_addr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.sctp_addr_param = type { i32 }
%struct.sctp_af = type { i32 (%union.sctp_addr*, %union.sctp_addr_param*)* }

@SCTP_CID_ASCONF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_chunk* (%struct.sctp_association*, %union.sctp_addr*, i32)* @sctp_make_asconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_chunk* @sctp_make_asconf(%struct.sctp_association* %0, %union.sctp_addr* %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %union.sctp_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.sctp_addr_param, align 4
  %9 = alloca %struct.sctp_chunk*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.sctp_addr_param, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sctp_af*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %5, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 4, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %10, align 4
  %18 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %19 = bitcast %union.sctp_addr* %18 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.sctp_af* @sctp_get_af_specific(i32 %21)
  store %struct.sctp_af* %22, %struct.sctp_af** %13, align 8
  %23 = load %struct.sctp_af*, %struct.sctp_af** %13, align 8
  %24 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %23, i32 0, i32 0
  %25 = load i32 (%union.sctp_addr*, %union.sctp_addr_param*)*, i32 (%union.sctp_addr*, %union.sctp_addr_param*)** %24, align 8
  %26 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %27 = call i32 %25(%union.sctp_addr* %26, %union.sctp_addr_param* %11)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %4, align 8
  br label %61

31:                                               ; preds = %3
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %10, align 4
  %35 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %36 = load i32, i32* @SCTP_CID_ASCONF, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call %struct.sctp_chunk* @sctp_make_chunk(%struct.sctp_association* %35, i32 %36, i32 0, i32 %37)
  store %struct.sctp_chunk* %38, %struct.sctp_chunk** %9, align 8
  %39 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %40 = icmp ne %struct.sctp_chunk* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %31
  store %struct.sctp_chunk* null, %struct.sctp_chunk** %4, align 8
  br label %61

42:                                               ; preds = %31
  %43 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %44 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = call i32 @htonl(i32 %45)
  %48 = bitcast %union.sctp_addr_param* %8 to i32*
  store i32 %47, i32* %48, align 4
  %49 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %50 = call i8* @sctp_addto_chunk(%struct.sctp_chunk* %49, i32 4, %union.sctp_addr_param* %8)
  %51 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %52 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  %54 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %55 = load i32, i32* %12, align 4
  %56 = call i8* @sctp_addto_chunk(%struct.sctp_chunk* %54, i32 %55, %union.sctp_addr_param* %11)
  %57 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  %58 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i8* %56, i8** %59, align 8
  %60 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  store %struct.sctp_chunk* %60, %struct.sctp_chunk** %4, align 8
  br label %61

61:                                               ; preds = %42, %41, %30
  %62 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  ret %struct.sctp_chunk* %62
}

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i32) #1

declare dso_local %struct.sctp_chunk* @sctp_make_chunk(%struct.sctp_association*, i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i8* @sctp_addto_chunk(%struct.sctp_chunk*, i32, %union.sctp_addr_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
