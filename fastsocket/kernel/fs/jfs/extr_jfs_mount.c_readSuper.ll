; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_mount.c_readSuper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_mount.c_readSuper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }

@SUPER1_OFF = common dso_local global i32 0, align 4
@SUPER2_OFF = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readSuper(%struct.super_block* %0, %struct.buffer_head** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.buffer_head**, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %5, align 8
  %6 = load %struct.super_block*, %struct.super_block** %4, align 8
  %7 = load i32, i32* @SUPER1_OFF, align 4
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = getelementptr inbounds %struct.super_block, %struct.super_block* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = ashr i32 %7, %10
  %12 = call %struct.buffer_head* @sb_bread(%struct.super_block* %6, i32 %11)
  %13 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  store %struct.buffer_head* %12, %struct.buffer_head** %13, align 8
  %14 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %15 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %16 = icmp ne %struct.buffer_head* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

18:                                               ; preds = %2
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = load i32, i32* @SUPER2_OFF, align 4
  %21 = load %struct.super_block*, %struct.super_block** %4, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %20, %23
  %25 = call %struct.buffer_head* @sb_bread(%struct.super_block* %19, i32 %24)
  %26 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  store %struct.buffer_head* %25, %struct.buffer_head** %26, align 8
  %27 = load %struct.buffer_head**, %struct.buffer_head*** %5, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  %29 = icmp ne %struct.buffer_head* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %34

31:                                               ; preds = %18
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %30, %17
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
