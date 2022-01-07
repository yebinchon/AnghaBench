; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_new_insn_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_new_insn_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn_chain = type { i64, i64, i64, i64, %struct.insn_chain*, i32, i32 }

@unused_insn_chains = common dso_local global %struct.insn_chain* null, align 8
@reload_obstack = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.insn_chain* @new_insn_chain() #0 {
  %1 = alloca %struct.insn_chain*, align 8
  %2 = load %struct.insn_chain*, %struct.insn_chain** @unused_insn_chains, align 8
  %3 = icmp eq %struct.insn_chain* %2, null
  br i1 %3, label %4, label %12

4:                                                ; preds = %0
  %5 = call %struct.insn_chain* @obstack_alloc(i32* @reload_obstack, i32 48)
  store %struct.insn_chain* %5, %struct.insn_chain** %1, align 8
  %6 = load %struct.insn_chain*, %struct.insn_chain** %1, align 8
  %7 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %6, i32 0, i32 6
  %8 = call i32 @INIT_REG_SET(i32* %7)
  %9 = load %struct.insn_chain*, %struct.insn_chain** %1, align 8
  %10 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %9, i32 0, i32 5
  %11 = call i32 @INIT_REG_SET(i32* %10)
  br label %17

12:                                               ; preds = %0
  %13 = load %struct.insn_chain*, %struct.insn_chain** @unused_insn_chains, align 8
  store %struct.insn_chain* %13, %struct.insn_chain** %1, align 8
  %14 = load %struct.insn_chain*, %struct.insn_chain** %1, align 8
  %15 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %14, i32 0, i32 4
  %16 = load %struct.insn_chain*, %struct.insn_chain** %15, align 8
  store %struct.insn_chain* %16, %struct.insn_chain** @unused_insn_chains, align 8
  br label %17

17:                                               ; preds = %12, %4
  %18 = load %struct.insn_chain*, %struct.insn_chain** %1, align 8
  %19 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.insn_chain*, %struct.insn_chain** %1, align 8
  %21 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.insn_chain*, %struct.insn_chain** %1, align 8
  %23 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.insn_chain*, %struct.insn_chain** %1, align 8
  %25 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.insn_chain*, %struct.insn_chain** %1, align 8
  ret %struct.insn_chain* %26
}

declare dso_local %struct.insn_chain* @obstack_alloc(i32*, i32) #1

declare dso_local i32 @INIT_REG_SET(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
