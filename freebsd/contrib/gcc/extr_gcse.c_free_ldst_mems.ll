; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_free_ldst_mems.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_free_ldst_mems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ls_expr = type { %struct.ls_expr* }

@pre_ldst_table = common dso_local global i32* null, align 8
@pre_ldst_mems = common dso_local global %struct.ls_expr* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @free_ldst_mems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_ldst_mems() #0 {
  %1 = alloca %struct.ls_expr*, align 8
  %2 = load i32*, i32** @pre_ldst_table, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32*, i32** @pre_ldst_table, align 8
  %6 = call i32 @htab_delete(i32* %5)
  br label %7

7:                                                ; preds = %4, %0
  store i32* null, i32** @pre_ldst_table, align 8
  br label %8

8:                                                ; preds = %11, %7
  %9 = load %struct.ls_expr*, %struct.ls_expr** @pre_ldst_mems, align 8
  %10 = icmp ne %struct.ls_expr* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.ls_expr*, %struct.ls_expr** @pre_ldst_mems, align 8
  store %struct.ls_expr* %12, %struct.ls_expr** %1, align 8
  %13 = load %struct.ls_expr*, %struct.ls_expr** @pre_ldst_mems, align 8
  %14 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %13, i32 0, i32 0
  %15 = load %struct.ls_expr*, %struct.ls_expr** %14, align 8
  store %struct.ls_expr* %15, %struct.ls_expr** @pre_ldst_mems, align 8
  %16 = load %struct.ls_expr*, %struct.ls_expr** %1, align 8
  %17 = call i32 @free_ldst_entry(%struct.ls_expr* %16)
  br label %8

18:                                               ; preds = %8
  store %struct.ls_expr* null, %struct.ls_expr** @pre_ldst_mems, align 8
  ret void
}

declare dso_local i32 @htab_delete(i32*) #1

declare dso_local i32 @free_ldst_entry(%struct.ls_expr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
