; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_build_builtin_delete_call.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_init.c_build_builtin_delete_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@global_delete_fndecl = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @build_builtin_delete_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_builtin_delete_call(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @global_delete_fndecl, align 4
  %4 = call i32 @mark_used(i32 %3)
  %5 = load i32, i32* @global_delete_fndecl, align 4
  %6 = load i32, i32* @NULL_TREE, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @build_tree_list(i32 %6, i32 %7)
  %9 = call i32 @build_call(i32 %5, i32 %8)
  ret i32 %9
}

declare dso_local i32 @mark_used(i32) #1

declare dso_local i32 @build_call(i32, i32) #1

declare dso_local i32 @build_tree_list(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
