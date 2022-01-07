; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_state_gc_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_state_gc_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_2__*, i64, i64, i64, %struct.xfrm_state*, %struct.xfrm_state*, %struct.xfrm_state*, %struct.xfrm_state*, %struct.xfrm_state*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.xfrm_state*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_state*)* @xfrm_state_gc_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm_state_gc_destroy(%struct.xfrm_state* %0) #0 {
  %2 = alloca %struct.xfrm_state*, align 8
  store %struct.xfrm_state* %0, %struct.xfrm_state** %2, align 8
  %3 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %4 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %3, i32 0, i32 10
  %5 = call i32 @del_timer_sync(i32* %4)
  %6 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %7 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %6, i32 0, i32 9
  %8 = call i32 @del_timer_sync(i32* %7)
  %9 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %10 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %9, i32 0, i32 8
  %11 = load %struct.xfrm_state*, %struct.xfrm_state** %10, align 8
  %12 = call i32 @kfree(%struct.xfrm_state* %11)
  %13 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %14 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %13, i32 0, i32 7
  %15 = load %struct.xfrm_state*, %struct.xfrm_state** %14, align 8
  %16 = call i32 @kfree(%struct.xfrm_state* %15)
  %17 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %18 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %17, i32 0, i32 6
  %19 = load %struct.xfrm_state*, %struct.xfrm_state** %18, align 8
  %20 = call i32 @kfree(%struct.xfrm_state* %19)
  %21 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %22 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %21, i32 0, i32 5
  %23 = load %struct.xfrm_state*, %struct.xfrm_state** %22, align 8
  %24 = call i32 @kfree(%struct.xfrm_state* %23)
  %25 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %26 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %25, i32 0, i32 4
  %27 = load %struct.xfrm_state*, %struct.xfrm_state** %26, align 8
  %28 = call i32 @kfree(%struct.xfrm_state* %27)
  %29 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %30 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %35 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @xfrm_put_mode(i64 %36)
  br label %38

38:                                               ; preds = %33, %1
  %39 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %40 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %45 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @xfrm_put_mode(i64 %46)
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %50 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %55 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @xfrm_put_mode(i64 %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %60 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = icmp ne %struct.TYPE_2__* %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %58
  %64 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %65 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32 (%struct.xfrm_state*)*, i32 (%struct.xfrm_state*)** %67, align 8
  %69 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %70 = call i32 %68(%struct.xfrm_state* %69)
  %71 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %72 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = call i32 @xfrm_put_type(%struct.TYPE_2__* %73)
  br label %75

75:                                               ; preds = %63, %58
  %76 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %77 = call i32 @security_xfrm_state_free(%struct.xfrm_state* %76)
  %78 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %79 = call i32 @kfree(%struct.xfrm_state* %78)
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @kfree(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_put_mode(i64) #1

declare dso_local i32 @xfrm_put_type(%struct.TYPE_2__*) #1

declare dso_local i32 @security_xfrm_state_free(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
