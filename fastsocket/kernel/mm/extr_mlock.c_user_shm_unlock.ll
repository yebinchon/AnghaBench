; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mlock.c_user_shm_unlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_mlock.c_user_shm_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_struct = type { i64 }

@shmlock_user_lock = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_shm_unlock(i64 %0, %struct.user_struct* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.user_struct*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.user_struct* %1, %struct.user_struct** %4, align 8
  %5 = call i32 @spin_lock(i32* @shmlock_user_lock)
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @PAGE_SIZE, align 8
  %8 = add i64 %6, %7
  %9 = sub i64 %8, 1
  %10 = load i64, i64* @PAGE_SHIFT, align 8
  %11 = lshr i64 %9, %10
  %12 = load %struct.user_struct*, %struct.user_struct** %4, align 8
  %13 = getelementptr inbounds %struct.user_struct, %struct.user_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub i64 %14, %11
  store i64 %15, i64* %13, align 8
  %16 = call i32 @spin_unlock(i32* @shmlock_user_lock)
  %17 = load %struct.user_struct*, %struct.user_struct** %4, align 8
  %18 = call i32 @free_uid(%struct.user_struct* %17)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @free_uid(%struct.user_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
