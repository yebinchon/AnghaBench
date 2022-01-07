; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_locking.c_btrfs_clear_lock_blocking_rw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_locking.c_btrfs_clear_lock_blocking_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.extent_buffer = type { i64, i32, i32, i32, i32, i32, i32, i32, i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@BTRFS_WRITE_LOCK_BLOCKING = common dso_local global i32 0, align 4
@BTRFS_READ_LOCK_BLOCKING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_clear_lock_blocking_rw(%struct.extent_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.extent_buffer*, align 8
  %4 = alloca i32, align 4
  store %struct.extent_buffer* %0, %struct.extent_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %6 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %5, i32 0, i32 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %32

9:                                                ; preds = %2
  %10 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %11 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %10, i32 0, i32 4
  %12 = call i32 @read_lock(i32* %11)
  %13 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %14 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %13, i32 0, i32 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %16, label %28

16:                                               ; preds = %9
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %21 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %26 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %25, i32 0, i32 4
  %27 = call i32 @read_unlock(i32* %26)
  br label %90

28:                                               ; preds = %16, %9
  %29 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %30 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %29, i32 0, i32 4
  %31 = call i32 @read_unlock(i32* %30)
  br label %32

32:                                               ; preds = %28, %2
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @BTRFS_WRITE_LOCK_BLOCKING, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %32
  %37 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %38 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %37, i32 0, i32 6
  %39 = call i32 @atomic_read(i32* %38)
  %40 = icmp ne i32 %39, 1
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %44 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %43, i32 0, i32 4
  %45 = call i32 @write_lock(i32* %44)
  %46 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %47 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %46, i32 0, i32 7
  %48 = call i32 @atomic_read(i32* %47)
  %49 = call i32 @WARN_ON(i32 %48)
  %50 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %51 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %50, i32 0, i32 7
  %52 = call i32 @atomic_inc(i32* %51)
  %53 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %54 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %53, i32 0, i32 6
  %55 = call i64 @atomic_dec_and_test(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %36
  %58 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %59 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %58, i32 0, i32 5
  %60 = call i32 @wake_up(i32* %59)
  br label %61

61:                                               ; preds = %57, %36
  br label %89

62:                                               ; preds = %32
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @BTRFS_READ_LOCK_BLOCKING, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %88

66:                                               ; preds = %62
  %67 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %68 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %67, i32 0, i32 2
  %69 = call i32 @atomic_read(i32* %68)
  %70 = icmp eq i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @BUG_ON(i32 %71)
  %73 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %74 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %73, i32 0, i32 4
  %75 = call i32 @read_lock(i32* %74)
  %76 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %77 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %76, i32 0, i32 3
  %78 = call i32 @atomic_inc(i32* %77)
  %79 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %80 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %79, i32 0, i32 2
  %81 = call i64 @atomic_dec_and_test(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %66
  %84 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %85 = getelementptr inbounds %struct.extent_buffer, %struct.extent_buffer* %84, i32 0, i32 1
  %86 = call i32 @wake_up(i32* %85)
  br label %87

87:                                               ; preds = %83, %66
  br label %88

88:                                               ; preds = %87, %62
  br label %89

89:                                               ; preds = %88, %61
  br label %90

90:                                               ; preds = %89, %24
  ret void
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
