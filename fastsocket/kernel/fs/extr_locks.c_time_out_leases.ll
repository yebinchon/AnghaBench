; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_time_out_leases.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_time_out_leases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.file_lock* }
%struct.file_lock = type { i32, i64, %struct.file_lock* }

@F_INPROGRESS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @time_out_leases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @time_out_leases(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.file_lock**, align 8
  %4 = alloca %struct.file_lock*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 0
  store %struct.file_lock** %6, %struct.file_lock*** %3, align 8
  br label %7

7:                                                ; preds = %55, %36, %1
  %8 = load %struct.file_lock**, %struct.file_lock*** %3, align 8
  %9 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  store %struct.file_lock* %9, %struct.file_lock** %4, align 8
  %10 = icmp ne %struct.file_lock* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %13 = call i64 @IS_LEASE(%struct.file_lock* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %17 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @F_INPROGRESS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %15, %11, %7
  %23 = phi i1 [ false, %11 ], [ false, %7 ], [ %21, %15 ]
  br i1 %23, label %24, label %56

24:                                               ; preds = %22
  %25 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %26 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @jiffies, align 4
  %31 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %32 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @time_before(i32 %30, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29, %24
  %37 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %38 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %37, i32 0, i32 2
  store %struct.file_lock** %38, %struct.file_lock*** %3, align 8
  br label %7

39:                                               ; preds = %29
  %40 = load %struct.file_lock**, %struct.file_lock*** %3, align 8
  %41 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %42 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @F_INPROGRESS, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = call i32 @lease_modify(%struct.file_lock** %40, i32 %46)
  %48 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %49 = load %struct.file_lock**, %struct.file_lock*** %3, align 8
  %50 = load %struct.file_lock*, %struct.file_lock** %49, align 8
  %51 = icmp eq %struct.file_lock* %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %54 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %53, i32 0, i32 2
  store %struct.file_lock** %54, %struct.file_lock*** %3, align 8
  br label %55

55:                                               ; preds = %52, %39
  br label %7

56:                                               ; preds = %22
  ret void
}

declare dso_local i64 @IS_LEASE(%struct.file_lock*) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @lease_modify(%struct.file_lock**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
