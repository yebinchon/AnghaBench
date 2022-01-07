; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_gconf.c_display_tree_part.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_gconf.c_display_tree_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tree2 = common dso_local global i64 0, align 8
@view_mode = common dso_local global i64 0, align 8
@SINGLE_VIEW = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@SPLIT_VIEW = common dso_local global i64 0, align 8
@browsed = common dso_local global i32 0, align 4
@tree2_w = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @display_tree_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_tree_part() #0 {
  %1 = load i64, i64* @tree2, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i64, i64* @tree2, align 8
  %5 = call i32 @gtk_tree_store_clear(i64 %4)
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i64, i64* @view_mode, align 8
  %8 = load i64, i64* @SINGLE_VIEW, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load i32, i32* @current, align 4
  %12 = call i32 @display_tree(i32 %11)
  br label %21

13:                                               ; preds = %6
  %14 = load i64, i64* @view_mode, align 8
  %15 = load i64, i64* @SPLIT_VIEW, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @browsed, align 4
  %19 = call i32 @display_tree(i32 %18)
  br label %20

20:                                               ; preds = %17, %13
  br label %21

21:                                               ; preds = %20, %10
  %22 = load i32, i32* @tree2_w, align 4
  %23 = call i32 @GTK_TREE_VIEW(i32 %22)
  %24 = call i32 @gtk_tree_view_expand_all(i32 %23)
  ret void
}

declare dso_local i32 @gtk_tree_store_clear(i64) #1

declare dso_local i32 @display_tree(i32) #1

declare dso_local i32 @gtk_tree_view_expand_all(i32) #1

declare dso_local i32 @GTK_TREE_VIEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
