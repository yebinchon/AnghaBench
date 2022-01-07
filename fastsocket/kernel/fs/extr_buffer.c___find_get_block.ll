; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c___find_get_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c___find_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.block_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @__find_get_block(%struct.block_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  store %struct.block_device* %0, %struct.block_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.block_device*, %struct.block_device** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.buffer_head* @lookup_bh_lru(%struct.block_device* %8, i32 %9, i32 %10)
  store %struct.buffer_head* %11, %struct.buffer_head** %7, align 8
  %12 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %13 = icmp eq %struct.buffer_head* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load %struct.block_device*, %struct.block_device** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.buffer_head* @__find_get_block_slow(%struct.block_device* %15, i32 %16)
  store %struct.buffer_head* %17, %struct.buffer_head** %7, align 8
  %18 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %19 = icmp ne %struct.buffer_head* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %22 = call i32 @bh_lru_install(%struct.buffer_head* %21)
  br label %23

23:                                               ; preds = %20, %14
  br label %24

24:                                               ; preds = %23, %3
  %25 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %26 = icmp ne %struct.buffer_head* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %29 = call i32 @touch_buffer(%struct.buffer_head* %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  ret %struct.buffer_head* %31
}

declare dso_local %struct.buffer_head* @lookup_bh_lru(%struct.block_device*, i32, i32) #1

declare dso_local %struct.buffer_head* @__find_get_block_slow(%struct.block_device*, i32) #1

declare dso_local i32 @bh_lru_install(%struct.buffer_head*) #1

declare dso_local i32 @touch_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
