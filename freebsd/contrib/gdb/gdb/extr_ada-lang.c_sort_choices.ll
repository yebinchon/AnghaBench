; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_sort_choices.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_sort_choices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.symbol**, %struct.block**, i32)* @sort_choices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_choices(%struct.symbol** %0, %struct.block** %1, i32 %2) #0 {
  %4 = alloca %struct.symbol**, align 8
  %5 = alloca %struct.block**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.symbol*, align 8
  %10 = alloca %struct.block*, align 8
  %11 = alloca i32, align 4
  store %struct.symbol** %0, %struct.symbol*** %4, align 8
  store %struct.block** %1, %struct.block*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %12

12:                                               ; preds = %81, %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %84

16:                                               ; preds = %12
  %17 = load %struct.symbol**, %struct.symbol*** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.symbol*, %struct.symbol** %17, i64 %19
  %21 = load %struct.symbol*, %struct.symbol** %20, align 8
  store %struct.symbol* %21, %struct.symbol** %9, align 8
  %22 = load %struct.block**, %struct.block*** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.block*, %struct.block** %22, i64 %24
  %26 = load %struct.block*, %struct.block** %25, align 8
  store %struct.block* %26, %struct.block** %10, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %65, %16
  %30 = load i32, i32* %11, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %68

32:                                               ; preds = %29
  %33 = load %struct.symbol**, %struct.symbol*** %4, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.symbol*, %struct.symbol** %33, i64 %35
  %37 = load %struct.symbol*, %struct.symbol** %36, align 8
  %38 = call i32 @DEPRECATED_SYMBOL_NAME(%struct.symbol* %37)
  %39 = load %struct.symbol*, %struct.symbol** %9, align 8
  %40 = call i32 @DEPRECATED_SYMBOL_NAME(%struct.symbol* %39)
  %41 = call i64 @mangled_ordered_before(i32 %38, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %68

44:                                               ; preds = %32
  %45 = load %struct.symbol**, %struct.symbol*** %4, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.symbol*, %struct.symbol** %45, i64 %47
  %49 = load %struct.symbol*, %struct.symbol** %48, align 8
  %50 = load %struct.symbol**, %struct.symbol*** %4, align 8
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.symbol*, %struct.symbol** %50, i64 %53
  store %struct.symbol* %49, %struct.symbol** %54, align 8
  %55 = load %struct.block**, %struct.block*** %5, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.block*, %struct.block** %55, i64 %57
  %59 = load %struct.block*, %struct.block** %58, align 8
  %60 = load %struct.block**, %struct.block*** %5, align 8
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.block*, %struct.block** %60, i64 %63
  store %struct.block* %59, %struct.block** %64, align 8
  br label %65

65:                                               ; preds = %44
  %66 = load i32, i32* %11, align 4
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %29

68:                                               ; preds = %43, %29
  %69 = load %struct.symbol*, %struct.symbol** %9, align 8
  %70 = load %struct.symbol**, %struct.symbol*** %4, align 8
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.symbol*, %struct.symbol** %70, i64 %73
  store %struct.symbol* %69, %struct.symbol** %74, align 8
  %75 = load %struct.block*, %struct.block** %10, align 8
  %76 = load %struct.block**, %struct.block*** %5, align 8
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.block*, %struct.block** %76, i64 %79
  store %struct.block* %75, %struct.block** %80, align 8
  br label %81

81:                                               ; preds = %68
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %12

84:                                               ; preds = %12
  ret void
}

declare dso_local i64 @mangled_ordered_before(i32, i32) #1

declare dso_local i32 @DEPRECATED_SYMBOL_NAME(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
