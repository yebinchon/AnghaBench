; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_recoverd.c_enable_locking.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_recoverd.c_enable_locking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i64, i32, i32, i32, i32 }

@EINTR = common dso_local global i32 0, align 4
@LSFL_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, i64)* @enable_locking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_locking(%struct.dlm_ls* %0, i64 %1) #0 {
  %3 = alloca %struct.dlm_ls*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @EINTR, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %9 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %8, i32 0, i32 1
  %10 = call i32 @down_write(i32* %9)
  %11 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %12 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %11, i32 0, i32 2
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %15 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load i32, i32* @LSFL_RUNNING, align 4
  %21 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %22 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %21, i32 0, i32 4
  %23 = call i32 @set_bit(i32 %20, i32* %22)
  %24 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %25 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %24, i32 0, i32 3
  %26 = call i32 @up_write(i32* %25)
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %19, %2
  %28 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %29 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %28, i32 0, i32 2
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load %struct.dlm_ls*, %struct.dlm_ls** %3, align 8
  %32 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %31, i32 0, i32 1
  %33 = call i32 @up_write(i32* %32)
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
