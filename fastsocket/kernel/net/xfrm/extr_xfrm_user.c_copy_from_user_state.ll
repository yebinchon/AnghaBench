; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_copy_from_user_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_copy_from_user_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.xfrm_usersa_info = type { i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@XFRM_STATE_AF_UNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_state*, %struct.xfrm_usersa_info*)* @copy_from_user_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_from_user_state(%struct.xfrm_state* %0, %struct.xfrm_usersa_info* %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.xfrm_usersa_info*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store %struct.xfrm_usersa_info* %1, %struct.xfrm_usersa_info** %4, align 8
  %5 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %6 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %5, i32 0, i32 3
  %7 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %8 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %7, i32 0, i32 8
  %9 = call i32 @memcpy(%struct.TYPE_4__* %6, i32* %8, i32 8)
  %10 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %11 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %10, i32 0, i32 0
  %12 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %13 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %12, i32 0, i32 7
  %14 = call i32 @memcpy(%struct.TYPE_4__* %11, i32* %13, i32 8)
  %15 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %16 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %15, i32 0, i32 2
  %17 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %18 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %17, i32 0, i32 6
  %19 = call i32 @memcpy(%struct.TYPE_4__* %16, i32* %18, i32 8)
  %20 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %21 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %24 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 5
  store i32 %22, i32* %25, align 8
  %26 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %27 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %30 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  store i32 %28, i32* %31, align 4
  %32 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %33 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %36 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 8
  %38 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %39 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %42 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  store i64 %40, i64* %43, align 8
  %44 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %45 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %48 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %47, i32 0, i32 2
  %49 = call i32 @memcpy(%struct.TYPE_4__* %46, i32* %48, i32 8)
  %50 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %51 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %54 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %57 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %75, label %61

61:                                               ; preds = %2
  %62 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %63 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @XFRM_STATE_AF_UNSPEC, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %61
  %69 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %70 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %73 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i64 %71, i64* %74, align 8
  br label %75

75:                                               ; preds = %68, %61, %2
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_4__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
