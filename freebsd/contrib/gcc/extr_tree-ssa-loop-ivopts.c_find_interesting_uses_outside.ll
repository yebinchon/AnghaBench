; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_find_interesting_uses_outside.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_find_interesting_uses_outside.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivopts_data*, %struct.TYPE_4__*)* @find_interesting_uses_outside to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_interesting_uses_outside(%struct.ivopts_data* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.ivopts_data*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ivopts_data* %0, %struct.ivopts_data** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @phi_nodes(i32 %9)
  store i64 %10, i64* %5, align 8
  br label %11

11:                                               ; preds = %21, %2
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %11
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = call i64 @PHI_ARG_DEF_FROM_EDGE(i64 %15, %struct.TYPE_4__* %16)
  store i64 %17, i64* %6, align 8
  %18 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @find_interesting_uses_op(%struct.ivopts_data* %18, i64 %19)
  br label %21

21:                                               ; preds = %14
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @PHI_CHAIN(i64 %22)
  store i64 %23, i64* %5, align 8
  br label %11

24:                                               ; preds = %11
  ret void
}

declare dso_local i64 @phi_nodes(i32) #1

declare dso_local i64 @PHI_ARG_DEF_FROM_EDGE(i64, %struct.TYPE_4__*) #1

declare dso_local i32 @find_interesting_uses_op(%struct.ivopts_data*, i64) #1

declare dso_local i64 @PHI_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
