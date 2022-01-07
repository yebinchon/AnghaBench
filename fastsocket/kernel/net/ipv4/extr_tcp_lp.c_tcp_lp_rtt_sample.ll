; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_lp.c_tcp_lp_rtt_sample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_lp.c_tcp_lp_rtt_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.lp = type { i32, i32, i32, i32, i32 }

@LP_VALID_RHZ = common dso_local global i32 0, align 4
@LP_VALID_OWD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @tcp_lp_rtt_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_lp_rtt_sample(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lp*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.lp* @inet_csk_ca(%struct.sock* %7)
  store %struct.lp* %8, %struct.lp** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call i32 @tcp_lp_owd_calculator(%struct.sock* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.lp*, %struct.lp** %5, align 8
  %12 = getelementptr inbounds %struct.lp, %struct.lp* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @LP_VALID_RHZ, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.lp*, %struct.lp** %5, align 8
  %19 = getelementptr inbounds %struct.lp, %struct.lp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @LP_VALID_OWD, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17, %2
  br label %93

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.lp*, %struct.lp** %5, align 8
  %28 = getelementptr inbounds %struct.lp, %struct.lp* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.lp*, %struct.lp** %5, align 8
  %34 = getelementptr inbounds %struct.lp, %struct.lp* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.lp*, %struct.lp** %5, align 8
  %38 = getelementptr inbounds %struct.lp, %struct.lp* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %36, %39
  br i1 %40, label %41, label %71

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.lp*, %struct.lp** %5, align 8
  %44 = getelementptr inbounds %struct.lp, %struct.lp* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %42, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %41
  %48 = load %struct.lp*, %struct.lp** %5, align 8
  %49 = getelementptr inbounds %struct.lp, %struct.lp* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.lp*, %struct.lp** %5, align 8
  %55 = getelementptr inbounds %struct.lp, %struct.lp* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  br label %62

56:                                               ; preds = %47
  %57 = load %struct.lp*, %struct.lp** %5, align 8
  %58 = getelementptr inbounds %struct.lp, %struct.lp* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.lp*, %struct.lp** %5, align 8
  %61 = getelementptr inbounds %struct.lp, %struct.lp* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %56, %52
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.lp*, %struct.lp** %5, align 8
  %65 = getelementptr inbounds %struct.lp, %struct.lp* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  br label %70

66:                                               ; preds = %41
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.lp*, %struct.lp** %5, align 8
  %69 = getelementptr inbounds %struct.lp, %struct.lp* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %62
  br label %71

71:                                               ; preds = %70, %35
  %72 = load %struct.lp*, %struct.lp** %5, align 8
  %73 = getelementptr inbounds %struct.lp, %struct.lp* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %71
  %77 = load %struct.lp*, %struct.lp** %5, align 8
  %78 = getelementptr inbounds %struct.lp, %struct.lp* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = ashr i32 %79, 3
  %81 = load i32, i32* %6, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load %struct.lp*, %struct.lp** %5, align 8
  %85 = getelementptr inbounds %struct.lp, %struct.lp* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %93

88:                                               ; preds = %71
  %89 = load i32, i32* %6, align 4
  %90 = shl i32 %89, 3
  %91 = load %struct.lp*, %struct.lp** %5, align 8
  %92 = getelementptr inbounds %struct.lp, %struct.lp* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %24, %88, %76
  ret void
}

declare dso_local %struct.lp* @inet_csk_ca(%struct.sock*) #1

declare dso_local i32 @tcp_lp_owd_calculator(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
