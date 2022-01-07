; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_acct.c_acct_file_reopen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_acct.c_acct_file_reopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsd_acct_struct = type { i32, %struct.TYPE_6__, i32, i64, %struct.pid_namespace*, %struct.file* }
%struct.TYPE_6__ = type { i64 }
%struct.file = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.pid_namespace = type { i32 }

@acct_list = common dso_local global i32 0, align 4
@acct_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ACCT_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@acct_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bsd_acct_struct*, %struct.file*, %struct.pid_namespace*)* @acct_file_reopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acct_file_reopen(%struct.bsd_acct_struct* %0, %struct.file* %1, %struct.pid_namespace* %2) #0 {
  %4 = alloca %struct.bsd_acct_struct*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.pid_namespace*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.pid_namespace*, align 8
  store %struct.bsd_acct_struct* %0, %struct.bsd_acct_struct** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store %struct.pid_namespace* %2, %struct.pid_namespace** %6, align 8
  store %struct.file* null, %struct.file** %7, align 8
  store %struct.pid_namespace* null, %struct.pid_namespace** %8, align 8
  %9 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %10 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %9, i32 0, i32 5
  %11 = load %struct.file*, %struct.file** %10, align 8
  %12 = icmp ne %struct.file* %11, null
  br i1 %12, label %13, label %34

13:                                               ; preds = %3
  %14 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %15 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %14, i32 0, i32 5
  %16 = load %struct.file*, %struct.file** %15, align 8
  store %struct.file* %16, %struct.file** %7, align 8
  %17 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %18 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %17, i32 0, i32 4
  %19 = load %struct.pid_namespace*, %struct.pid_namespace** %18, align 8
  store %struct.pid_namespace* %19, %struct.pid_namespace** %8, align 8
  %20 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %21 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %20, i32 0, i32 1
  %22 = call i32 @del_timer(%struct.TYPE_6__* %21)
  %23 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %24 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %26 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %28 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %27, i32 0, i32 5
  store %struct.file* null, %struct.file** %28, align 8
  %29 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %30 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %29, i32 0, i32 4
  store %struct.pid_namespace* null, %struct.pid_namespace** %30, align 8
  %31 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %32 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %31, i32 0, i32 2
  %33 = call i32 @list_del(i32* %32)
  br label %34

34:                                               ; preds = %13, %3
  %35 = load %struct.file*, %struct.file** %5, align 8
  %36 = icmp ne %struct.file* %35, null
  br i1 %36, label %37, label %69

37:                                               ; preds = %34
  %38 = load %struct.file*, %struct.file** %5, align 8
  %39 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %40 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %39, i32 0, i32 5
  store %struct.file* %38, %struct.file** %40, align 8
  %41 = load %struct.pid_namespace*, %struct.pid_namespace** %6, align 8
  %42 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %43 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %42, i32 0, i32 4
  store %struct.pid_namespace* %41, %struct.pid_namespace** %43, align 8
  %44 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %45 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %47 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %49 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %48, i32 0, i32 2
  %50 = call i32 @list_add(i32* %49, i32* @acct_list)
  %51 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %52 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %51, i32 0, i32 1
  %53 = load i32, i32* @acct_timeout, align 4
  %54 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %55 = ptrtoint %struct.bsd_acct_struct* %54 to i64
  %56 = call i32 @setup_timer(%struct.TYPE_6__* %52, i32 %53, i64 %55)
  %57 = load i64, i64* @jiffies, align 8
  %58 = load i32, i32* @ACCT_TIMEOUT, align 4
  %59 = load i32, i32* @HZ, align 4
  %60 = mul nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %57, %61
  %63 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %64 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i64 %62, i64* %65, align 8
  %66 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %67 = getelementptr inbounds %struct.bsd_acct_struct, %struct.bsd_acct_struct* %66, i32 0, i32 1
  %68 = call i32 @add_timer(%struct.TYPE_6__* %67)
  br label %69

69:                                               ; preds = %37, %34
  %70 = load %struct.file*, %struct.file** %7, align 8
  %71 = icmp ne %struct.file* %70, null
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = load %struct.file*, %struct.file** %7, align 8
  %74 = getelementptr inbounds %struct.file, %struct.file* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @mnt_unpin(i32 %76)
  %78 = call i32 @spin_unlock(i32* @acct_lock)
  %79 = load %struct.bsd_acct_struct*, %struct.bsd_acct_struct** %4, align 8
  %80 = load %struct.pid_namespace*, %struct.pid_namespace** %8, align 8
  %81 = load %struct.file*, %struct.file** %7, align 8
  %82 = call i32 @do_acct_process(%struct.bsd_acct_struct* %79, %struct.pid_namespace* %80, %struct.file* %81)
  %83 = load %struct.file*, %struct.file** %7, align 8
  %84 = call i32 @filp_close(%struct.file* %83, i32* null)
  %85 = call i32 @spin_lock(i32* @acct_lock)
  br label %86

86:                                               ; preds = %72, %69
  ret void
}

declare dso_local i32 @del_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @setup_timer(%struct.TYPE_6__*, i32, i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @mnt_unpin(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @do_acct_process(%struct.bsd_acct_struct*, %struct.pid_namespace*, %struct.file*) #1

declare dso_local i32 @filp_close(%struct.file*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
