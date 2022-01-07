; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_state_check_expire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_state_check_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i64, i64, i64 }

@XFRM_STATE_VALID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@XFRM_STATE_EXPIRED = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm_state_check_expire(%struct.xfrm_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfrm_state*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  %4 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %5 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = call i64 (...) @get_seconds()
  %11 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %12 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  store i64 %10, i64* %13, align 8
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %16 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @XFRM_STATE_VALID, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %88

24:                                               ; preds = %14
  %25 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %26 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %30 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %28, %32
  br i1 %33, label %44, label %34

34:                                               ; preds = %24
  %35 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %36 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %40 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %38, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %34, %24
  %45 = load i64, i64* @XFRM_STATE_EXPIRED, align 8
  %46 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %47 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  %49 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %50 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %49, i32 0, i32 3
  %51 = load i32, i32* @jiffies, align 4
  %52 = call i32 @mod_timer(i32* %50, i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %88

55:                                               ; preds = %34
  %56 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %57 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %87, label %61

61:                                               ; preds = %55
  %62 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %63 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %67 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp sge i64 %65, %69
  br i1 %70, label %81, label %71

71:                                               ; preds = %61
  %72 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %73 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %77 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = icmp sge i64 %75, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %71, %61
  %82 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %83 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  store i32 1, i32* %84, align 8
  %85 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %86 = call i32 @km_state_expired(%struct.xfrm_state* %85, i32 0, i32 0)
  br label %87

87:                                               ; preds = %81, %71, %55
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %44, %21
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i64 @get_seconds(...) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @km_state_expired(%struct.xfrm_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
