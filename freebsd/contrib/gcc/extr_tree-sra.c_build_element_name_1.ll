; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_build_element_name_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_build_element_name_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sra_elt = type { i64, i64, %struct.sra_elt* }

@sra_obstack = common dso_local global i32 0, align 4
@COMPLEX_TYPE = common dso_local global i64 0, align 8
@integer_zero_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"imag\00", align 1
@INTEGER_CST = common dso_local global i64 0, align 8
@HOST_WIDE_INT_PRINT_DEC = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"D%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sra_elt*)* @build_element_name_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_element_name_1(%struct.sra_elt* %0) #0 {
  %2 = alloca %struct.sra_elt*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca i64, align 8
  store %struct.sra_elt* %0, %struct.sra_elt** %2, align 8
  %6 = load %struct.sra_elt*, %struct.sra_elt** %2, align 8
  %7 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %6, i32 0, i32 2
  %8 = load %struct.sra_elt*, %struct.sra_elt** %7, align 8
  %9 = icmp ne %struct.sra_elt* %8, null
  br i1 %9, label %10, label %35

10:                                               ; preds = %1
  %11 = load %struct.sra_elt*, %struct.sra_elt** %2, align 8
  %12 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %11, i32 0, i32 2
  %13 = load %struct.sra_elt*, %struct.sra_elt** %12, align 8
  call void @build_element_name_1(%struct.sra_elt* %13)
  %14 = call i32 @obstack_1grow(i32* @sra_obstack, i8 signext 36)
  %15 = load %struct.sra_elt*, %struct.sra_elt** %2, align 8
  %16 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %15, i32 0, i32 2
  %17 = load %struct.sra_elt*, %struct.sra_elt** %16, align 8
  %18 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @TREE_CODE(i64 %19)
  %21 = load i64, i64* @COMPLEX_TYPE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %10
  %24 = load %struct.sra_elt*, %struct.sra_elt** %2, align 8
  %25 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @integer_zero_node, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 @obstack_grow(i32* @sra_obstack, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %33

31:                                               ; preds = %23
  %32 = call i32 @obstack_grow(i32* @sra_obstack, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  br label %33

33:                                               ; preds = %31, %29
  br label %74

34:                                               ; preds = %10
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.sra_elt*, %struct.sra_elt** %2, align 8
  %37 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %3, align 8
  %39 = load i64, i64* %3, align 8
  %40 = call i64 @TREE_CODE(i64 %39)
  %41 = load i64, i64* @INTEGER_CST, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %35
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %45 = load i8*, i8** @HOST_WIDE_INT_PRINT_DEC, align 8
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @TREE_INT_CST_LOW(i64 %46)
  %48 = call i32 @sprintf(i8* %44, i8* %45, i32 %47)
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %50 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %51 = call i32 @strlen(i8* %50)
  %52 = call i32 @obstack_grow(i32* @sra_obstack, i8* %49, i32 %51)
  br label %74

53:                                               ; preds = %35
  %54 = load i64, i64* %3, align 8
  %55 = call i64 @DECL_NAME(i64 %54)
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %5, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i64, i64* %5, align 8
  %60 = call i8* @IDENTIFIER_POINTER(i64 %59)
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @IDENTIFIER_LENGTH(i64 %61)
  %63 = call i32 @obstack_grow(i32* @sra_obstack, i8* %60, i32 %62)
  br label %73

64:                                               ; preds = %53
  %65 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %66 = load i64, i64* %3, align 8
  %67 = call i32 @DECL_UID(i64 %66)
  %68 = call i32 @sprintf(i8* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %70 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %71 = call i32 @strlen(i8* %70)
  %72 = call i32 @obstack_grow(i32* @sra_obstack, i8* %69, i32 %71)
  br label %73

73:                                               ; preds = %64, %58
  br label %74

74:                                               ; preds = %33, %73, %43
  ret void
}

declare dso_local i32 @obstack_1grow(i32*, i8 signext) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @obstack_grow(i32*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @TREE_INT_CST_LOW(i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @DECL_NAME(i64) #1

declare dso_local i8* @IDENTIFIER_POINTER(i64) #1

declare dso_local i32 @IDENTIFIER_LENGTH(i64) #1

declare dso_local i32 @DECL_UID(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
