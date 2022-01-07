; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_s_thumb_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_s_thumb_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_info_struct = type { i32 }
%struct.TYPE_6__ = type { i32*, %struct.list_info_struct*, i32 }

@input_line_pointer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"expected comma after name \22%s\22\00", align 1
@listing = common dso_local global i32 0, align 4
@LISTING_SYMBOLS = common dso_local global i32 0, align 4
@rs_fill = common dso_local global i32 0, align 4
@listing_tail = external dso_local global %struct.list_info_struct*, align 8
@undefined_section = common dso_local global i32 0, align 4
@zero_address_frag = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@reg_section = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"symbol `%s' already defined\00", align 1
@support_interwork = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @s_thumb_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s_thumb_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i8*, i8** @input_line_pointer, align 8
  store i8* %8, i8** %3, align 8
  %9 = call signext i8 (...) @get_symbol_end()
  store i8 %9, i8* %4, align 1
  %10 = load i8*, i8** @input_line_pointer, align 8
  store i8* %10, i8** %5, align 8
  %11 = load i8, i8* %4, align 1
  %12 = load i8*, i8** %5, align 8
  store i8 %11, i8* %12, align 1
  %13 = load i8*, i8** @input_line_pointer, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 44
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load i8*, i8** %5, align 8
  store i8 0, i8* %18, align 1
  %19 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @as_bad(i32 %19, i8* %20)
  %22 = load i8, i8* %4, align 1
  %23 = load i8*, i8** %5, align 8
  store i8 %22, i8* %23, align 1
  %24 = call i32 (...) @ignore_rest_of_line()
  br label %106

25:                                               ; preds = %1
  %26 = load i8*, i8** @input_line_pointer, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** @input_line_pointer, align 8
  %28 = load i8*, i8** %5, align 8
  store i8 0, i8* %28, align 1
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 46
  br i1 %33, label %34, label %42

34:                                               ; preds = %25
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i32 (...) @abort() #3
  unreachable

42:                                               ; preds = %34, %25
  %43 = load i8*, i8** %3, align 8
  %44 = call i32* @symbol_find(i8* %43)
  store i32* %44, i32** %6, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %77

46:                                               ; preds = %42
  %47 = load i8*, i8** %3, align 8
  %48 = call i32* @md_undefined_symbol(i8* %47)
  store i32* %48, i32** %6, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %77

50:                                               ; preds = %46
  %51 = load i32, i32* @listing, align 4
  %52 = load i32, i32* @LISTING_SYMBOLS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %50
  %56 = call %struct.TYPE_6__* @xmalloc(i32 24)
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %7, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = call i32 @memset(%struct.TYPE_6__* %57, i32 0, i32 24)
  %59 = load i32, i32* @rs_fill, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.list_info_struct*, %struct.list_info_struct** @listing_tail, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  store %struct.list_info_struct* %62, %struct.list_info_struct** %64, align 8
  %65 = load i8*, i8** %3, align 8
  %66 = load i32, i32* @undefined_section, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %68 = call i32* @symbol_new(i8* %65, i32 %66, i32 0, %struct.TYPE_6__* %67)
  store i32* %68, i32** %6, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32* %69, i32** %71, align 8
  br label %76

72:                                               ; preds = %50
  %73 = load i8*, i8** %3, align 8
  %74 = load i32, i32* @undefined_section, align 4
  %75 = call i32* @symbol_new(i8* %73, i32 %74, i32 0, %struct.TYPE_6__* @zero_address_frag)
  store i32* %75, i32** %6, align 8
  br label %76

76:                                               ; preds = %72, %55
  br label %77

77:                                               ; preds = %76, %46, %42
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @symbol_table_insert(i32* %78)
  %80 = load i8, i8* %4, align 1
  %81 = load i8*, i8** %5, align 8
  store i8 %80, i8* %81, align 1
  %82 = load i32, i32* %2, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %77
  %85 = load i32*, i32** %6, align 8
  %86 = call i64 @S_IS_DEFINED(i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %84
  %89 = load i32*, i32** %6, align 8
  %90 = call i64 @S_GET_SEGMENT(i32* %89)
  %91 = load i64, i64* @reg_section, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32*, i32** %6, align 8
  %96 = call i8* @S_GET_NAME(i32* %95)
  %97 = call i32 @as_bad(i32 %94, i8* %96)
  br label %98

98:                                               ; preds = %93, %88, %84, %77
  %99 = load i32*, i32** %6, align 8
  %100 = call i32 @pseudo_set(i32* %99)
  %101 = call i32 (...) @demand_empty_rest_of_line()
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @THUMB_SET_FUNC(i32* %102, i32 1)
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @ARM_SET_THUMB(i32* %104, i32 1)
  br label %106

106:                                              ; preds = %98, %17
  ret void
}

declare dso_local signext i8 @get_symbol_end(...) #1

declare dso_local i32 @as_bad(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ignore_rest_of_line(...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32* @symbol_find(i8*) #1

declare dso_local i32* @md_undefined_symbol(i8*) #1

declare dso_local %struct.TYPE_6__* @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32* @symbol_new(i8*, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @symbol_table_insert(i32*) #1

declare dso_local i64 @S_IS_DEFINED(i32*) #1

declare dso_local i64 @S_GET_SEGMENT(i32*) #1

declare dso_local i8* @S_GET_NAME(i32*) #1

declare dso_local i32 @pseudo_set(i32*) #1

declare dso_local i32 @demand_empty_rest_of_line(...) #1

declare dso_local i32 @THUMB_SET_FUNC(i32*, i32) #1

declare dso_local i32 @ARM_SET_THUMB(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
