; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_pid_algo.c_rate_control_pid_normalize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_pid_algo.c_rate_control_pid_normalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_pid_info = type { i32, %struct.rc_pid_rateinfo* }
%struct.rc_pid_rateinfo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rc_pid_info*, i32)* @rate_control_pid_normalize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rate_control_pid_normalize(%struct.rc_pid_info* %0, i32 %1) #0 {
  %3 = alloca %struct.rc_pid_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rc_pid_rateinfo*, align 8
  store %struct.rc_pid_info* %0, %struct.rc_pid_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.rc_pid_info*, %struct.rc_pid_info** %3, align 8
  %9 = getelementptr inbounds %struct.rc_pid_info, %struct.rc_pid_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.rc_pid_info*, %struct.rc_pid_info** %3, align 8
  %12 = getelementptr inbounds %struct.rc_pid_info, %struct.rc_pid_info* %11, i32 0, i32 1
  %13 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %12, align 8
  store %struct.rc_pid_rateinfo* %13, %struct.rc_pid_rateinfo** %7, align 8
  %14 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %7, align 8
  %15 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %14, i64 0
  %16 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %7, align 8
  %23 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %22, i64 0
  %24 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, %21
  store i32 %26, i32* %24, align 4
  br label %43

27:                                               ; preds = %2
  %28 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %7, align 8
  %29 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %28, i64 0
  %30 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %7, align 8
  %38 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %37, i64 0
  %39 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, %36
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %35, %27
  br label %43

43:                                               ; preds = %42, %20
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %103, %43
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = sub nsw i32 %46, 1
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %106

49:                                               ; preds = %44
  %50 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %7, align 8
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %50, i64 %53
  %55 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %7, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %57, i64 %59
  %61 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %62, %63
  %65 = icmp sgt i32 %56, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %49
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %7, align 8
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %68, i64 %71
  %73 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, %67
  store i32 %75, i32* %73, align 4
  br label %102

76:                                               ; preds = %49
  %77 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %7, align 8
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %77, i64 %80
  %82 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %7, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %84, i64 %86
  %88 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp sle i32 %83, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %76
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.rc_pid_rateinfo*, %struct.rc_pid_rateinfo** %7, align 8
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %93, i64 %96
  %98 = getelementptr inbounds %struct.rc_pid_rateinfo, %struct.rc_pid_rateinfo* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, %92
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %91, %76
  br label %102

102:                                              ; preds = %101, %66
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %5, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %44

106:                                              ; preds = %44
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
