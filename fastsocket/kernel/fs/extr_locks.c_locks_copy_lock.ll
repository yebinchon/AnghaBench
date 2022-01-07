; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_locks_copy_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_locks_copy_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_lock = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @locks_copy_lock(%struct.file_lock* %0, %struct.file_lock* %1) #0 {
  %3 = alloca %struct.file_lock*, align 8
  %4 = alloca %struct.file_lock*, align 8
  store %struct.file_lock* %0, %struct.file_lock** %3, align 8
  store %struct.file_lock* %1, %struct.file_lock** %4, align 8
  %5 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %6 = call i32 @locks_release_private(%struct.file_lock* %5)
  %7 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %8 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %9 = call i32 @__locks_copy_lock(%struct.file_lock* %7, %struct.file_lock* %8)
  %10 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %11 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %14 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %16 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %19 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %21 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %24 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.file_lock*, %struct.file_lock** %3, align 8
  %26 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %27 = call i32 @locks_copy_private(%struct.file_lock* %25, %struct.file_lock* %26)
  ret void
}

declare dso_local i32 @locks_release_private(%struct.file_lock*) #1

declare dso_local i32 @__locks_copy_lock(%struct.file_lock*, %struct.file_lock*) #1

declare dso_local i32 @locks_copy_private(%struct.file_lock*, %struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
