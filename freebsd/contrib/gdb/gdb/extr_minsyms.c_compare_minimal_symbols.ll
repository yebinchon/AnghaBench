; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_minsyms.c_compare_minimal_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_minsyms.c_compare_minimal_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minimal_symbol = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compare_minimal_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_minimal_symbols(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.minimal_symbol*, align 8
  %7 = alloca %struct.minimal_symbol*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.minimal_symbol*
  store %struct.minimal_symbol* %11, %struct.minimal_symbol** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.minimal_symbol*
  store %struct.minimal_symbol* %13, %struct.minimal_symbol** %7, align 8
  %14 = load %struct.minimal_symbol*, %struct.minimal_symbol** %6, align 8
  %15 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %14)
  %16 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  %17 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %16)
  %18 = icmp slt i64 %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %50

20:                                               ; preds = %2
  %21 = load %struct.minimal_symbol*, %struct.minimal_symbol** %6, align 8
  %22 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %21)
  %23 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  %24 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %23)
  %25 = icmp sgt i64 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %50

27:                                               ; preds = %20
  %28 = load %struct.minimal_symbol*, %struct.minimal_symbol** %6, align 8
  %29 = call i8* @SYMBOL_LINKAGE_NAME(%struct.minimal_symbol* %28)
  store i8* %29, i8** %8, align 8
  %30 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  %31 = call i8* @SYMBOL_LINKAGE_NAME(%struct.minimal_symbol* %30)
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load i8*, i8** %9, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i8*, i8** %8, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @strcmp(i8* %38, i8* %39)
  store i32 %40, i32* %3, align 4
  br label %50

41:                                               ; preds = %34, %27
  %42 = load i8*, i8** %9, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %50

45:                                               ; preds = %41
  %46 = load i8*, i8** %8, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 -1, i32* %3, align 4
  br label %50

49:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %48, %44, %37, %26, %19
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol*) #1

declare dso_local i8* @SYMBOL_LINKAGE_NAME(%struct.minimal_symbol*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
