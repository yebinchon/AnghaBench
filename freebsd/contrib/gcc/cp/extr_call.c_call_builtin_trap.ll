; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_call_builtin_trap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_call.c_call_builtin_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@implicit_built_in_decls = common dso_local global i32** null, align 8
@BUILT_IN_TRAP = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @call_builtin_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @call_builtin_trap() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32**, i32*** @implicit_built_in_decls, align 8
  %3 = load i64, i64* @BUILT_IN_TRAP, align 8
  %4 = getelementptr inbounds i32*, i32** %2, i64 %3
  %5 = load i32*, i32** %4, align 8
  store i32* %5, i32** %1, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = icmp ne i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @gcc_assert(i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = load i32, i32* @NULL_TREE, align 4
  %12 = call i32* @build_call(i32* %10, i32 %11)
  store i32* %12, i32** %1, align 8
  %13 = load i32*, i32** %1, align 8
  ret i32* %13
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32* @build_call(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
