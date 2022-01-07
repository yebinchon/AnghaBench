; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_svclock.c_nlmsvc_update_deferred_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_svclock.c_nlmsvc_update_deferred_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_block = type { i32, i64, i32 }
%struct.file_lock = type { i32 }

@B_GOT_CALLBACK = common dso_local global i32 0, align 4
@B_TIMED_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlm_block*, %struct.file_lock*, i32)* @nlmsvc_update_deferred_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlmsvc_update_deferred_block(%struct.nlm_block* %0, %struct.file_lock* %1, i32 %2) #0 {
  %4 = alloca %struct.nlm_block*, align 8
  %5 = alloca %struct.file_lock*, align 8
  %6 = alloca i32, align 4
  store %struct.nlm_block* %0, %struct.nlm_block** %4, align 8
  store %struct.file_lock* %1, %struct.file_lock** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @B_GOT_CALLBACK, align 4
  %8 = load %struct.nlm_block*, %struct.nlm_block** %4, align 8
  %9 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.nlm_block*, %struct.nlm_block** %4, align 8
  %16 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  br label %23

17:                                               ; preds = %3
  %18 = load i32, i32* @B_TIMED_OUT, align 4
  %19 = load %struct.nlm_block*, %struct.nlm_block** %4, align 8
  %20 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  br label %23

23:                                               ; preds = %17, %14
  %24 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %25 = icmp ne %struct.file_lock* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load %struct.nlm_block*, %struct.nlm_block** %4, align 8
  %28 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.nlm_block*, %struct.nlm_block** %4, align 8
  %33 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.file_lock*, %struct.file_lock** %5, align 8
  %36 = call i32 @__locks_copy_lock(i64 %34, %struct.file_lock* %35)
  br label %37

37:                                               ; preds = %31, %26
  br label %38

38:                                               ; preds = %37, %23
  ret void
}

declare dso_local i32 @__locks_copy_lock(i64, %struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
