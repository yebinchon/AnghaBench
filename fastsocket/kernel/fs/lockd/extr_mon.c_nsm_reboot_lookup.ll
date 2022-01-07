; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_mon.c_nsm_reboot_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_mon.c_nsm_reboot_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsm_handle = type { i32, i32, i32, i64 }
%struct.nlm_reboot = type { i32, i32, i32 }

@nsm_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"lockd: never saw rebooted peer '%.*s' before\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"lockd: host %s (%s) rebooted, cnt %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nsm_handle* @nsm_reboot_lookup(%struct.nlm_reboot* %0) #0 {
  %2 = alloca %struct.nsm_handle*, align 8
  %3 = alloca %struct.nlm_reboot*, align 8
  %4 = alloca %struct.nsm_handle*, align 8
  store %struct.nlm_reboot* %0, %struct.nlm_reboot** %3, align 8
  %5 = call i32 @spin_lock(i32* @nsm_lock)
  %6 = load %struct.nlm_reboot*, %struct.nlm_reboot** %3, align 8
  %7 = getelementptr inbounds %struct.nlm_reboot, %struct.nlm_reboot* %6, i32 0, i32 2
  %8 = call %struct.nsm_handle* @nsm_lookup_priv(i32* %7)
  store %struct.nsm_handle* %8, %struct.nsm_handle** %4, align 8
  %9 = load %struct.nsm_handle*, %struct.nsm_handle** %4, align 8
  %10 = icmp eq %struct.nsm_handle* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = call i32 @spin_unlock(i32* @nsm_lock)
  %16 = load %struct.nlm_reboot*, %struct.nlm_reboot** %3, align 8
  %17 = getelementptr inbounds %struct.nlm_reboot, %struct.nlm_reboot* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.nlm_reboot*, %struct.nlm_reboot** %3, align 8
  %20 = getelementptr inbounds %struct.nlm_reboot, %struct.nlm_reboot* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, i32, i32, ...) @dprintk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  %23 = load %struct.nsm_handle*, %struct.nsm_handle** %4, align 8
  store %struct.nsm_handle* %23, %struct.nsm_handle** %2, align 8
  br label %42

24:                                               ; preds = %1
  %25 = load %struct.nsm_handle*, %struct.nsm_handle** %4, align 8
  %26 = getelementptr inbounds %struct.nsm_handle, %struct.nsm_handle* %25, i32 0, i32 0
  %27 = call i32 @atomic_inc(i32* %26)
  %28 = call i32 @spin_unlock(i32* @nsm_lock)
  %29 = load %struct.nsm_handle*, %struct.nsm_handle** %4, align 8
  %30 = getelementptr inbounds %struct.nsm_handle, %struct.nsm_handle* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.nsm_handle*, %struct.nsm_handle** %4, align 8
  %32 = getelementptr inbounds %struct.nsm_handle, %struct.nsm_handle* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.nsm_handle*, %struct.nsm_handle** %4, align 8
  %35 = getelementptr inbounds %struct.nsm_handle, %struct.nsm_handle* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nsm_handle*, %struct.nsm_handle** %4, align 8
  %38 = getelementptr inbounds %struct.nsm_handle, %struct.nsm_handle* %37, i32 0, i32 0
  %39 = call i32 @atomic_read(i32* %38)
  %40 = call i32 (i8*, i32, i32, ...) @dprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %36, i32 %39)
  %41 = load %struct.nsm_handle*, %struct.nsm_handle** %4, align 8
  store %struct.nsm_handle* %41, %struct.nsm_handle** %2, align 8
  br label %42

42:                                               ; preds = %24, %14
  %43 = load %struct.nsm_handle*, %struct.nsm_handle** %2, align 8
  ret %struct.nsm_handle* %43
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nsm_handle* @nsm_lookup_priv(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dprintk(i8*, i32, i32, ...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
