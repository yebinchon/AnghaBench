; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_tty.c_smd_tty_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_tty.c_smd_tty_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.smd_tty_info* }
%struct.smd_tty_info = type { i64, i64, i32, i64 }
%struct.file = type { i32 }

@smd_tty_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.file*)* @smd_tty_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smd_tty_close(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.smd_tty_info*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 0
  %8 = load %struct.smd_tty_info*, %struct.smd_tty_info** %7, align 8
  store %struct.smd_tty_info* %8, %struct.smd_tty_info** %5, align 8
  %9 = load %struct.smd_tty_info*, %struct.smd_tty_info** %5, align 8
  %10 = icmp eq %struct.smd_tty_info* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %41

12:                                               ; preds = %2
  %13 = call i32 @mutex_lock(i32* @smd_tty_lock)
  %14 = load %struct.smd_tty_info*, %struct.smd_tty_info** %5, align 8
  %15 = getelementptr inbounds %struct.smd_tty_info, %struct.smd_tty_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %12
  %20 = load %struct.smd_tty_info*, %struct.smd_tty_info** %5, align 8
  %21 = getelementptr inbounds %struct.smd_tty_info, %struct.smd_tty_info* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %23 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %22, i32 0, i32 0
  store %struct.smd_tty_info* null, %struct.smd_tty_info** %23, align 8
  %24 = load %struct.smd_tty_info*, %struct.smd_tty_info** %5, align 8
  %25 = getelementptr inbounds %struct.smd_tty_info, %struct.smd_tty_info* %24, i32 0, i32 2
  %26 = call i32 @wake_lock_destroy(i32* %25)
  %27 = load %struct.smd_tty_info*, %struct.smd_tty_info** %5, align 8
  %28 = getelementptr inbounds %struct.smd_tty_info, %struct.smd_tty_info* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %19
  %32 = load %struct.smd_tty_info*, %struct.smd_tty_info** %5, align 8
  %33 = getelementptr inbounds %struct.smd_tty_info, %struct.smd_tty_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @smd_close(i64 %34)
  %36 = load %struct.smd_tty_info*, %struct.smd_tty_info** %5, align 8
  %37 = getelementptr inbounds %struct.smd_tty_info, %struct.smd_tty_info* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %31, %19
  br label %39

39:                                               ; preds = %38, %12
  %40 = call i32 @mutex_unlock(i32* @smd_tty_lock)
  br label %41

41:                                               ; preds = %39, %11
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wake_lock_destroy(i32*) #1

declare dso_local i32 @smd_close(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
