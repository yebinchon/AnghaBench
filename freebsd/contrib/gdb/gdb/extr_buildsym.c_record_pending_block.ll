; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_buildsym.c_record_pending_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_buildsym.c_record_pending_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pending_block = type { %struct.pending_block*, %struct.block* }
%struct.block = type { i32 }
%struct.objfile = type { i32 }

@pending_blocks = common dso_local global %struct.pending_block* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @record_pending_block(%struct.objfile* %0, %struct.block* %1, %struct.pending_block* %2) #0 {
  %4 = alloca %struct.objfile*, align 8
  %5 = alloca %struct.block*, align 8
  %6 = alloca %struct.pending_block*, align 8
  %7 = alloca %struct.pending_block*, align 8
  store %struct.objfile* %0, %struct.objfile** %4, align 8
  store %struct.block* %1, %struct.block** %5, align 8
  store %struct.pending_block* %2, %struct.pending_block** %6, align 8
  %8 = load %struct.objfile*, %struct.objfile** %4, align 8
  %9 = getelementptr inbounds %struct.objfile, %struct.objfile* %8, i32 0, i32 0
  %10 = call i64 @obstack_alloc(i32* %9, i32 16)
  %11 = inttoptr i64 %10 to %struct.pending_block*
  store %struct.pending_block* %11, %struct.pending_block** %7, align 8
  %12 = load %struct.block*, %struct.block** %5, align 8
  %13 = load %struct.pending_block*, %struct.pending_block** %7, align 8
  %14 = getelementptr inbounds %struct.pending_block, %struct.pending_block* %13, i32 0, i32 1
  store %struct.block* %12, %struct.block** %14, align 8
  %15 = load %struct.pending_block*, %struct.pending_block** %6, align 8
  %16 = icmp ne %struct.pending_block* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.pending_block*, %struct.pending_block** %6, align 8
  %19 = getelementptr inbounds %struct.pending_block, %struct.pending_block* %18, i32 0, i32 0
  %20 = load %struct.pending_block*, %struct.pending_block** %19, align 8
  %21 = load %struct.pending_block*, %struct.pending_block** %7, align 8
  %22 = getelementptr inbounds %struct.pending_block, %struct.pending_block* %21, i32 0, i32 0
  store %struct.pending_block* %20, %struct.pending_block** %22, align 8
  %23 = load %struct.pending_block*, %struct.pending_block** %7, align 8
  %24 = load %struct.pending_block*, %struct.pending_block** %6, align 8
  %25 = getelementptr inbounds %struct.pending_block, %struct.pending_block* %24, i32 0, i32 0
  store %struct.pending_block* %23, %struct.pending_block** %25, align 8
  br label %31

26:                                               ; preds = %3
  %27 = load %struct.pending_block*, %struct.pending_block** @pending_blocks, align 8
  %28 = load %struct.pending_block*, %struct.pending_block** %7, align 8
  %29 = getelementptr inbounds %struct.pending_block, %struct.pending_block* %28, i32 0, i32 0
  store %struct.pending_block* %27, %struct.pending_block** %29, align 8
  %30 = load %struct.pending_block*, %struct.pending_block** %7, align 8
  store %struct.pending_block* %30, %struct.pending_block** @pending_blocks, align 8
  br label %31

31:                                               ; preds = %26, %17
  ret void
}

declare dso_local i64 @obstack_alloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
