; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_state_look_at.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_state_look_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32 }
%struct.xfrm_state = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.flowi = type { i32 }

@XFRM_STATE_VALID = common dso_local global i64 0, align 8
@XFRM_STATE_ACQ = common dso_local global i64 0, align 8
@XFRM_STATE_ERROR = common dso_local global i64 0, align 8
@XFRM_STATE_EXPIRED = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_policy*, %struct.xfrm_state*, %struct.flowi*, i16, i32*, i32*, %struct.xfrm_state**, i32*, i32*)* @xfrm_state_look_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm_state_look_at(%struct.xfrm_policy* %0, %struct.xfrm_state* %1, %struct.flowi* %2, i16 zeroext %3, i32* %4, i32* %5, %struct.xfrm_state** %6, i32* %7, i32* %8) #0 {
  %10 = alloca %struct.xfrm_policy*, align 8
  %11 = alloca %struct.xfrm_state*, align 8
  %12 = alloca %struct.flowi*, align 8
  %13 = alloca i16, align 2
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.xfrm_state**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %10, align 8
  store %struct.xfrm_state* %1, %struct.xfrm_state** %11, align 8
  store %struct.flowi* %2, %struct.flowi** %12, align 8
  store i16 %3, i16* %13, align 2
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store %struct.xfrm_state** %6, %struct.xfrm_state*** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %19 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %20 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @XFRM_STATE_VALID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %89

25:                                               ; preds = %9
  %26 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %27 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %33 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %32, i32 0, i32 0
  %34 = load %struct.flowi*, %struct.flowi** %12, align 8
  %35 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %36 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @xfrm_selector_match(%struct.TYPE_6__* %33, %struct.flowi* %34, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %31, %25
  %42 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %43 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %44 = load %struct.flowi*, %struct.flowi** %12, align 8
  %45 = call i64 @security_xfrm_state_pol_flow_match(%struct.xfrm_state* %42, %struct.xfrm_policy* %43, %struct.flowi* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %41, %31
  br label %135

48:                                               ; preds = %41
  %49 = load %struct.xfrm_state**, %struct.xfrm_state*** %16, align 8
  %50 = load %struct.xfrm_state*, %struct.xfrm_state** %49, align 8
  %51 = icmp ne %struct.xfrm_state* %50, null
  br i1 %51, label %52, label %85

52:                                               ; preds = %48
  %53 = load %struct.xfrm_state**, %struct.xfrm_state*** %16, align 8
  %54 = load %struct.xfrm_state*, %struct.xfrm_state** %53, align 8
  %55 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %59 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %57, %61
  br i1 %62, label %85, label %63

63:                                               ; preds = %52
  %64 = load %struct.xfrm_state**, %struct.xfrm_state*** %16, align 8
  %65 = load %struct.xfrm_state*, %struct.xfrm_state** %64, align 8
  %66 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %70 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %68, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %63
  %75 = load %struct.xfrm_state**, %struct.xfrm_state*** %16, align 8
  %76 = load %struct.xfrm_state*, %struct.xfrm_state** %75, align 8
  %77 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %81 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp slt i64 %79, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %74, %52, %48
  %86 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %87 = load %struct.xfrm_state**, %struct.xfrm_state*** %16, align 8
  store %struct.xfrm_state* %86, %struct.xfrm_state** %87, align 8
  br label %88

88:                                               ; preds = %85, %74, %63
  br label %135

89:                                               ; preds = %9
  %90 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %91 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @XFRM_STATE_ACQ, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32*, i32** %17, align 8
  store i32 1, i32* %97, align 4
  br label %134

98:                                               ; preds = %89
  %99 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %100 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @XFRM_STATE_ERROR, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %112, label %105

105:                                              ; preds = %98
  %106 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %107 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @XFRM_STATE_EXPIRED, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %133

112:                                              ; preds = %105, %98
  %113 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %114 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %113, i32 0, i32 0
  %115 = load %struct.flowi*, %struct.flowi** %12, align 8
  %116 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %117 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @xfrm_selector_match(%struct.TYPE_6__* %114, %struct.flowi* %115, i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %112
  %123 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %124 = load %struct.xfrm_policy*, %struct.xfrm_policy** %10, align 8
  %125 = load %struct.flowi*, %struct.flowi** %12, align 8
  %126 = call i64 @security_xfrm_state_pol_flow_match(%struct.xfrm_state* %123, %struct.xfrm_policy* %124, %struct.flowi* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load i32, i32* @ESRCH, align 4
  %130 = sub nsw i32 0, %129
  %131 = load i32*, i32** %18, align 8
  store i32 %130, i32* %131, align 4
  br label %132

132:                                              ; preds = %128, %122, %112
  br label %133

133:                                              ; preds = %132, %105
  br label %134

134:                                              ; preds = %133, %96
  br label %135

135:                                              ; preds = %47, %134, %88
  ret void
}

declare dso_local i64 @xfrm_selector_match(%struct.TYPE_6__*, %struct.flowi*, i64) #1

declare dso_local i64 @security_xfrm_state_pol_flow_match(%struct.xfrm_state*, %struct.xfrm_policy*, %struct.flowi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
