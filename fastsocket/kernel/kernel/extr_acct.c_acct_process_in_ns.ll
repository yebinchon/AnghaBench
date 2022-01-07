; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_acct.c_acct_process_in_ns.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_acct.c_acct_process_in_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pid_namespace = type { %struct.bsd_acct_struct* }
%struct.bsd_acct_struct = type { %struct.file* }
%struct.file = type { i32 }

@acct_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pid_namespace*)* @acct_process_in_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acct_process_in_ns(%struct.pid_namespace* %0) #0 {
  %2 = alloca %struct.pid_namespace*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.bsd_acct_struct*, align 8
  store %struct.pid_namespace* %0, %struct.pid_namespace** %2, align 8
  store %struct.file* null, %struct.file** %3, align 8
  %5 = load %struct.pid_namespace*, %struct.pid_namespace** %2, align 8
  %6 = getelementptr inbounds %struct.pid_namespace, %struct.pid_namespace* %5, i32 0, i32 0
  %7 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %6, align 8
  store %struct.bsd_acct_struct* %7, %struct.bsd_acct_struct** %4, align 8
  %8 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %9 = icmp ne %struct.bsd_acct_struct* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %12 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %11, i32 0, i32 0
  %13 = load %struct.file*, %struct.file** %12, align 8
  %14 = icmp ne %struct.file* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %1
  br label %39

16:                                               ; preds = %10
  %17 = call i32 @spin_lock(i32* @acct_lock)
  %18 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %19 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %18, i32 0, i32 0
  %20 = load %struct.file*, %struct.file** %19, align 8
  store %struct.file* %20, %struct.file** %3, align 8
  %21 = load %struct.file*, %struct.file** %3, align 8
  %22 = icmp ne %struct.file* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = call i32 @spin_unlock(i32* @acct_lock)
  br label %39

29:                                               ; preds = %16
  %30 = load %struct.file*, %struct.file** %3, align 8
  %31 = call i32 @get_file(%struct.file* %30)
  %32 = call i32 @spin_unlock(i32* @acct_lock)
  %33 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %34 = load %struct.pid_namespace*, %struct.pid_namespace** %2, align 8
  %35 = load %struct.file*, %struct.file** %3, align 8
  %36 = call i32 @do_acct_process(%struct.bsd_acct_struct* %33, %struct.pid_namespace* %34, %struct.file* %35)
  %37 = load %struct.file*, %struct.file** %3, align 8
  %38 = call i32 @fput(%struct.file* %37)
  br label %39

39:                                               ; preds = %29, %27, %15
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @get_file(%struct.file*) #1

declare dso_local i32 @do_acct_process(%struct.bsd_acct_struct*, %struct.pid_namespace*, %struct.file*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
