; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c___mnt_want_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c___mnt_want_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }

@MNT_WRITE_HOLD = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mnt_want_write(%struct.vfsmount* %0) #0 {
  %2 = alloca %struct.vfsmount*, align 8
  %3 = alloca i32, align 4
  store %struct.vfsmount* %0, %struct.vfsmount** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 (...) @preempt_disable()
  %5 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %6 = call i32 @inc_mnt_writers(%struct.vfsmount* %5)
  %7 = call i32 (...) @smp_mb()
  br label %8

8:                                                ; preds = %15, %1
  %9 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %10 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MNT_WRITE_HOLD, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = call i32 (...) @cpu_relax()
  br label %8

17:                                               ; preds = %8
  %18 = call i32 (...) @smp_rmb()
  %19 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %20 = call i64 @__mnt_is_readonly(%struct.vfsmount* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.vfsmount*, %struct.vfsmount** %2, align 8
  %24 = call i32 @dec_mnt_writers(%struct.vfsmount* %23)
  %25 = load i32, i32* @EROFS, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %17
  br label %28

28:                                               ; preds = %27, %22
  %29 = call i32 (...) @preempt_enable()
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @inc_mnt_writers(%struct.vfsmount*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @__mnt_is_readonly(%struct.vfsmount*) #1

declare dso_local i32 @dec_mnt_writers(%struct.vfsmount*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
