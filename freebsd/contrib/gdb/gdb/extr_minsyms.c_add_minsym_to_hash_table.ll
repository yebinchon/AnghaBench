; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_minsyms.c_add_minsym_to_hash_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_minsyms.c_add_minsym_to_hash_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minimal_symbol = type { %struct.minimal_symbol* }

@MINIMAL_SYMBOL_HASH_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_minsym_to_hash_table(%struct.minimal_symbol* %0, %struct.minimal_symbol** %1) #0 {
  %3 = alloca %struct.minimal_symbol*, align 8
  %4 = alloca %struct.minimal_symbol**, align 8
  %5 = alloca i32, align 4
  store %struct.minimal_symbol* %0, %struct.minimal_symbol** %3, align 8
  store %struct.minimal_symbol** %1, %struct.minimal_symbol*** %4, align 8
  %6 = load %struct.minimal_symbol*, %struct.minimal_symbol** %3, align 8
  %7 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %6, i32 0, i32 0
  %8 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  %9 = icmp eq %struct.minimal_symbol* %8, null
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load %struct.minimal_symbol*, %struct.minimal_symbol** %3, align 8
  %12 = call i32 @SYMBOL_LINKAGE_NAME(%struct.minimal_symbol* %11)
  %13 = call i32 @msymbol_hash(i32 %12)
  %14 = load i32, i32* @MINIMAL_SYMBOL_HASH_SIZE, align 4
  %15 = urem i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load %struct.minimal_symbol**, %struct.minimal_symbol*** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.minimal_symbol*, %struct.minimal_symbol** %16, i64 %18
  %20 = load %struct.minimal_symbol*, %struct.minimal_symbol** %19, align 8
  %21 = load %struct.minimal_symbol*, %struct.minimal_symbol** %3, align 8
  %22 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %21, i32 0, i32 0
  store %struct.minimal_symbol* %20, %struct.minimal_symbol** %22, align 8
  %23 = load %struct.minimal_symbol*, %struct.minimal_symbol** %3, align 8
  %24 = load %struct.minimal_symbol**, %struct.minimal_symbol*** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.minimal_symbol*, %struct.minimal_symbol** %24, i64 %26
  store %struct.minimal_symbol* %23, %struct.minimal_symbol** %27, align 8
  br label %28

28:                                               ; preds = %10, %2
  ret void
}

declare dso_local i32 @msymbol_hash(i32) #1

declare dso_local i32 @SYMBOL_LINKAGE_NAME(%struct.minimal_symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
