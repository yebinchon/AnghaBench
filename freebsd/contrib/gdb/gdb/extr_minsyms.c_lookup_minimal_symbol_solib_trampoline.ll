; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_minsyms.c_lookup_minimal_symbol_solib_trampoline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_minsyms.c_lookup_minimal_symbol_solib_trampoline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { %struct.minimal_symbol**, %struct.objfile* }
%struct.minimal_symbol = type { %struct.minimal_symbol* }

@MINIMAL_SYMBOL_HASH_SIZE = common dso_local global i32 0, align 4
@object_files = common dso_local global %struct.objfile* null, align 8
@mst_solib_trampoline = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.minimal_symbol* @lookup_minimal_symbol_solib_trampoline(i8* %0, %struct.objfile* %1) #0 {
  %3 = alloca %struct.minimal_symbol*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.objfile*, align 8
  %6 = alloca %struct.objfile*, align 8
  %7 = alloca %struct.minimal_symbol*, align 8
  %8 = alloca %struct.minimal_symbol*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.objfile* %1, %struct.objfile** %5, align 8
  store %struct.minimal_symbol* null, %struct.minimal_symbol** %8, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @msymbol_hash(i8* %10)
  %12 = load i32, i32* @MINIMAL_SYMBOL_HASH_SIZE, align 4
  %13 = urem i32 %11, %12
  store i32 %13, i32* %9, align 4
  %14 = load %struct.objfile*, %struct.objfile** @object_files, align 8
  store %struct.objfile* %14, %struct.objfile** %6, align 8
  br label %15

15:                                               ; preds = %66, %2
  %16 = load %struct.objfile*, %struct.objfile** %6, align 8
  %17 = icmp ne %struct.objfile* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load %struct.minimal_symbol*, %struct.minimal_symbol** %8, align 8
  %20 = icmp eq %struct.minimal_symbol* %19, null
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i1 [ false, %15 ], [ %20, %18 ]
  br i1 %22, label %23, label %70

23:                                               ; preds = %21
  %24 = load %struct.objfile*, %struct.objfile** %5, align 8
  %25 = icmp eq %struct.objfile* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load %struct.objfile*, %struct.objfile** %5, align 8
  %28 = load %struct.objfile*, %struct.objfile** %6, align 8
  %29 = icmp eq %struct.objfile* %27, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %26, %23
  %31 = load %struct.objfile*, %struct.objfile** %6, align 8
  %32 = getelementptr inbounds %struct.objfile, %struct.objfile* %31, i32 0, i32 0
  %33 = load %struct.minimal_symbol**, %struct.minimal_symbol*** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.minimal_symbol*, %struct.minimal_symbol** %33, i64 %35
  %37 = load %struct.minimal_symbol*, %struct.minimal_symbol** %36, align 8
  store %struct.minimal_symbol* %37, %struct.minimal_symbol** %7, align 8
  br label %38

38:                                               ; preds = %60, %30
  %39 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  %40 = icmp ne %struct.minimal_symbol* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.minimal_symbol*, %struct.minimal_symbol** %8, align 8
  %43 = icmp eq %struct.minimal_symbol* %42, null
  br label %44

44:                                               ; preds = %41, %38
  %45 = phi i1 [ false, %38 ], [ %43, %41 ]
  br i1 %45, label %46, label %64

46:                                               ; preds = %44
  %47 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  %48 = call i32 @SYMBOL_LINKAGE_NAME(%struct.minimal_symbol* %47)
  %49 = load i8*, i8** %4, align 8
  %50 = call i64 @strcmp(i32 %48, i8* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  %54 = call i64 @MSYMBOL_TYPE(%struct.minimal_symbol* %53)
  %55 = load i64, i64* @mst_solib_trampoline, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  store %struct.minimal_symbol* %58, %struct.minimal_symbol** %3, align 8
  br label %71

59:                                               ; preds = %52, %46
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  %62 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %61, i32 0, i32 0
  %63 = load %struct.minimal_symbol*, %struct.minimal_symbol** %62, align 8
  store %struct.minimal_symbol* %63, %struct.minimal_symbol** %7, align 8
  br label %38

64:                                               ; preds = %44
  br label %65

65:                                               ; preds = %64, %26
  br label %66

66:                                               ; preds = %65
  %67 = load %struct.objfile*, %struct.objfile** %6, align 8
  %68 = getelementptr inbounds %struct.objfile, %struct.objfile* %67, i32 0, i32 1
  %69 = load %struct.objfile*, %struct.objfile** %68, align 8
  store %struct.objfile* %69, %struct.objfile** %6, align 8
  br label %15

70:                                               ; preds = %21
  store %struct.minimal_symbol* null, %struct.minimal_symbol** %3, align 8
  br label %71

71:                                               ; preds = %70, %57
  %72 = load %struct.minimal_symbol*, %struct.minimal_symbol** %3, align 8
  ret %struct.minimal_symbol* %72
}

declare dso_local i32 @msymbol_hash(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @SYMBOL_LINKAGE_NAME(%struct.minimal_symbol*) #1

declare dso_local i64 @MSYMBOL_TYPE(%struct.minimal_symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
