; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pagelist.c_nfs_iocounter_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_pagelist.c_nfs_iocounter_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_io_counter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_iocounter_wait(%struct.nfs_io_counter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs_io_counter*, align 8
  store %struct.nfs_io_counter* %0, %struct.nfs_io_counter** %3, align 8
  %4 = load %struct.nfs_io_counter*, %struct.nfs_io_counter** %3, align 8
  %5 = getelementptr inbounds %struct.nfs_io_counter, %struct.nfs_io_counter* %4, i32 0, i32 0
  %6 = call i64 @atomic_read(i32* %5)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %12

9:                                                ; preds = %1
  %10 = load %struct.nfs_io_counter*, %struct.nfs_io_counter** %3, align 8
  %11 = call i32 @__nfs_iocounter_wait(%struct.nfs_io_counter* %10)
  store i32 %11, i32* %2, align 4
  br label %12

12:                                               ; preds = %9, %8
  %13 = load i32, i32* %2, align 4
  ret i32 %13
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @__nfs_iocounter_wait(%struct.nfs_io_counter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
