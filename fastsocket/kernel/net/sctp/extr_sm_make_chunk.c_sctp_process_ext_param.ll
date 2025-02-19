; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_process_ext_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_process_ext_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32* }
%union.sctp_params = type { %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }

@sctp_prsctp_enable = common dso_local global i32 0, align 4
@sctp_auth_enable = common dso_local global i32 0, align 4
@sctp_addip_enable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_association*, %struct.TYPE_6__*)* @sctp_process_ext_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_process_ext_param(%struct.sctp_association* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %union.sctp_params, align 8
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %union.sctp_params, %union.sctp_params* %3, i32 0, i32 0
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %4, align 8
  %8 = bitcast %union.sctp_params* %3 to %struct.TYPE_5__**
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ntohs(i32 %11)
  %13 = sext i32 %12 to i64
  %14 = sub i64 %13, 4
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %61, %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %64

20:                                               ; preds = %16
  %21 = bitcast %union.sctp_params* %3 to %struct.TYPE_6__**
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %59 [
    i32 128, label %29
    i32 129, label %43
    i32 131, label %51
    i32 130, label %51
  ]

29:                                               ; preds = %20
  %30 = load i32, i32* @sctp_prsctp_enable, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %34 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %40 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %32, %29
  br label %60

43:                                               ; preds = %20
  %44 = load i32, i32* @sctp_auth_enable, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %48 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %43
  br label %60

51:                                               ; preds = %20, %20
  %52 = load i32, i32* @sctp_addip_enable, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %56 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %54, %51
  br label %60

59:                                               ; preds = %20
  br label %60

60:                                               ; preds = %59, %58, %50, %42
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %16

64:                                               ; preds = %16
  ret void
}

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
