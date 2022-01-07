; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dictionary.c_insert_symbol_hashed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dictionary.c_insert_symbol_hashed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dictionary = type { i32 }
%struct.symbol = type { %struct.symbol* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dictionary*, %struct.symbol*)* @insert_symbol_hashed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_symbol_hashed(%struct.dictionary* %0, %struct.symbol* %1) #0 {
  %3 = alloca %struct.dictionary*, align 8
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.symbol**, align 8
  store %struct.dictionary* %0, %struct.dictionary** %3, align 8
  store %struct.symbol* %1, %struct.symbol** %4, align 8
  %7 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %8 = call %struct.symbol** @DICT_HASHED_BUCKETS(%struct.dictionary* %7)
  store %struct.symbol** %8, %struct.symbol*** %6, align 8
  %9 = load %struct.symbol*, %struct.symbol** %4, align 8
  %10 = call i32 @SYMBOL_NATURAL_NAME(%struct.symbol* %9)
  %11 = call i32 @msymbol_hash_iw(i32 %10)
  %12 = load %struct.dictionary*, %struct.dictionary** %3, align 8
  %13 = call i32 @DICT_HASHED_NBUCKETS(%struct.dictionary* %12)
  %14 = urem i32 %11, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.symbol*, %struct.symbol** %15, i64 %17
  %19 = load %struct.symbol*, %struct.symbol** %18, align 8
  %20 = load %struct.symbol*, %struct.symbol** %4, align 8
  %21 = getelementptr inbounds %struct.symbol, %struct.symbol* %20, i32 0, i32 0
  store %struct.symbol* %19, %struct.symbol** %21, align 8
  %22 = load %struct.symbol*, %struct.symbol** %4, align 8
  %23 = load %struct.symbol**, %struct.symbol*** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.symbol*, %struct.symbol** %23, i64 %25
  store %struct.symbol* %22, %struct.symbol** %26, align 8
  ret void
}

declare dso_local %struct.symbol** @DICT_HASHED_BUCKETS(%struct.dictionary*) #1

declare dso_local i32 @msymbol_hash_iw(i32) #1

declare dso_local i32 @SYMBOL_NATURAL_NAME(%struct.symbol*) #1

declare dso_local i32 @DICT_HASHED_NBUCKETS(%struct.dictionary*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
