; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_add_defn_to_vec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_add_defn_to_vec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.block = type opaque

@ndefns = common dso_local global i32 0, align 4
@defn_symbols = common dso_local global %struct.symbol** null, align 8
@defn_blocks = common dso_local global %struct.symbol** null, align 8
@defn_vector_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.symbol*, %struct.block*)* @add_defn_to_vec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_defn_to_vec(%struct.symbol* %0, %struct.block* %1) #0 {
  %3 = alloca %struct.symbol*, align 8
  %4 = alloca %struct.block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.symbol* %0, %struct.symbol** %3, align 8
  store %struct.block* %1, %struct.block** %4, align 8
  %7 = load %struct.symbol*, %struct.symbol** %3, align 8
  %8 = call i32* @SYMBOL_TYPE(%struct.symbol* %7)
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.symbol*, %struct.symbol** %3, align 8
  %12 = call i32* @SYMBOL_TYPE(%struct.symbol* %11)
  %13 = call i32 @CHECK_TYPEDEF(i32* %12)
  br label %14

14:                                               ; preds = %10, %2
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %52, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ndefns, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %15
  %20 = load %struct.symbol*, %struct.symbol** %3, align 8
  %21 = load %struct.symbol**, %struct.symbol*** @defn_symbols, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.symbol*, %struct.symbol** %21, i64 %23
  %25 = load %struct.symbol*, %struct.symbol** %24, align 8
  %26 = call i64 @lesseq_defined_than(%struct.symbol* %20, %struct.symbol* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %80

29:                                               ; preds = %19
  %30 = load %struct.symbol**, %struct.symbol*** @defn_symbols, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.symbol*, %struct.symbol** %30, i64 %32
  %34 = load %struct.symbol*, %struct.symbol** %33, align 8
  %35 = load %struct.symbol*, %struct.symbol** %3, align 8
  %36 = call i64 @lesseq_defined_than(%struct.symbol* %34, %struct.symbol* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %29
  %39 = load %struct.symbol*, %struct.symbol** %3, align 8
  %40 = load %struct.symbol**, %struct.symbol*** @defn_symbols, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.symbol*, %struct.symbol** %40, i64 %42
  store %struct.symbol* %39, %struct.symbol** %43, align 8
  %44 = load %struct.block*, %struct.block** %4, align 8
  %45 = bitcast %struct.block* %44 to %struct.symbol*
  %46 = load %struct.symbol**, %struct.symbol*** @defn_blocks, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.symbol*, %struct.symbol** %46, i64 %48
  store %struct.symbol* %45, %struct.symbol** %49, align 8
  br label %80

50:                                               ; preds = %29
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %15

55:                                               ; preds = %15
  %56 = load i64, i64* @defn_vector_size, align 8
  store i64 %56, i64* %6, align 8
  %57 = load %struct.symbol**, %struct.symbol*** @defn_symbols, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load i32, i32* @ndefns, align 4
  %60 = add nsw i32 %59, 2
  %61 = call i32 @GROW_VECT(%struct.symbol** %57, i64 %58, i32 %60)
  %62 = load %struct.symbol**, %struct.symbol*** @defn_blocks, align 8
  %63 = load i64, i64* @defn_vector_size, align 8
  %64 = load i32, i32* @ndefns, align 4
  %65 = add nsw i32 %64, 2
  %66 = call i32 @GROW_VECT(%struct.symbol** %62, i64 %63, i32 %65)
  %67 = load %struct.symbol*, %struct.symbol** %3, align 8
  %68 = load %struct.symbol**, %struct.symbol*** @defn_symbols, align 8
  %69 = load i32, i32* @ndefns, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.symbol*, %struct.symbol** %68, i64 %70
  store %struct.symbol* %67, %struct.symbol** %71, align 8
  %72 = load %struct.block*, %struct.block** %4, align 8
  %73 = bitcast %struct.block* %72 to %struct.symbol*
  %74 = load %struct.symbol**, %struct.symbol*** @defn_blocks, align 8
  %75 = load i32, i32* @ndefns, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.symbol*, %struct.symbol** %74, i64 %76
  store %struct.symbol* %73, %struct.symbol** %77, align 8
  %78 = load i32, i32* @ndefns, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @ndefns, align 4
  br label %80

80:                                               ; preds = %55, %38, %28
  ret void
}

declare dso_local i32* @SYMBOL_TYPE(%struct.symbol*) #1

declare dso_local i32 @CHECK_TYPEDEF(i32*) #1

declare dso_local i64 @lesseq_defined_than(%struct.symbol*, %struct.symbol*) #1

declare dso_local i32 @GROW_VECT(%struct.symbol**, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
