; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_member.c_dlm_ls_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_member.c_dlm_ls_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i64, i64, i32, i32, i32, i32, i32 }

@LSFL_RECOVERY_STOP = common dso_local global i32 0, align 4
@LSFL_RUNNING = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_ls_stop(%struct.dlm_ls* %0) #0 {
  %2 = alloca %struct.dlm_ls*, align 8
  %3 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %2, align 8
  %4 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %5 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %4, i32 0, i32 3
  %6 = call i32 @down_write(i32* %5)
  %7 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %8 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %7, i32 0, i32 4
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load i32, i32* @LSFL_RECOVERY_STOP, align 4
  %11 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %12 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %11, i32 0, i32 6
  %13 = call i32 @set_bit(i32 %10, i32* %12)
  %14 = load i32, i32* @LSFL_RUNNING, align 4
  %15 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %16 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %15, i32 0, i32 6
  %17 = call i32 @test_and_clear_bit(i32 %14, i32* %16)
  store i32 %17, i32* %3, align 4
  %18 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %19 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %23 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %22, i32 0, i32 4
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %26 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %25, i32 0, i32 3
  %27 = call i32 @up_write(i32* %26)
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %32 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %31, i32 0, i32 2
  %33 = call i32 @down_write(i32* %32)
  br label %34

34:                                               ; preds = %30, %1
  %35 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %36 = call i32 @dlm_recoverd_suspend(%struct.dlm_ls* %35)
  %37 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %38 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %40 = call i32 @dlm_recoverd_resume(%struct.dlm_ls* %39)
  %41 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %42 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %34
  %46 = load i64, i64* @jiffies, align 8
  %47 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %48 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %45, %34
  ret i32 0
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @dlm_recoverd_suspend(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_recoverd_resume(%struct.dlm_ls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
