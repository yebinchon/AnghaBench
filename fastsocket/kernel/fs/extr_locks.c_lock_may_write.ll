; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_lock_may_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_lock_may_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.file_lock* }
%struct.file_lock = type { i64, i64, i32, %struct.file_lock* }

@LOCK_MAND = common dso_local global i32 0, align 4
@LOCK_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lock_may_write(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.file_lock*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 1, i32* %8, align 4
  %9 = call i32 (...) @lock_kernel()
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  store %struct.file_lock* %12, %struct.file_lock** %7, align 8
  br label %13

13:                                               ; preds = %60, %3
  %14 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %15 = icmp ne %struct.file_lock* %14, null
  br i1 %15, label %16, label %64

16:                                               ; preds = %13
  %17 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %18 = call i64 @IS_POSIX(%struct.file_lock* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %22 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %20
  %27 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %28 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = add i64 %30, %31
  %33 = icmp ugt i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26, %20
  br label %60

35:                                               ; preds = %26
  br label %59

36:                                               ; preds = %16
  %37 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %38 = call i64 @IS_FLOCK(%struct.file_lock* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %42 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @LOCK_MAND, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  br label %60

48:                                               ; preds = %40
  %49 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %50 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @LOCK_WRITE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %60

56:                                               ; preds = %48
  br label %58

57:                                               ; preds = %36
  br label %60

58:                                               ; preds = %56
  br label %59

59:                                               ; preds = %58, %35
  store i32 0, i32* %8, align 4
  br label %64

60:                                               ; preds = %57, %55, %47, %34
  %61 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %62 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %61, i32 0, i32 3
  %63 = load %struct.file_lock*, %struct.file_lock** %62, align 8
  store %struct.file_lock* %63, %struct.file_lock** %7, align 8
  br label %13

64:                                               ; preds = %59, %13
  %65 = call i32 (...) @unlock_kernel()
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i64 @IS_POSIX(%struct.file_lock*) #1

declare dso_local i64 @IS_FLOCK(%struct.file_lock*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
