; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_winnt.c_i386_pe_section_type_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_winnt.c_i386_pe_section_type_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i386_pe_section_type_flags.htab = internal global i64 0, align 8
@htab_hash_pointer = common dso_local global i32 0, align 4
@htab_eq_pointer = common dso_local global i32 0, align 4
@FUNCTION_DECL = common dso_local global i64 0, align 8
@SECTION_CODE = common dso_local global i32 0, align 4
@SECTION_WRITE = common dso_local global i32 0, align 4
@VAR_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@SECTION_PE_SHARED = common dso_local global i32 0, align 4
@SECTION_LINKONCE = common dso_local global i32 0, align 4
@INSERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"%q+D causes a section type conflict\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i386_pe_section_type_flags(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* @i386_pe_section_type_flags.htab, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @htab_hash_pointer, align 4
  %13 = load i32, i32* @htab_eq_pointer, align 4
  %14 = call i64 @htab_create(i32 31, i32 %12, i32 %13, i32* null)
  store i64 %14, i64* @i386_pe_section_type_flags.htab, align 8
  br label %15

15:                                               ; preds = %11, %3
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @TREE_CODE(i64 %19)
  %21 = load i64, i64* @FUNCTION_DECL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @SECTION_CODE, align 4
  store i32 %24, i32* %7, align 4
  br label %54

25:                                               ; preds = %18, %15
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i64, i64* %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @decl_readonly_section(i64 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %53

34:                                               ; preds = %28, %25
  %35 = load i32, i32* @SECTION_WRITE, align 4
  store i32 %35, i32* %7, align 4
  %36 = load i64, i64* %4, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @TREE_CODE(i64 %39)
  %41 = load i64, i64* @VAR_DECL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @DECL_ATTRIBUTES(i64 %44)
  %46 = call i64 @lookup_attribute(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @SECTION_PE_SHARED, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %48, %43, %38, %34
  br label %53

53:                                               ; preds = %52, %33
  br label %54

54:                                               ; preds = %53, %23
  %55 = load i64, i64* %4, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load i64, i64* %4, align 8
  %59 = call i64 @DECL_ONE_ONLY(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* @SECTION_LINKONCE, align 4
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %61, %57, %54
  %66 = load i64, i64* @i386_pe_section_type_flags.htab, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* @INSERT, align 4
  %69 = call i64 @htab_find_slot(i64 %66, i8* %67, i32 %68)
  %70 = inttoptr i64 %69 to i32**
  store i32** %70, i32*** %8, align 8
  %71 = load i32**, i32*** %8, align 8
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %65
  %75 = call i64 @xmalloc(i32 4)
  %76 = inttoptr i64 %75 to i32*
  %77 = load i32**, i32*** %8, align 8
  store i32* %76, i32** %77, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32**, i32*** %8, align 8
  %80 = load i32*, i32** %79, align 8
  store i32 %78, i32* %80, align 4
  br label %94

81:                                               ; preds = %65
  %82 = load i64, i64* %4, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  %85 = load i32**, i32*** %8, align 8
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i64, i64* %4, align 8
  %92 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %91)
  br label %93

93:                                               ; preds = %90, %84, %81
  br label %94

94:                                               ; preds = %93, %74
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i64 @htab_create(i32, i32, i32, i32*) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @decl_readonly_section(i64, i32) #1

declare dso_local i64 @lookup_attribute(i8*, i32) #1

declare dso_local i32 @DECL_ATTRIBUTES(i64) #1

declare dso_local i64 @DECL_ONE_ONLY(i64) #1

declare dso_local i64 @htab_find_slot(i64, i8*, i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @error(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
