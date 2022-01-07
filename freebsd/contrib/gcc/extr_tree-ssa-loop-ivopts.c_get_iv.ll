; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_get_iv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_get_iv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iv = type { i32 }
%struct.ivopts_data = type { i32 }
%struct.TYPE_2__ = type { %struct.iv* }

@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iv* (%struct.ivopts_data*, i32)* @get_iv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iv* @get_iv(%struct.ivopts_data* %0, i32 %1) #0 {
  %3 = alloca %struct.ivopts_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ivopts_data* %0, %struct.ivopts_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.TYPE_2__* @name_info(%struct.ivopts_data* %6, i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.iv*, %struct.iv** %9, align 8
  %11 = icmp ne %struct.iv* %10, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @SSA_NAME_DEF_STMT(i32 %13)
  %15 = call i32 @bb_for_stmt(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %20 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @flow_bb_inside_loop_p(i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18, %12
  %26 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @NULL_TREE, align 4
  %30 = call i32 @set_iv(%struct.ivopts_data* %26, i32 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %25, %18
  br label %32

32:                                               ; preds = %31, %2
  %33 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call %struct.TYPE_2__* @name_info(%struct.ivopts_data* %33, i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.iv*, %struct.iv** %36, align 8
  ret %struct.iv* %37
}

declare dso_local %struct.TYPE_2__* @name_info(%struct.ivopts_data*, i32) #1

declare dso_local i32 @bb_for_stmt(i32) #1

declare dso_local i32 @SSA_NAME_DEF_STMT(i32) #1

declare dso_local i32 @flow_bb_inside_loop_p(i32, i32) #1

declare dso_local i32 @set_iv(%struct.ivopts_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
