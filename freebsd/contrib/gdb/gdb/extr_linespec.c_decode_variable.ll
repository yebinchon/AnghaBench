; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_decode_variable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_linespec.c_decode_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab = type { i32 }
%struct.symtabs_and_lines = type { i32 }
%struct.symbol = type { i32 }
%struct.minimal_symbol = type { i32 }

@STATIC_BLOCK = common dso_local global i32 0, align 4
@VAR_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"No symbol table is loaded.  Use the \22file\22 command.\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Function \22%s\22 not defined.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8***, %struct.symtab*, i32*)* @decode_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_variable(i8* %0, i32 %1, i8*** %2, %struct.symtab* %3, i32* %4) #0 {
  %6 = alloca %struct.symtabs_and_lines, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8***, align 8
  %10 = alloca %struct.symtab*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.symbol*, align 8
  %13 = alloca %struct.symtab*, align 8
  %14 = alloca %struct.minimal_symbol*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8*** %2, i8**** %9, align 8
  store %struct.symtab* %3, %struct.symtab** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load %struct.symtab*, %struct.symtab** %10, align 8
  %17 = icmp ne %struct.symtab* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %5
  %19 = load %struct.symtab*, %struct.symtab** %10, align 8
  %20 = call i32 @BLOCKVECTOR(%struct.symtab* %19)
  %21 = load i32, i32* @STATIC_BLOCK, align 4
  %22 = call i32 @BLOCKVECTOR_BLOCK(i32 %20, i32 %21)
  br label %25

23:                                               ; preds = %5
  %24 = call i32 @get_selected_block(i32 0)
  br label %25

25:                                               ; preds = %23, %18
  %26 = phi i32 [ %22, %18 ], [ %24, %23 ]
  %27 = load i32, i32* @VAR_DOMAIN, align 4
  %28 = call %struct.symbol* @lookup_symbol(i8* %15, i32 %26, i32 %27, i32 0, %struct.symtab** %13)
  store %struct.symbol* %28, %struct.symbol** %12, align 8
  %29 = load %struct.symbol*, %struct.symbol** %12, align 8
  %30 = icmp ne %struct.symbol* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = load i8***, i8**** %9, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.symbol*, %struct.symbol** %12, align 8
  %36 = load %struct.symtab*, %struct.symtab** %10, align 8
  %37 = load %struct.symtab*, %struct.symtab** %13, align 8
  %38 = call i32 @symbol_found(i32 %32, i8*** %33, i8* %34, %struct.symbol* %35, %struct.symtab* %36, %struct.symtab* %37)
  %39 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %6, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  br label %71

40:                                               ; preds = %25
  %41 = load i8*, i8** %7, align 8
  %42 = call %struct.minimal_symbol* @lookup_minimal_symbol(i8* %41, i32* null, i32* null)
  store %struct.minimal_symbol* %42, %struct.minimal_symbol** %14, align 8
  %43 = load %struct.minimal_symbol*, %struct.minimal_symbol** %14, align 8
  %44 = icmp ne %struct.minimal_symbol* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.minimal_symbol*, %struct.minimal_symbol** %14, align 8
  %48 = call i32 @minsym_found(i32 %46, %struct.minimal_symbol* %47)
  %49 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %6, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  br label %71

50:                                               ; preds = %40
  %51 = call i32 (...) @have_full_symbols()
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %50
  %54 = call i32 (...) @have_partial_symbols()
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = call i32 (...) @have_minimal_symbols()
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %56, %53, %50
  %62 = load i32*, i32** %11, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32*, i32** %11, align 8
  store i32 1, i32* %65, align 4
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @error_silent(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %64, %61
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %68, %45, %31
  %72 = getelementptr inbounds %struct.symtabs_and_lines, %struct.symtabs_and_lines* %6, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  ret i32 %73
}

declare dso_local %struct.symbol* @lookup_symbol(i8*, i32, i32, i32, %struct.symtab**) #1

declare dso_local i32 @BLOCKVECTOR_BLOCK(i32, i32) #1

declare dso_local i32 @BLOCKVECTOR(%struct.symtab*) #1

declare dso_local i32 @get_selected_block(i32) #1

declare dso_local i32 @symbol_found(i32, i8***, i8*, %struct.symbol*, %struct.symtab*, %struct.symtab*) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol(i8*, i32*, i32*) #1

declare dso_local i32 @minsym_found(i32, %struct.minimal_symbol*) #1

declare dso_local i32 @have_full_symbols(...) #1

declare dso_local i32 @have_partial_symbols(...) #1

declare dso_local i32 @have_minimal_symbols(...) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @error_silent(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
