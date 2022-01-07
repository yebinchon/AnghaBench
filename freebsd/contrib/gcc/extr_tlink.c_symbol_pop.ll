; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tlink.c_symbol_pop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tlink.c_symbol_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol_stack_entry = type { %struct.symbol_stack_entry*, i32* }

@symbol_stack = common dso_local global %struct.symbol_stack_entry* null, align 8
@symbol_stack_obstack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @symbol_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @symbol_pop() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.symbol_stack_entry*, align 8
  %3 = alloca i32*, align 8
  %4 = load %struct.symbol_stack_entry*, %struct.symbol_stack_entry** @symbol_stack, align 8
  store %struct.symbol_stack_entry* %4, %struct.symbol_stack_entry** %2, align 8
  %5 = load %struct.symbol_stack_entry*, %struct.symbol_stack_entry** %2, align 8
  %6 = icmp eq %struct.symbol_stack_entry* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %18

8:                                                ; preds = %0
  %9 = load %struct.symbol_stack_entry*, %struct.symbol_stack_entry** %2, align 8
  %10 = getelementptr inbounds %struct.symbol_stack_entry, %struct.symbol_stack_entry* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %3, align 8
  %12 = load %struct.symbol_stack_entry*, %struct.symbol_stack_entry** %2, align 8
  %13 = getelementptr inbounds %struct.symbol_stack_entry, %struct.symbol_stack_entry* %12, i32 0, i32 0
  %14 = load %struct.symbol_stack_entry*, %struct.symbol_stack_entry** %13, align 8
  store %struct.symbol_stack_entry* %14, %struct.symbol_stack_entry** @symbol_stack, align 8
  %15 = load %struct.symbol_stack_entry*, %struct.symbol_stack_entry** %2, align 8
  %16 = call i32 @obstack_free(i32* @symbol_stack_obstack, %struct.symbol_stack_entry* %15)
  %17 = load i32*, i32** %3, align 8
  store i32* %17, i32** %1, align 8
  br label %18

18:                                               ; preds = %8, %7
  %19 = load i32*, i32** %1, align 8
  ret i32* %19
}

declare dso_local i32 @obstack_free(i32*, %struct.symbol_stack_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
