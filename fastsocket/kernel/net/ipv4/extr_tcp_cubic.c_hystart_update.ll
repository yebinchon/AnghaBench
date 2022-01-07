; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_cubic.c_hystart_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_cubic.c_hystart_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i32 }
%struct.bictcp = type { i32, i64, i64, i64, i64, i64 }

@hystart_detect = common dso_local global i32 0, align 4
@hystart_ack_delta = common dso_local global i64 0, align 8
@HYSTART_ACK_TRAIN = common dso_local global i32 0, align 4
@HYSTART_MIN_SAMPLES = common dso_local global i64 0, align 8
@HYSTART_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i64)* @hystart_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hystart_update(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tcp_sock*, align 8
  %6 = alloca %struct.bictcp*, align 8
  %7 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %8)
  store %struct.tcp_sock* %9, %struct.tcp_sock** %5, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.bictcp* @inet_csk_ca(%struct.sock* %10)
  store %struct.bictcp* %11, %struct.bictcp** %6, align 8
  %12 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %13 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @hystart_detect, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %110, label %18

18:                                               ; preds = %2
  %19 = call i64 (...) @bictcp_clock()
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %22 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = load i64, i64* @hystart_ack_delta, align 8
  %26 = icmp sle i64 %24, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %18
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %30 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %33 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %37 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = ashr i64 %38, 4
  %40 = icmp sgt i64 %35, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %27
  %42 = load i32, i32* @HYSTART_ACK_TRAIN, align 4
  %43 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %44 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %41, %27
  br label %48

48:                                               ; preds = %47, %18
  %49 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %50 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @HYSTART_MIN_SAMPLES, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %48
  %55 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %56 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %61 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %4, align 8
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59, %54
  %66 = load i64, i64* %4, align 8
  %67 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %68 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %67, i32 0, i32 5
  store i64 %66, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %59
  %70 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %71 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %71, align 8
  br label %96

74:                                               ; preds = %48
  %75 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %76 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %79 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %82 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = ashr i64 %83, 4
  %85 = trunc i64 %84 to i32
  %86 = call i64 @HYSTART_DELAY_THRESH(i32 %85)
  %87 = add nsw i64 %80, %86
  %88 = icmp sgt i64 %77, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %74
  %90 = load i32, i32* @HYSTART_DELAY, align 4
  %91 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %92 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %89, %74
  br label %96

96:                                               ; preds = %95, %69
  %97 = load %struct.bictcp*, %struct.bictcp** %6, align 8
  %98 = getelementptr inbounds %struct.bictcp, %struct.bictcp* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @hystart_detect, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %96
  %104 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %105 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.tcp_sock*, %struct.tcp_sock** %5, align 8
  %108 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %103, %96
  br label %110

110:                                              ; preds = %109, %2
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.bictcp* @inet_csk_ca(%struct.sock*) #1

declare dso_local i64 @bictcp_clock(...) #1

declare dso_local i64 @HYSTART_DELAY_THRESH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
