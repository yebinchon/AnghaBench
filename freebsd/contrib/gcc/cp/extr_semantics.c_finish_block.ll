; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_semantics.c_finish_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_semantics.c_finish_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_sema_info = type { %struct.block_sema_info* }

@cur_block = common dso_local global %struct.block_sema_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.block_sema_info* @finish_block(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.block_sema_info*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load %struct.block_sema_info*, %struct.block_sema_info** @cur_block, align 8
  store %struct.block_sema_info* %4, %struct.block_sema_info** %3, align 8
  %5 = load %struct.block_sema_info*, %struct.block_sema_info** @cur_block, align 8
  %6 = getelementptr inbounds %struct.block_sema_info, %struct.block_sema_info* %5, i32 0, i32 0
  %7 = load %struct.block_sema_info*, %struct.block_sema_info** %6, align 8
  store %struct.block_sema_info* %7, %struct.block_sema_info** @cur_block, align 8
  store i64 0, i64* %2, align 8
  %8 = load %struct.block_sema_info*, %struct.block_sema_info** %3, align 8
  ret %struct.block_sema_info* %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
