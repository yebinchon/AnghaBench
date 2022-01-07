; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_super.c_exofs_put_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_super.c_exofs_put_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.exofs_sb_info*, i64 }
%struct.exofs_sb_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @exofs_put_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exofs_put_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.exofs_sb_info*, align 8
  %5 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %6 = load %struct.super_block*, %struct.super_block** %2, align 8
  %7 = getelementptr inbounds %struct.super_block, %struct.super_block* %6, i32 0, i32 0
  %8 = load %struct.exofs_sb_info*, %struct.exofs_sb_info** %7, align 8
  store %struct.exofs_sb_info* %8, %struct.exofs_sb_info** %4, align 8
  %9 = load %struct.super_block*, %struct.super_block** %2, align 8
  %10 = getelementptr inbounds %struct.super_block, %struct.super_block* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.super_block*, %struct.super_block** %2, align 8
  %15 = call i32 @exofs_write_super(%struct.super_block* %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.exofs_sb_info*, %struct.exofs_sb_info** %4, align 8
  %18 = getelementptr inbounds %struct.exofs_sb_info, %struct.exofs_sb_info* %17, i32 0, i32 1
  %19 = call i32 @atomic_read(i32* %18)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %33, %16
  %21 = load i32, i32* %3, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = call i32 @init_waitqueue_head(i32* %5)
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.exofs_sb_info*, %struct.exofs_sb_info** %4, align 8
  %27 = getelementptr inbounds %struct.exofs_sb_info, %struct.exofs_sb_info* %26, i32 0, i32 1
  %28 = call i32 @atomic_read(i32* %27)
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @msecs_to_jiffies(i32 100)
  %32 = call i32 @wait_event_timeout(i32 %25, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %23
  %34 = load %struct.exofs_sb_info*, %struct.exofs_sb_info** %4, align 8
  %35 = getelementptr inbounds %struct.exofs_sb_info, %struct.exofs_sb_info* %34, i32 0, i32 1
  %36 = call i32 @atomic_read(i32* %35)
  store i32 %36, i32* %3, align 4
  br label %20

37:                                               ; preds = %20
  %38 = load %struct.exofs_sb_info*, %struct.exofs_sb_info** %4, align 8
  %39 = getelementptr inbounds %struct.exofs_sb_info, %struct.exofs_sb_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @osduld_put_device(i32 %40)
  %42 = load %struct.super_block*, %struct.super_block** %2, align 8
  %43 = getelementptr inbounds %struct.super_block, %struct.super_block* %42, i32 0, i32 0
  %44 = load %struct.exofs_sb_info*, %struct.exofs_sb_info** %43, align 8
  %45 = call i32 @kfree(%struct.exofs_sb_info* %44)
  %46 = load %struct.super_block*, %struct.super_block** %2, align 8
  %47 = getelementptr inbounds %struct.super_block, %struct.super_block* %46, i32 0, i32 0
  store %struct.exofs_sb_info* null, %struct.exofs_sb_info** %47, align 8
  ret void
}

declare dso_local i32 @exofs_write_super(%struct.super_block*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @osduld_put_device(i32) #1

declare dso_local i32 @kfree(%struct.exofs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
