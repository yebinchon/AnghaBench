; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_recoverd.c_do_ls_recovery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_recoverd.c_do_ls_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i64, i32, i32, %struct.dlm_recover* }
%struct.dlm_recover = type { i64, %struct.dlm_recover*, %struct.dlm_recover* }

@LSFL_RECOVERY_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ls*)* @do_ls_recovery to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_ls_recovery(%struct.dlm_ls* %0) #0 {
  %2 = alloca %struct.dlm_ls*, align 8
  %3 = alloca %struct.dlm_recover*, align 8
  store %struct.dlm_ls* %0, %struct.dlm_ls** %2, align 8
  store %struct.dlm_recover* null, %struct.dlm_recover** %3, align 8
  %4 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %5 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %4, i32 0, i32 1
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %8 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %7, i32 0, i32 3
  %9 = load %struct.dlm_recover*, %struct.dlm_recover** %8, align 8
  store %struct.dlm_recover* %9, %struct.dlm_recover** %3, align 8
  %10 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %11 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %10, i32 0, i32 3
  store %struct.dlm_recover* null, %struct.dlm_recover** %11, align 8
  %12 = load %struct.dlm_recover*, %struct.dlm_recover** %3, align 8
  %13 = icmp ne %struct.dlm_recover* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %16 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.dlm_recover*, %struct.dlm_recover** %3, align 8
  %19 = getelementptr inbounds %struct.dlm_recover, %struct.dlm_recover* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %14
  %23 = load i32, i32* @LSFL_RECOVERY_STOP, align 4
  %24 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %25 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %24, i32 0, i32 2
  %26 = call i32 @clear_bit(i32 %23, i32* %25)
  br label %27

27:                                               ; preds = %22, %14, %1
  %28 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %29 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %28, i32 0, i32 1
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load %struct.dlm_recover*, %struct.dlm_recover** %3, align 8
  %32 = icmp ne %struct.dlm_recover* %31, null
  br i1 %32, label %33, label %47

33:                                               ; preds = %27
  %34 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %35 = load %struct.dlm_recover*, %struct.dlm_recover** %3, align 8
  %36 = call i32 @ls_recover(%struct.dlm_ls* %34, %struct.dlm_recover* %35)
  %37 = load %struct.dlm_recover*, %struct.dlm_recover** %3, align 8
  %38 = getelementptr inbounds %struct.dlm_recover, %struct.dlm_recover* %37, i32 0, i32 2
  %39 = load %struct.dlm_recover*, %struct.dlm_recover** %38, align 8
  %40 = call i32 @kfree(%struct.dlm_recover* %39)
  %41 = load %struct.dlm_recover*, %struct.dlm_recover** %3, align 8
  %42 = getelementptr inbounds %struct.dlm_recover, %struct.dlm_recover* %41, i32 0, i32 1
  %43 = load %struct.dlm_recover*, %struct.dlm_recover** %42, align 8
  %44 = call i32 @kfree(%struct.dlm_recover* %43)
  %45 = load %struct.dlm_recover*, %struct.dlm_recover** %3, align 8
  %46 = call i32 @kfree(%struct.dlm_recover* %45)
  br label %47

47:                                               ; preds = %33, %27
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ls_recover(%struct.dlm_ls*, %struct.dlm_recover*) #1

declare dso_local i32 @kfree(%struct.dlm_recover*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
