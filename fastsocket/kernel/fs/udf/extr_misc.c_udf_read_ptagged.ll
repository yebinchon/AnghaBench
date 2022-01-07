; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_misc.c_udf_read_ptagged.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_misc.c_udf_read_ptagged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.super_block = type { i32 }
%struct.kernel_lb_addr = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @udf_read_ptagged(%struct.super_block* %0, %struct.kernel_lb_addr* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.kernel_lb_addr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.kernel_lb_addr* %1, %struct.kernel_lb_addr** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.super_block*, %struct.super_block** %5, align 8
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @udf_get_lb_pblock(%struct.super_block* %10, %struct.kernel_lb_addr* %11, i64 %12)
  %14 = load %struct.kernel_lb_addr*, %struct.kernel_lb_addr** %6, align 8
  %15 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i32*, i32** %8, align 8
  %20 = call %struct.buffer_head* @udf_read_tagged(%struct.super_block* %9, i32 %13, i64 %18, i32* %19)
  ret %struct.buffer_head* %20
}

declare dso_local %struct.buffer_head* @udf_read_tagged(%struct.super_block*, i32, i64, i32*) #1

declare dso_local i32 @udf_get_lb_pblock(%struct.super_block*, %struct.kernel_lb_addr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
