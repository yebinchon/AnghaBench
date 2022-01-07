; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_pop_switch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_pop_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_switch = type { %struct.cp_switch*, i32, i32 }

@switch_stack = common dso_local global %struct.cp_switch* null, align 8
@input_location = common dso_local global i32 0, align 4
@processing_template_decl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pop_switch() #0 {
  %1 = alloca %struct.cp_switch*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.cp_switch*, %struct.cp_switch** @switch_stack, align 8
  store %struct.cp_switch* %3, %struct.cp_switch** %1, align 8
  %4 = load %struct.cp_switch*, %struct.cp_switch** %1, align 8
  %5 = getelementptr inbounds %struct.cp_switch, %struct.cp_switch* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @EXPR_HAS_LOCATION(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %0
  %10 = load %struct.cp_switch*, %struct.cp_switch** %1, align 8
  %11 = getelementptr inbounds %struct.cp_switch, %struct.cp_switch* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @EXPR_LOCATION(i32 %12)
  store i32 %13, i32* %2, align 4
  br label %16

14:                                               ; preds = %0
  %15 = load i32, i32* @input_location, align 4
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %14, %9
  %17 = load i32, i32* @processing_template_decl, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %16
  %20 = load %struct.cp_switch*, %struct.cp_switch** %1, align 8
  %21 = getelementptr inbounds %struct.cp_switch, %struct.cp_switch* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %2, align 4
  %24 = load %struct.cp_switch*, %struct.cp_switch** %1, align 8
  %25 = getelementptr inbounds %struct.cp_switch, %struct.cp_switch* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @SWITCH_STMT_TYPE(i32 %26)
  %28 = load %struct.cp_switch*, %struct.cp_switch** %1, align 8
  %29 = getelementptr inbounds %struct.cp_switch, %struct.cp_switch* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @SWITCH_STMT_COND(i32 %30)
  %32 = call i32 @c_do_switch_warnings(i32 %22, i32 %23, i32 %27, i32 %31)
  br label %33

33:                                               ; preds = %19, %16
  %34 = load %struct.cp_switch*, %struct.cp_switch** %1, align 8
  %35 = getelementptr inbounds %struct.cp_switch, %struct.cp_switch* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @splay_tree_delete(i32 %36)
  %38 = load %struct.cp_switch*, %struct.cp_switch** @switch_stack, align 8
  %39 = getelementptr inbounds %struct.cp_switch, %struct.cp_switch* %38, i32 0, i32 0
  %40 = load %struct.cp_switch*, %struct.cp_switch** %39, align 8
  store %struct.cp_switch* %40, %struct.cp_switch** @switch_stack, align 8
  %41 = load %struct.cp_switch*, %struct.cp_switch** %1, align 8
  %42 = call i32 @free(%struct.cp_switch* %41)
  ret void
}

declare dso_local i64 @EXPR_HAS_LOCATION(i32) #1

declare dso_local i32 @EXPR_LOCATION(i32) #1

declare dso_local i32 @c_do_switch_warnings(i32, i32, i32, i32) #1

declare dso_local i32 @SWITCH_STMT_TYPE(i32) #1

declare dso_local i32 @SWITCH_STMT_COND(i32) #1

declare dso_local i32 @splay_tree_delete(i32) #1

declare dso_local i32 @free(%struct.cp_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
