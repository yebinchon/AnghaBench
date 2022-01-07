; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_build_const_val.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-cp.c_build_const_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.parameter_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%union.parameter_info*, i32, i32*)* @build_const_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @build_const_val(%union.parameter_info* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %union.parameter_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %union.parameter_info* %0, %union.parameter_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @ipcp_type_is_const(i32 %8)
  %10 = call i32 @gcc_assert(i32 %9)
  %11 = load i32*, i32** %6, align 8
  %12 = load %union.parameter_info*, %union.parameter_info** %4, align 8
  %13 = bitcast %union.parameter_info* %12 to i32*
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @fold_convert(i32* %11, i32 %14)
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  ret i32* %16
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @ipcp_type_is_const(i32) #1

declare dso_local i32* @fold_convert(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
