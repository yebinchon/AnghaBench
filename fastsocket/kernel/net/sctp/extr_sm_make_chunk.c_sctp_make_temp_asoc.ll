; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_temp_asoc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_make_temp_asoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sctp_endpoint = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sctp_chunk = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.sctp_af = type { i32 (i32*, %struct.sk_buff*, i32)* }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_association* @sctp_make_temp_asoc(%struct.sctp_endpoint* %0, %struct.sctp_chunk* %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca %struct.sctp_endpoint*, align 8
  %6 = alloca %struct.sctp_chunk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sctp_af*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %5, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %13 = call i32 @sctp_source(%struct.sctp_chunk* %12)
  %14 = call i32 @sctp_scope(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %16 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %5, align 8
  %17 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.sctp_association* @sctp_association_new(%struct.sctp_endpoint* %15, i32 %19, i32 %20, i32 %21)
  store %struct.sctp_association* %22, %struct.sctp_association** %8, align 8
  %23 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %24 = icmp ne %struct.sctp_association* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  br label %54

26:                                               ; preds = %3
  %27 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %28 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.sctp_chunk*, %struct.sctp_chunk** %6, align 8
  %30 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %29, i32 0, i32 0
  %31 = load %struct.sk_buff*, %struct.sk_buff** %30, align 8
  store %struct.sk_buff* %31, %struct.sk_buff** %9, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %33 = call %struct.TYPE_6__* @ip_hdr(%struct.sk_buff* %32)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ipver2af(i32 %35)
  %37 = call %struct.sctp_af* @sctp_get_af_specific(i32 %36)
  store %struct.sctp_af* %37, %struct.sctp_af** %11, align 8
  %38 = load %struct.sctp_af*, %struct.sctp_af** %11, align 8
  %39 = icmp ne %struct.sctp_af* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %26
  br label %56

45:                                               ; preds = %26
  %46 = load %struct.sctp_af*, %struct.sctp_af** %11, align 8
  %47 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %46, i32 0, i32 0
  %48 = load i32 (i32*, %struct.sk_buff*, i32)*, i32 (i32*, %struct.sk_buff*, i32)** %47, align 8
  %49 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %50 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %53 = call i32 %48(i32* %51, %struct.sk_buff* %52, i32 1)
  br label %54

54:                                               ; preds = %45, %25
  %55 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  store %struct.sctp_association* %55, %struct.sctp_association** %4, align 8
  br label %59

56:                                               ; preds = %44
  %57 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %58 = call i32 @sctp_association_free(%struct.sctp_association* %57)
  store %struct.sctp_association* null, %struct.sctp_association** %4, align 8
  br label %59

59:                                               ; preds = %56, %54
  %60 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  ret %struct.sctp_association* %60
}

declare dso_local i32 @sctp_scope(i32) #1

declare dso_local i32 @sctp_source(%struct.sctp_chunk*) #1

declare dso_local %struct.sctp_association* @sctp_association_new(%struct.sctp_endpoint*, i32, i32, i32) #1

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i32) #1

declare dso_local i32 @ipver2af(i32) #1

declare dso_local %struct.TYPE_6__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sctp_association_free(%struct.sctp_association*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
