; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_get_free_bundle_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_get_free_bundle_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle_state = type { i64, %struct.bundle_state*, i8*, %struct.bundle_state* }

@free_bundle_state_chain = common dso_local global %struct.bundle_state* null, align 8
@dfa_state_size = common dso_local global i32 0, align 4
@allocated_bundle_states_chain = common dso_local global %struct.bundle_state* null, align 8
@bundle_states_num = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bundle_state* ()* @get_free_bundle_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bundle_state* @get_free_bundle_state() #0 {
  %1 = alloca %struct.bundle_state*, align 8
  %2 = load %struct.bundle_state*, %struct.bundle_state** @free_bundle_state_chain, align 8
  %3 = icmp ne %struct.bundle_state* %2, null
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load %struct.bundle_state*, %struct.bundle_state** @free_bundle_state_chain, align 8
  store %struct.bundle_state* %5, %struct.bundle_state** %1, align 8
  %6 = load %struct.bundle_state*, %struct.bundle_state** %1, align 8
  %7 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %6, i32 0, i32 3
  %8 = load %struct.bundle_state*, %struct.bundle_state** %7, align 8
  store %struct.bundle_state* %8, %struct.bundle_state** @free_bundle_state_chain, align 8
  br label %20

9:                                                ; preds = %0
  %10 = call i8* @xmalloc(i32 32)
  %11 = bitcast i8* %10 to %struct.bundle_state*
  store %struct.bundle_state* %11, %struct.bundle_state** %1, align 8
  %12 = load i32, i32* @dfa_state_size, align 4
  %13 = call i8* @xmalloc(i32 %12)
  %14 = load %struct.bundle_state*, %struct.bundle_state** %1, align 8
  %15 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load %struct.bundle_state*, %struct.bundle_state** @allocated_bundle_states_chain, align 8
  %17 = load %struct.bundle_state*, %struct.bundle_state** %1, align 8
  %18 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %17, i32 0, i32 1
  store %struct.bundle_state* %16, %struct.bundle_state** %18, align 8
  %19 = load %struct.bundle_state*, %struct.bundle_state** %1, align 8
  store %struct.bundle_state* %19, %struct.bundle_state** @allocated_bundle_states_chain, align 8
  br label %20

20:                                               ; preds = %9, %4
  %21 = load i32, i32* @bundle_states_num, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @bundle_states_num, align 4
  %23 = sext i32 %21 to i64
  %24 = load %struct.bundle_state*, %struct.bundle_state** %1, align 8
  %25 = getelementptr inbounds %struct.bundle_state, %struct.bundle_state* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.bundle_state*, %struct.bundle_state** %1, align 8
  ret %struct.bundle_state* %26
}

declare dso_local i8* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
