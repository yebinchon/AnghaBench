; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_unmap_underlying_metadata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_buffer.c_unmap_underlying_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.buffer_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unmap_underlying_metadata(%struct.block_device* %0, i32 %1) #0 {
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffer_head*, align 8
  store %struct.block_device* %0, %struct.block_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @might_sleep()
  %7 = load %struct.block_device*, %struct.block_device** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.buffer_head* @__find_get_block_slow(%struct.block_device* %7, i32 %8)
  store %struct.buffer_head* %9, %struct.buffer_head** %5, align 8
  %10 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %11 = icmp ne %struct.buffer_head* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %14 = call i32 @clear_buffer_dirty(%struct.buffer_head* %13)
  %15 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %16 = call i32 @wait_on_buffer(%struct.buffer_head* %15)
  %17 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %18 = call i32 @clear_buffer_req(%struct.buffer_head* %17)
  %19 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %20 = call i32 @__brelse(%struct.buffer_head* %19)
  br label %21

21:                                               ; preds = %12, %2
  ret void
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local %struct.buffer_head* @__find_get_block_slow(%struct.block_device*, i32) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_req(%struct.buffer_head*) #1

declare dso_local i32 @__brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
