; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_copy_to_user_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_user.c_copy_to_user_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.xfrm_usersa_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_state*, %struct.xfrm_usersa_info*)* @copy_to_user_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_to_user_state(%struct.xfrm_state* %0, %struct.xfrm_usersa_info* %1) #0 {
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.xfrm_usersa_info*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store %struct.xfrm_usersa_info* %1, %struct.xfrm_usersa_info** %4, align 8
  %5 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %6 = call i32 @memset(%struct.xfrm_usersa_info* %5, i32 0, i32 48)
  %7 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %8 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %7, i32 0, i32 11
  %9 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %10 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %9, i32 0, i32 6
  %11 = call i32 @memcpy(i32* %8, i32* %10, i32 4)
  %12 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %13 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %12, i32 0, i32 10
  %14 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %15 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %14, i32 0, i32 5
  %16 = call i32 @memcpy(i32* %13, i32* %15, i32 4)
  %17 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %18 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %17, i32 0, i32 9
  %19 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %20 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %19, i32 0, i32 4
  %21 = call i32 @memcpy(i32* %18, i32* %20, i32 4)
  %22 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %23 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %22, i32 0, i32 8
  %24 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %25 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %24, i32 0, i32 3
  %26 = call i32 @memcpy(i32* %23, i32* %25, i32 4)
  %27 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %28 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %27, i32 0, i32 7
  %29 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %30 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %29, i32 0, i32 2
  %31 = call i32 @memcpy(i32* %28, i32* %30, i32 4)
  %32 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %33 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %32, i32 0, i32 6
  %34 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %35 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 5
  %37 = call i32 @memcpy(i32* %33, i32* %36, i32 4)
  %38 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %39 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %43 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %45 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %49 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %51 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %55 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %57 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %61 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %63 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %67 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %69 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.xfrm_usersa_info*, %struct.xfrm_usersa_info** %4, align 8
  %73 = getelementptr inbounds %struct.xfrm_usersa_info, %struct.xfrm_usersa_info* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  ret void
}

declare dso_local i32 @memset(%struct.xfrm_usersa_info*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
