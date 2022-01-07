; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_free_bprm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_free_bprm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.linux_binprm = type { i64, i64, i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_bprm(%struct.linux_binprm* %0) #0 {
  %2 = alloca %struct.linux_binprm*, align 8
  store %struct.linux_binprm* %0, %struct.linux_binprm** %2, align 8
  %3 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %4 = call i32 @free_arg_pages(%struct.linux_binprm* %3)
  %5 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %6 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @mutex_unlock(i32* %11)
  %13 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %14 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @abort_creds(i64 %15)
  br label %17

17:                                               ; preds = %9, %1
  %18 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %19 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %22 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %27 = getelementptr inbounds %struct.linux_binprm, %struct.linux_binprm* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.linux_binprm*
  %30 = call i32 @kfree(%struct.linux_binprm* %29)
  br label %31

31:                                               ; preds = %25, %17
  %32 = load %struct.linux_binprm*, %struct.linux_binprm** %2, align 8
  %33 = call i32 @kfree(%struct.linux_binprm* %32)
  ret void
}

declare dso_local i32 @free_arg_pages(%struct.linux_binprm*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @abort_creds(i64) #1

declare dso_local i32 @kfree(%struct.linux_binprm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
