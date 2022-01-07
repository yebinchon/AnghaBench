; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_lock_may_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_locks.c_lock_may_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.file_lock* }
%struct.file_lock = type { i32, i64, i64, %struct.file_lock* }

@F_RDLCK = common dso_local global i32 0, align 4
@LOCK_MAND = common dso_local global i32 0, align 4
@LOCK_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lock_may_read(%struct.inode* %0, i64 %1, i64 %2) #0 {
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

13:                                               ; preds = %67, %3
  %14 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %15 = icmp ne %struct.file_lock* %14, null
  br i1 %15, label %16, label %71

16:                                               ; preds = %13
  %17 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %18 = call i64 @IS_POSIX(%struct.file_lock* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %16
  %21 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %22 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @F_RDLCK, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %67

27:                                               ; preds = %20
  %28 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %29 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %27
  %34 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %35 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %37, %38
  %40 = icmp ugt i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33, %27
  br label %67

42:                                               ; preds = %33
  br label %66

43:                                               ; preds = %16
  %44 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %45 = call i64 @IS_FLOCK(%struct.file_lock* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %49 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @LOCK_MAND, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %67

55:                                               ; preds = %47
  %56 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %57 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @LOCK_READ, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %67

63:                                               ; preds = %55
  br label %65

64:                                               ; preds = %43
  br label %67

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65, %42
  store i32 0, i32* %8, align 4
  br label %71

67:                                               ; preds = %64, %62, %54, %41, %26
  %68 = load %struct.file_lock*, %struct.file_lock** %7, align 8
  %69 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %68, i32 0, i32 3
  %70 = load %struct.file_lock*, %struct.file_lock** %69, align 8
  store %struct.file_lock* %70, %struct.file_lock** %7, align 8
  br label %13

71:                                               ; preds = %66, %13
  %72 = call i32 (...) @unlock_kernel()
  %73 = load i32, i32* %8, align 4
  ret i32 %73
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
