; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_copy_reloads.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload1.c_copy_reloads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn_chain = type { i32, i8* }

@n_reloads = common dso_local global i32 0, align 4
@reload_obstack = common dso_local global i32 0, align 4
@rld = common dso_local global i32 0, align 4
@reload_insn_firstobj = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.insn_chain*)* @copy_reloads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_reloads(%struct.insn_chain* %0) #0 {
  %2 = alloca %struct.insn_chain*, align 8
  store %struct.insn_chain* %0, %struct.insn_chain** %2, align 8
  %3 = load i32, i32* @n_reloads, align 4
  %4 = load %struct.insn_chain*, %struct.insn_chain** %2, align 8
  %5 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %4, i32 0, i32 0
  store i32 %3, i32* %5, align 8
  %6 = load i32, i32* @n_reloads, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 4
  %9 = trunc i64 %8 to i32
  %10 = call i8* @obstack_alloc(i32* @reload_obstack, i32 %9)
  %11 = load %struct.insn_chain*, %struct.insn_chain** %2, align 8
  %12 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  %13 = load %struct.insn_chain*, %struct.insn_chain** %2, align 8
  %14 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* @rld, align 4
  %17 = load i32, i32* @n_reloads, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memcpy(i8* %15, i32 %16, i32 %20)
  %22 = call i8* @obstack_alloc(i32* @reload_obstack, i32 0)
  store i8* %22, i8** @reload_insn_firstobj, align 8
  ret void
}

declare dso_local i8* @obstack_alloc(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
