; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_commit.c_run_bg_commit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_commit.c_run_bg_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i32, i32 }

@COMMIT_BACKGROUND = common dso_local global i64 0, align 8
@COMMIT_REQUIRED = common dso_local global i64 0, align 8
@COMMIT_RUNNING_REQUIRED = common dso_local global i64 0, align 8
@COMMIT_RUNNING_BACKGROUND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*)* @run_bg_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_bg_commit(%struct.ubifs_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubifs_info*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %3, align 8
  %4 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %5 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %4, i32 0, i32 1
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %8 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @COMMIT_BACKGROUND, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %14 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @COMMIT_REQUIRED, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %60

19:                                               ; preds = %12, %1
  %20 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %21 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %20, i32 0, i32 1
  %22 = call i32 @spin_unlock(i32* %21)
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %24 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %23, i32 0, i32 2
  %25 = call i32 @down_write(i32* %24)
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %27 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %26, i32 0, i32 1
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %30 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @COMMIT_REQUIRED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %19
  %35 = load i64, i64* @COMMIT_RUNNING_REQUIRED, align 8
  %36 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %37 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %50

38:                                               ; preds = %19
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %40 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @COMMIT_BACKGROUND, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i64, i64* @COMMIT_RUNNING_BACKGROUND, align 8
  %46 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %47 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %49

48:                                               ; preds = %38
  br label %56

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %34
  %51 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %52 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %51, i32 0, i32 1
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %55 = call i32 @do_commit(%struct.ubifs_info* %54)
  store i32 %55, i32* %2, align 4
  br label %64

56:                                               ; preds = %48
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %58 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %57, i32 0, i32 2
  %59 = call i32 @up_write(i32* %58)
  br label %60

60:                                               ; preds = %56, %18
  %61 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %62 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %61, i32 0, i32 1
  %63 = call i32 @spin_unlock(i32* %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %50
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @do_commit(%struct.ubifs_info*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
