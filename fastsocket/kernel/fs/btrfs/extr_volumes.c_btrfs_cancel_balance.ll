; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_cancel_balance.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_cancel_balance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, i32, i32, i64, i32, i32 }

@ENOTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_cancel_balance(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btrfs_fs_info*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  %4 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %5 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %8 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %13 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %12, i32 0, i32 0
  %14 = call i32 @mutex_unlock(i32* %13)
  %15 = load i32, i32* @ENOTCONN, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %82

17:                                               ; preds = %1
  %18 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %19 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %18, i32 0, i32 1
  %20 = call i32 @atomic_inc(i32* %19)
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %22 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %21, i32 0, i32 2
  %23 = call i64 @atomic_read(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %17
  %26 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %27 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %30 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %33 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %32, i32 0, i32 2
  %34 = call i64 @atomic_read(i32* %33)
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @wait_event(i32 %31, i32 %36)
  %38 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %39 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  br label %62

41:                                               ; preds = %17
  %42 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %43 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %42, i32 0, i32 0
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %46 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %45, i32 0, i32 4
  %47 = call i32 @mutex_lock(i32* %46)
  %48 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %49 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %48, i32 0, i32 0
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %52 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %41
  %56 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %57 = call i32 @__cancel_balance(%struct.btrfs_fs_info* %56)
  br label %58

58:                                               ; preds = %55, %41
  %59 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %60 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %59, i32 0, i32 4
  %61 = call i32 @mutex_unlock(i32* %60)
  br label %62

62:                                               ; preds = %58, %25
  %63 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %64 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %69 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %68, i32 0, i32 2
  %70 = call i64 @atomic_read(i32* %69)
  %71 = icmp ne i64 %70, 0
  br label %72

72:                                               ; preds = %67, %62
  %73 = phi i1 [ true, %62 ], [ %71, %67 ]
  %74 = zext i1 %73 to i32
  %75 = call i32 @BUG_ON(i32 %74)
  %76 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %77 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %76, i32 0, i32 1
  %78 = call i32 @atomic_dec(i32* %77)
  %79 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %80 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %72, %11
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @__cancel_balance(%struct.btrfs_fs_info*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
