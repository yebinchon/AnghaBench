; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_semantics.c_begin_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_semantics.c_begin_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_sema_info = type { %struct.block_sema_info* }
%struct.TYPE_2__ = type { i32 }

@NULL_TREE = common dso_local global i32 0, align 4
@cur_block = common dso_local global %struct.block_sema_info* null, align 8
@sk_block = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @begin_block() #0 {
  %1 = alloca %struct.block_sema_info*, align 8
  %2 = alloca i32, align 4
  %3 = call %struct.TYPE_2__* (...) @current_stmt_tree()
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  store i32 1, i32* %4, align 4
  %5 = load i32, i32* @NULL_TREE, align 4
  store i32 %5, i32* %2, align 4
  %6 = call i64 @xcalloc(i32 1, i32 8)
  %7 = inttoptr i64 %6 to %struct.block_sema_info*
  store %struct.block_sema_info* %7, %struct.block_sema_info** %1, align 8
  %8 = load %struct.block_sema_info*, %struct.block_sema_info** @cur_block, align 8
  %9 = load %struct.block_sema_info*, %struct.block_sema_info** %1, align 8
  %10 = getelementptr inbounds %struct.block_sema_info, %struct.block_sema_info* %9, i32 0, i32 0
  store %struct.block_sema_info* %8, %struct.block_sema_info** %10, align 8
  %11 = load %struct.block_sema_info*, %struct.block_sema_info** %1, align 8
  store %struct.block_sema_info* %11, %struct.block_sema_info** @cur_block, align 8
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

declare dso_local %struct.TYPE_2__* @current_stmt_tree(...) #1

declare dso_local i64 @xcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
