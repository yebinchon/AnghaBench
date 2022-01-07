; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_minsyms.c_lookup_minimal_symbol_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_minsyms.c_lookup_minimal_symbol_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { %struct.minimal_symbol**, %struct.objfile* }
%struct.minimal_symbol = type { %struct.minimal_symbol* }

@MINIMAL_SYMBOL_HASH_SIZE = common dso_local global i32 0, align 4
@object_files = common dso_local global %struct.objfile* null, align 8
@mst_text = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.minimal_symbol* @lookup_minimal_symbol_text(i8* %0, %struct.objfile* %1) #0 {
  %3 = alloca %struct.minimal_symbol*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.objfile*, align 8
  %6 = alloca %struct.objfile*, align 8
  %7 = alloca %struct.minimal_symbol*, align 8
  %8 = alloca %struct.minimal_symbol*, align 8
  %9 = alloca %struct.minimal_symbol*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.objfile* %1, %struct.objfile** %5, align 8
  store %struct.minimal_symbol* null, %struct.minimal_symbol** %8, align 8
  store %struct.minimal_symbol* null, %struct.minimal_symbol** %9, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @msymbol_hash(i8* %11)
  %13 = load i32, i32* @MINIMAL_SYMBOL_HASH_SIZE, align 4
  %14 = urem i32 %12, %13
  store i32 %14, i32* %10, align 4
  %15 = load %struct.objfile*, %struct.objfile** @object_files, align 8
  store %struct.objfile* %15, %struct.objfile** %6, align 8
  br label %16

16:                                               ; preds = %77, %2
  %17 = load %struct.objfile*, %struct.objfile** %6, align 8
  %18 = icmp ne %struct.objfile* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.minimal_symbol*, %struct.minimal_symbol** %8, align 8
  %21 = icmp eq %struct.minimal_symbol* %20, null
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi i1 [ false, %16 ], [ %21, %19 ]
  br i1 %23, label %24, label %81

24:                                               ; preds = %22
  %25 = load %struct.objfile*, %struct.objfile** %5, align 8
  %26 = icmp eq %struct.objfile* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load %struct.objfile*, %struct.objfile** %5, align 8
  %29 = load %struct.objfile*, %struct.objfile** %6, align 8
  %30 = icmp eq %struct.objfile* %28, %29
  br i1 %30, label %31, label %76

31:                                               ; preds = %27, %24
  %32 = load %struct.objfile*, %struct.objfile** %6, align 8
  %33 = getelementptr inbounds %struct.objfile, %struct.objfile* %32, i32 0, i32 0
  %34 = load %struct.minimal_symbol**, %struct.minimal_symbol*** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.minimal_symbol*, %struct.minimal_symbol** %34, i64 %36
  %38 = load %struct.minimal_symbol*, %struct.minimal_symbol** %37, align 8
  store %struct.minimal_symbol* %38, %struct.minimal_symbol** %7, align 8
  br label %39

39:                                               ; preds = %71, %31
  %40 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  %41 = icmp ne %struct.minimal_symbol* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.minimal_symbol*, %struct.minimal_symbol** %8, align 8
  %44 = icmp eq %struct.minimal_symbol* %43, null
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i1 [ false, %39 ], [ %44, %42 ]
  br i1 %46, label %47, label %75

47:                                               ; preds = %45
  %48 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  %49 = call i32 @SYMBOL_LINKAGE_NAME(%struct.minimal_symbol* %48)
  %50 = load i8*, i8** %4, align 8
  %51 = call i64 @strcmp(i32 %49, i8* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %47
  %54 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  %55 = call i32 @MSYMBOL_TYPE(%struct.minimal_symbol* %54)
  %56 = load i32, i32* @mst_text, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %53
  %59 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  %60 = call i32 @MSYMBOL_TYPE(%struct.minimal_symbol* %59)
  %61 = icmp eq i32 %60, 128
  br i1 %61, label %62, label %70

62:                                               ; preds = %58, %53
  %63 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  %64 = call i32 @MSYMBOL_TYPE(%struct.minimal_symbol* %63)
  switch i32 %64, label %67 [
    i32 128, label %65
  ]

65:                                               ; preds = %62
  %66 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  store %struct.minimal_symbol* %66, %struct.minimal_symbol** %9, align 8
  br label %69

67:                                               ; preds = %62
  %68 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  store %struct.minimal_symbol* %68, %struct.minimal_symbol** %8, align 8
  br label %69

69:                                               ; preds = %67, %65
  br label %70

70:                                               ; preds = %69, %58, %47
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.minimal_symbol*, %struct.minimal_symbol** %7, align 8
  %73 = getelementptr inbounds %struct.minimal_symbol, %struct.minimal_symbol* %72, i32 0, i32 0
  %74 = load %struct.minimal_symbol*, %struct.minimal_symbol** %73, align 8
  store %struct.minimal_symbol* %74, %struct.minimal_symbol** %7, align 8
  br label %39

75:                                               ; preds = %45
  br label %76

76:                                               ; preds = %75, %27
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.objfile*, %struct.objfile** %6, align 8
  %79 = getelementptr inbounds %struct.objfile, %struct.objfile* %78, i32 0, i32 1
  %80 = load %struct.objfile*, %struct.objfile** %79, align 8
  store %struct.objfile* %80, %struct.objfile** %6, align 8
  br label %16

81:                                               ; preds = %22
  %82 = load %struct.minimal_symbol*, %struct.minimal_symbol** %8, align 8
  %83 = icmp ne %struct.minimal_symbol* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load %struct.minimal_symbol*, %struct.minimal_symbol** %8, align 8
  store %struct.minimal_symbol* %85, %struct.minimal_symbol** %3, align 8
  br label %92

86:                                               ; preds = %81
  %87 = load %struct.minimal_symbol*, %struct.minimal_symbol** %9, align 8
  %88 = icmp ne %struct.minimal_symbol* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load %struct.minimal_symbol*, %struct.minimal_symbol** %9, align 8
  store %struct.minimal_symbol* %90, %struct.minimal_symbol** %3, align 8
  br label %92

91:                                               ; preds = %86
  store %struct.minimal_symbol* null, %struct.minimal_symbol** %3, align 8
  br label %92

92:                                               ; preds = %91, %89, %84
  %93 = load %struct.minimal_symbol*, %struct.minimal_symbol** %3, align 8
  ret %struct.minimal_symbol* %93
}

declare dso_local i32 @msymbol_hash(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @SYMBOL_LINKAGE_NAME(%struct.minimal_symbol*) #1

declare dso_local i32 @MSYMBOL_TYPE(%struct.minimal_symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
