; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_add_relaxed_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_add_relaxed_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.mips_cl_insn = type { i32 }

@frag_now = common dso_local global %struct.TYPE_3__* null, align 8
@rs_machine_dependent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mips_cl_insn*, i32, i32, i32, i32*, i32)* @add_relaxed_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_relaxed_insn(%struct.mips_cl_insn* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.mips_cl_insn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.mips_cl_insn* %0, %struct.mips_cl_insn** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @frag_grow(i32 %13)
  %15 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %7, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @frag_now, align 8
  %17 = call i64 @frag_more(i32 0)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @frag_now, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  %22 = call i32 @move_insn(%struct.mips_cl_insn* %15, %struct.TYPE_3__* %16, i64 %21)
  %23 = load %struct.mips_cl_insn*, %struct.mips_cl_insn** %7, align 8
  %24 = getelementptr inbounds %struct.mips_cl_insn, %struct.mips_cl_insn* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* @rs_machine_dependent, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32*, i32** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @frag_var(i32 %25, i32 %26, i32 %27, i32 %28, i32* %29, i32 %30, i32* null)
  ret void
}

declare dso_local i32 @frag_grow(i32) #1

declare dso_local i32 @move_insn(%struct.mips_cl_insn*, %struct.TYPE_3__*, i64) #1

declare dso_local i64 @frag_more(i32) #1

declare dso_local i32 @frag_var(i32, i32, i32, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
