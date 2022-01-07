; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_bsi_replace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_bsi_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bsi_replace(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @bsi_stmt(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @EXPR_LOCUS(i32 %14)
  %16 = call i32 @SET_EXPR_LOCUS(i32 %13, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @set_bb_for_stmt(i32 %17, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @lookup_stmt_eh_region(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @remove_stmt_from_eh_region(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @add_stmt_to_eh_region(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %24
  br label %36

36:                                               ; preds = %35, %3
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @delink_stmt_imm_use(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32* @bsi_stmt_ptr(i32 %42)
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @mark_stmt_modified(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @update_modified_stmts(i32 %46)
  ret void
}

declare dso_local i32 @bsi_stmt(i32) #1

declare dso_local i32 @SET_EXPR_LOCUS(i32, i32) #1

declare dso_local i32 @EXPR_LOCUS(i32) #1

declare dso_local i32 @set_bb_for_stmt(i32, i32) #1

declare dso_local i32 @lookup_stmt_eh_region(i32) #1

declare dso_local i32 @remove_stmt_from_eh_region(i32) #1

declare dso_local i32 @add_stmt_to_eh_region(i32, i32) #1

declare dso_local i32 @delink_stmt_imm_use(i32) #1

declare dso_local i32* @bsi_stmt_ptr(i32) #1

declare dso_local i32 @mark_stmt_modified(i32) #1

declare dso_local i32 @update_modified_stmts(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
