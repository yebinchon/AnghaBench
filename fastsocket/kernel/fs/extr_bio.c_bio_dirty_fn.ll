; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bio_dirty_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_bio.c_bio_dirty_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.bio* }
%struct.work_struct = type { i32 }

@bio_dirty_lock = common dso_local global i32 0, align 4
@bio_dirty_list = common dso_local global %struct.bio* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @bio_dirty_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bio_dirty_fn(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* @bio_dirty_lock, i64 %6)
  %8 = load %struct.bio*, %struct.bio** @bio_dirty_list, align 8
  store %struct.bio* %8, %struct.bio** %4, align 8
  store %struct.bio* null, %struct.bio** @bio_dirty_list, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @spin_unlock_irqrestore(i32* @bio_dirty_lock, i64 %9)
  br label %11

11:                                               ; preds = %14, %1
  %12 = load %struct.bio*, %struct.bio** %4, align 8
  %13 = icmp ne %struct.bio* %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = load %struct.bio*, %struct.bio** %4, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 0
  %17 = load %struct.bio*, %struct.bio** %16, align 8
  store %struct.bio* %17, %struct.bio** %5, align 8
  %18 = load %struct.bio*, %struct.bio** %4, align 8
  %19 = call i32 @bio_set_pages_dirty(%struct.bio* %18)
  %20 = load %struct.bio*, %struct.bio** %4, align 8
  %21 = call i32 @bio_release_pages(%struct.bio* %20)
  %22 = load %struct.bio*, %struct.bio** %4, align 8
  %23 = call i32 @bio_put(%struct.bio* %22)
  %24 = load %struct.bio*, %struct.bio** %5, align 8
  store %struct.bio* %24, %struct.bio** %4, align 8
  br label %11

25:                                               ; preds = %11
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @bio_set_pages_dirty(%struct.bio*) #1

declare dso_local i32 @bio_release_pages(%struct.bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
