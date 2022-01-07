; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_begin_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_begin_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_sema_info = type { %struct.block_sema_info* }

@cur_block = common dso_local global %struct.block_sema_info* null, align 8
@NULL_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @begin_block() #0 {
  %1 = alloca %struct.block_sema_info*, align 8
  %2 = call i64 @xcalloc(i32 1, i32 8)
  %3 = inttoptr i64 %2 to %struct.block_sema_info*
  store %struct.block_sema_info* %3, %struct.block_sema_info** %1, align 8
  %4 = load %struct.block_sema_info*, %struct.block_sema_info** @cur_block, align 8
  %5 = load %struct.block_sema_info*, %struct.block_sema_info** %1, align 8
  %6 = getelementptr inbounds %struct.block_sema_info, %struct.block_sema_info* %5, i32 0, i32 0
  store %struct.block_sema_info* %4, %struct.block_sema_info** %6, align 8
  %7 = load %struct.block_sema_info*, %struct.block_sema_info** %1, align 8
  store %struct.block_sema_info* %7, %struct.block_sema_info** @cur_block, align 8
  %8 = load i32, i32* @NULL_TREE, align 4
  ret i32 %8
}

declare dso_local i64 @xcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
