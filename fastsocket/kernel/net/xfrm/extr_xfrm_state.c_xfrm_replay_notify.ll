; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_replay_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_replay_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32, i64, i32, %struct.TYPE_6__, %struct.TYPE_5__, i64 }
%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.TYPE_5__ = type { i64, i32, i64 }
%struct.km_event = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@XFRM_TIME_DEFER = common dso_local global i32 0, align 4
@XFRM_MSG_NEWAE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfrm_replay_notify(%struct.xfrm_state* %0, i32 %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.km_event, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %88 [
    i32 128, label %7
    i32 129, label %51
  ]

7:                                                ; preds = %2
  %8 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %9 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %50

12:                                               ; preds = %7
  %13 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %14 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %18 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %16, %20
  %22 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %23 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %12
  %27 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %28 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %32 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %30, %34
  %36 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %37 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %35, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %26
  %41 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %42 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @XFRM_TIME_DEFER, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 129, i32* %4, align 4
  br label %49

48:                                               ; preds = %40
  br label %122

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %49, %26, %12, %7
  br label %88

51:                                               ; preds = %2
  %52 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %53 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %57 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %55, %59
  br i1 %60, label %61, label %87

61:                                               ; preds = %51
  %62 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %63 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %67 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %65, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %61
  %72 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %73 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %77 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %75, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %71
  %82 = load i32, i32* @XFRM_TIME_DEFER, align 4
  %83 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %84 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %122

87:                                               ; preds = %71, %61, %51
  br label %88

88:                                               ; preds = %2, %87, %50
  %89 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %90 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %89, i32 0, i32 4
  %91 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %92 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %91, i32 0, i32 3
  %93 = call i32 @memcpy(%struct.TYPE_5__* %90, %struct.TYPE_6__* %92, i32 4)
  %94 = load i32, i32* @XFRM_MSG_NEWAE, align 4
  %95 = getelementptr inbounds %struct.km_event, %struct.km_event* %5, i32 0, i32 1
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %4, align 4
  %97 = getelementptr inbounds %struct.km_event, %struct.km_event* %5, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %100 = call i32 @km_state_notify(%struct.xfrm_state* %99, %struct.km_event* %5)
  %101 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %102 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %88
  %106 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %107 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %106, i32 0, i32 2
  %108 = load i64, i64* @jiffies, align 8
  %109 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %110 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %108, %111
  %113 = call i32 @mod_timer(i32* %107, i64 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %105
  %116 = load i32, i32* @XFRM_TIME_DEFER, align 4
  %117 = xor i32 %116, -1
  %118 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %119 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %48, %81, %115, %105, %88
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_5__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @km_state_notify(%struct.xfrm_state*, %struct.km_event*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
