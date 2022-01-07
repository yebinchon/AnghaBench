; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_process_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genrecog.c_process_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decision_head = type { i32* }

@PEEPHOLE2 = common dso_local global i32 0, align 4
@next_subroutine_number = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decision_head*, i32)* @process_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_tree(%struct.decision_head* %0, i32 %1) #0 {
  %3 = alloca %struct.decision_head*, align 8
  %4 = alloca i32, align 4
  store %struct.decision_head* %0, %struct.decision_head** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.decision_head*, %struct.decision_head** %3, align 8
  %6 = getelementptr inbounds %struct.decision_head, %struct.decision_head* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @PEEPHOLE2, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %31

14:                                               ; preds = %9
  br label %27

15:                                               ; preds = %2
  %16 = load %struct.decision_head*, %struct.decision_head** %3, align 8
  %17 = call i32 @factor_tests(%struct.decision_head* %16)
  store i64 0, i64* @next_subroutine_number, align 8
  %18 = load %struct.decision_head*, %struct.decision_head** %3, align 8
  %19 = call i32 @break_out_subroutines(%struct.decision_head* %18, i32 1)
  %20 = load %struct.decision_head*, %struct.decision_head** %3, align 8
  %21 = call i32 @find_afterward(%struct.decision_head* %20, i32* null)
  %22 = load %struct.decision_head*, %struct.decision_head** %3, align 8
  %23 = call i32 @simplify_tests(%struct.decision_head* %22)
  %24 = load %struct.decision_head*, %struct.decision_head** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @write_subroutines(%struct.decision_head* %24, i32 %25)
  br label %27

27:                                               ; preds = %15, %14
  %28 = load %struct.decision_head*, %struct.decision_head** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @write_subroutine(%struct.decision_head* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %13
  ret void
}

declare dso_local i32 @factor_tests(%struct.decision_head*) #1

declare dso_local i32 @break_out_subroutines(%struct.decision_head*, i32) #1

declare dso_local i32 @find_afterward(%struct.decision_head*, i32*) #1

declare dso_local i32 @simplify_tests(%struct.decision_head*) #1

declare dso_local i32 @write_subroutines(%struct.decision_head*, i32) #1

declare dso_local i32 @write_subroutine(%struct.decision_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
