; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-into-ssa.c_set_def_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-into-ssa.c_set_def_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.def_blocks_d = type { i32, i32 }

@NEED_PHI_STATE_UNKNOWN = common dso_local global i32 0, align 4
@NEED_PHI_STATE_NO = common dso_local global i32 0, align 4
@NEED_PHI_STATE_MAYBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*, i32)* @set_def_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_def_block(i32 %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.def_blocks_d*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @get_phi_state(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.def_blocks_d* @get_def_blocks_for(i32 %11)
  store %struct.def_blocks_d* %12, %struct.def_blocks_d** %7, align 8
  %13 = load %struct.def_blocks_d*, %struct.def_blocks_d** %7, align 8
  %14 = getelementptr inbounds %struct.def_blocks_d, %struct.def_blocks_d* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bitmap_set_bit(i32 %15, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %3
  %23 = load %struct.def_blocks_d*, %struct.def_blocks_d** %7, align 8
  %24 = getelementptr inbounds %struct.def_blocks_d, %struct.def_blocks_d* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bitmap_set_bit(i32 %25, i32 %28)
  br label %30

30:                                               ; preds = %22, %3
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @NEED_PHI_STATE_UNKNOWN, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @NEED_PHI_STATE_NO, align 4
  %37 = call i32 @set_phi_state(i32 %35, i32 %36)
  br label %42

38:                                               ; preds = %30
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @NEED_PHI_STATE_MAYBE, align 4
  %41 = call i32 @set_phi_state(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %34
  ret void
}

declare dso_local i32 @get_phi_state(i32) #1

declare dso_local %struct.def_blocks_d* @get_def_blocks_for(i32) #1

declare dso_local i32 @bitmap_set_bit(i32, i32) #1

declare dso_local i32 @set_phi_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
