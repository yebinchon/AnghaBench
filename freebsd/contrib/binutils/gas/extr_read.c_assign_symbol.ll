; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_assign_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_assign_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_info_struct = type { i32 }
%struct.TYPE_3__ = type { i32*, %struct.list_info_struct* }

@need_pass_2 = common dso_local global i32 0, align 4
@listing = common dso_local global i32 0, align 4
@LISTING_SYMBOLS = common dso_local global i32 0, align 4
@listing_tail = external dso_local global %struct.list_info_struct*, align 8
@reg_section = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"symbol `%s' is already defined\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @assign_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assign_symbol(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 46
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = call i32 @get_known_segmented_expression(i32* %7)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @need_pass_2, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @do_org(i32 %25, i32* %7, i32 0)
  br label %27

27:                                               ; preds = %24, %20
  br label %107

28:                                               ; preds = %14, %2
  %29 = load i8*, i8** %3, align 8
  %30 = call i32* @symbol_find(i8* %29)
  store i32* %30, i32** %5, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %56

32:                                               ; preds = %28
  %33 = load i8*, i8** %3, align 8
  %34 = call i32* @md_undefined_symbol(i8* %33)
  store i32* %34, i32** %5, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load i8*, i8** %3, align 8
  %38 = call i32* @symbol_find_or_make(i8* %37)
  store i32* %38, i32** %5, align 8
  %39 = load i32, i32* @listing, align 4
  %40 = load i32, i32* @LISTING_SYMBOLS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %36
  %44 = call i64 @xcalloc(i32 1, i32 16)
  %45 = inttoptr i64 %44 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %45, %struct.TYPE_3__** %8, align 8
  %46 = load %struct.list_info_struct*, %struct.list_info_struct** @listing_tail, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  store %struct.list_info_struct* %46, %struct.list_info_struct** %48, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32* %49, i32** %51, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %54 = call i32 @symbol_set_frag(i32* %52, %struct.TYPE_3__* %53)
  br label %55

55:                                               ; preds = %43, %36
  br label %56

56:                                               ; preds = %55, %32, %28
  %57 = load i32*, i32** %5, align 8
  %58 = call i64 @S_IS_DEFINED(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32*, i32** %5, align 8
  %62 = call i64 @symbol_equated_p(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %91

64:                                               ; preds = %60, %56
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = load i32*, i32** %5, align 8
  %69 = call i64 @S_IS_VOLATILE(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %67, %64
  %72 = load i32*, i32** %5, align 8
  %73 = call i64 @S_GET_SEGMENT(i32* %72)
  %74 = load i64, i64* @reg_section, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %78 = load i8*, i8** %3, align 8
  %79 = call i32 @as_bad(i32 %77, i8* %78)
  %80 = load i32*, i32** %5, align 8
  %81 = call i32* @symbol_clone(i32* %80, i32 0)
  store i32* %81, i32** %5, align 8
  br label %90

82:                                               ; preds = %71, %67
  %83 = load i32*, i32** %5, align 8
  %84 = call i64 @S_IS_VOLATILE(i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32*, i32** %5, align 8
  %88 = call i32* @symbol_clone(i32* %87, i32 1)
  store i32* %88, i32** %5, align 8
  br label %89

89:                                               ; preds = %86, %82
  br label %90

90:                                               ; preds = %89, %76
  br label %91

91:                                               ; preds = %90, %60
  %92 = load i32, i32* %4, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @S_SET_VOLATILE(i32* %95)
  br label %104

97:                                               ; preds = %91
  %98 = load i32, i32* %4, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @S_SET_FORWARD_REF(i32* %101)
  br label %103

103:                                              ; preds = %100, %97
  br label %104

104:                                              ; preds = %103, %94
  %105 = load i32*, i32** %5, align 8
  %106 = call i32 @pseudo_set(i32* %105)
  br label %107

107:                                              ; preds = %104, %27
  ret void
}

declare dso_local i32 @get_known_segmented_expression(i32*) #1

declare dso_local i32 @do_org(i32, i32*, i32) #1

declare dso_local i32* @symbol_find(i8*) #1

declare dso_local i32* @md_undefined_symbol(i8*) #1

declare dso_local i32* @symbol_find_or_make(i8*) #1

declare dso_local i64 @xcalloc(i32, i32) #1

declare dso_local i32 @symbol_set_frag(i32*, %struct.TYPE_3__*) #1

declare dso_local i64 @S_IS_DEFINED(i32*) #1

declare dso_local i64 @symbol_equated_p(i32*) #1

declare dso_local i64 @S_IS_VOLATILE(i32*) #1

declare dso_local i64 @S_GET_SEGMENT(i32*) #1

declare dso_local i32 @as_bad(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @symbol_clone(i32*, i32) #1

declare dso_local i32 @S_SET_VOLATILE(i32*) #1

declare dso_local i32 @S_SET_FORWARD_REF(i32*) #1

declare dso_local i32 @pseudo_set(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
