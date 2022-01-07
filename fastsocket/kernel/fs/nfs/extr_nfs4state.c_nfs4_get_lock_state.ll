; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_get_lock_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4state.c_nfs4_get_lock_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs4_lock_state = type { i32 }
%struct.nfs4_state = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@LK_STATE_IN_USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_lock_state* (%struct.nfs4_state*, i32, i32, i32)* @nfs4_get_lock_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_lock_state* @nfs4_get_lock_state(%struct.nfs4_state* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nfs4_lock_state*, align 8
  %6 = alloca %struct.nfs4_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfs4_lock_state*, align 8
  %11 = alloca %struct.nfs4_lock_state*, align 8
  store %struct.nfs4_state* %0, %struct.nfs4_state** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.nfs4_lock_state* null, %struct.nfs4_lock_state** %11, align 8
  br label %12

12:                                               ; preds = %50, %4
  %13 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %14 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %13, i32 0, i32 1
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.nfs4_lock_state* @__nfs4_find_lock_state(%struct.nfs4_state* %16, i32 %17, i32 %18, i32 %19)
  store %struct.nfs4_lock_state* %20, %struct.nfs4_lock_state** %10, align 8
  %21 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %10, align 8
  %22 = icmp ne %struct.nfs4_lock_state* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %51

24:                                               ; preds = %12
  %25 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %11, align 8
  %26 = icmp ne %struct.nfs4_lock_state* %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %11, align 8
  %29 = getelementptr inbounds %struct.nfs4_lock_state, %struct.nfs4_lock_state* %28, i32 0, i32 0
  %30 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %31 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %30, i32 0, i32 3
  %32 = call i32 @list_add(i32* %29, i32* %31)
  %33 = load i32, i32* @LK_STATE_IN_USE, align 4
  %34 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %35 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %34, i32 0, i32 2
  %36 = call i32 @set_bit(i32 %33, i32* %35)
  %37 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %11, align 8
  store %struct.nfs4_lock_state* %37, %struct.nfs4_lock_state** %10, align 8
  store %struct.nfs4_lock_state* null, %struct.nfs4_lock_state** %11, align 8
  br label %51

38:                                               ; preds = %24
  %39 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %40 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %39, i32 0, i32 1
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call %struct.nfs4_lock_state* @nfs4_alloc_lock_state(%struct.nfs4_state* %42, i32 %43, i32 %44, i32 %45)
  store %struct.nfs4_lock_state* %46, %struct.nfs4_lock_state** %11, align 8
  %47 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %11, align 8
  %48 = icmp eq %struct.nfs4_lock_state* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  store %struct.nfs4_lock_state* null, %struct.nfs4_lock_state** %5, align 8
  br label %67

50:                                               ; preds = %38
  br label %12

51:                                               ; preds = %27, %23
  %52 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %53 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %52, i32 0, i32 1
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %11, align 8
  %56 = icmp ne %struct.nfs4_lock_state* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %59 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %11, align 8
  %64 = call i32 @nfs4_free_lock_state(i32 %62, %struct.nfs4_lock_state* %63)
  br label %65

65:                                               ; preds = %57, %51
  %66 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %10, align 8
  store %struct.nfs4_lock_state* %66, %struct.nfs4_lock_state** %5, align 8
  br label %67

67:                                               ; preds = %65, %49
  %68 = load %struct.nfs4_lock_state*, %struct.nfs4_lock_state** %5, align 8
  ret %struct.nfs4_lock_state* %68
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nfs4_lock_state* @__nfs4_find_lock_state(%struct.nfs4_state*, i32, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.nfs4_lock_state* @nfs4_alloc_lock_state(%struct.nfs4_state*, i32, i32, i32) #1

declare dso_local i32 @nfs4_free_lock_state(i32, %struct.nfs4_lock_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
