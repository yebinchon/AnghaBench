; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_posix_unblock_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_posix_unblock_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.file_lock = type { i64 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @posix_unblock_lock(%struct.file* %0, %struct.file_lock* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.file_lock*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.file_lock* %1, %struct.file_lock** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 (...) @lock_kernel()
  %7 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %8 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %13 = call i32 @__locks_delete_block(%struct.file_lock* %12)
  br label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOENT, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = call i32 (...) @unlock_kernel()
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @__locks_delete_block(%struct.file_lock*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
