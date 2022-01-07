; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_object.c_fscache_invalidate_object.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fscache/extr_object.c_fscache_invalidate_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fscache_state = type { i32 }
%struct.fscache_object = type { i32 }

@fscache_n_invalidates_run = common dso_local global i32 0, align 4
@fscache_n_cop_invalidate_object = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fscache_state* (%struct.fscache_object*, i32)* @fscache_invalidate_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fscache_state* @fscache_invalidate_object(%struct.fscache_object* %0, i32 %1) #0 {
  %3 = alloca %struct.fscache_object*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fscache_state*, align 8
  store %struct.fscache_object* %0, %struct.fscache_object** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @fscache_stat(i32* @fscache_n_invalidates_run)
  %7 = call i32 @fscache_stat(i32* @fscache_n_cop_invalidate_object)
  %8 = load %struct.fscache_object*, %struct.fscache_object** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.fscache_state* @_fscache_invalidate_object(%struct.fscache_object* %8, i32 %9)
  store %struct.fscache_state* %10, %struct.fscache_state** %5, align 8
  %11 = call i32 @fscache_stat_d(i32* @fscache_n_cop_invalidate_object)
  %12 = load %struct.fscache_state*, %struct.fscache_state** %5, align 8
  ret %struct.fscache_state* %12
}

declare dso_local i32 @fscache_stat(i32*) #1

declare dso_local %struct.fscache_state* @_fscache_invalidate_object(%struct.fscache_object*, i32) #1

declare dso_local i32 @fscache_stat_d(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
