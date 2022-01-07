; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_c_write_global_declarations.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_c_write_global_declarations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pch_file = common dso_local global i64 0, align 8
@flag_syntax_only = common dso_local global i64 0, align 8
@errorcount = common dso_local global i64 0, align 8
@sorrycount = common dso_local global i64 0, align 8
@parse_in = common dso_local global i32 0, align 4
@ext_block = common dso_local global i32* null, align 8
@external_scope = common dso_local global i64 0, align 8
@current_scope = common dso_local global i32 0, align 4
@TDI_tu = common dso_local global i32 0, align 4
@TDF_SLIM = common dso_local global i32 0, align 4
@all_translation_units = common dso_local global i64 0, align 8
@static_ctors = common dso_local global i64 0, align 8
@static_dtors = common dso_local global i64 0, align 8
@TV_SYMOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_write_global_declarations() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = load i64, i64* @pch_file, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %102

8:                                                ; preds = %0
  %9 = load i64, i64* @flag_syntax_only, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %8
  %12 = load i64, i64* @errorcount, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = load i64, i64* @sorrycount, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* @parse_in, align 4
  %19 = call i64 @cpp_errors(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %14, %11, %8
  br label %102

22:                                               ; preds = %17
  %23 = call i32* (...) @pop_scope()
  store i32* %23, i32** @ext_block, align 8
  store i64 0, i64* @external_scope, align 8
  %24 = load i32, i32* @current_scope, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @gcc_assert(i32 %27)
  %29 = load i32*, i32** @ext_block, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %53

31:                                               ; preds = %22
  %32 = load i32*, i32** @ext_block, align 8
  %33 = call i64 @BLOCK_VARS(i32* %32)
  store i64 %33, i64* %2, align 8
  %34 = load i32, i32* @TDI_tu, align 4
  %35 = call i32* @dump_begin(i32 %34, i32* %3)
  store i32* %35, i32** %4, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load i64, i64* %2, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load i64, i64* %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @TDF_SLIM, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @dump_node(i64 %42, i32 %46, i32* %47)
  %49 = load i32, i32* @TDI_tu, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @dump_end(i32 %49, i32* %50)
  br label %52

52:                                               ; preds = %41, %38, %31
  br label %53

53:                                               ; preds = %52, %22
  %54 = load i64, i64* @all_translation_units, align 8
  store i64 %54, i64* %1, align 8
  br label %55

55:                                               ; preds = %63, %53
  %56 = load i64, i64* %1, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i64, i64* %1, align 8
  %60 = call i32* @DECL_INITIAL(i64 %59)
  %61 = call i64 @BLOCK_VARS(i32* %60)
  %62 = call i32 @c_write_global_declarations_1(i64 %61)
  br label %63

63:                                               ; preds = %58
  %64 = load i64, i64* %1, align 8
  %65 = call i64 @TREE_CHAIN(i64 %64)
  store i64 %65, i64* %1, align 8
  br label %55

66:                                               ; preds = %55
  %67 = load i32*, i32** @ext_block, align 8
  %68 = call i64 @BLOCK_VARS(i32* %67)
  %69 = call i32 @c_write_global_declarations_1(i64 %68)
  %70 = load i64, i64* @static_ctors, align 8
  %71 = call i32 @build_cdtor(i8 signext 73, i64 %70)
  store i64 0, i64* @static_ctors, align 8
  %72 = load i64, i64* @static_dtors, align 8
  %73 = call i32 @build_cdtor(i8 signext 68, i64 %72)
  store i64 0, i64* @static_dtors, align 8
  %74 = call i32 (...) @cgraph_optimize()
  %75 = load i64, i64* @errorcount, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %66
  %78 = load i64, i64* @sorrycount, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %101

80:                                               ; preds = %77
  %81 = load i32, i32* @TV_SYMOUT, align 4
  %82 = call i32 @timevar_push(i32 %81)
  %83 = load i64, i64* @all_translation_units, align 8
  store i64 %83, i64* %1, align 8
  br label %84

84:                                               ; preds = %92, %80
  %85 = load i64, i64* %1, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load i64, i64* %1, align 8
  %89 = call i32* @DECL_INITIAL(i64 %88)
  %90 = call i64 @BLOCK_VARS(i32* %89)
  %91 = call i32 @c_write_global_declarations_2(i64 %90)
  br label %92

92:                                               ; preds = %87
  %93 = load i64, i64* %1, align 8
  %94 = call i64 @TREE_CHAIN(i64 %93)
  store i64 %94, i64* %1, align 8
  br label %84

95:                                               ; preds = %84
  %96 = load i32*, i32** @ext_block, align 8
  %97 = call i64 @BLOCK_VARS(i32* %96)
  %98 = call i32 @c_write_global_declarations_2(i64 %97)
  %99 = load i32, i32* @TV_SYMOUT, align 4
  %100 = call i32 @timevar_pop(i32 %99)
  br label %101

101:                                              ; preds = %95, %77, %66
  store i32* null, i32** @ext_block, align 8
  br label %102

102:                                              ; preds = %101, %21, %7
  ret void
}

declare dso_local i64 @cpp_errors(i32) #1

declare dso_local i32* @pop_scope(...) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @BLOCK_VARS(i32*) #1

declare dso_local i32* @dump_begin(i32, i32*) #1

declare dso_local i32 @dump_node(i64, i32, i32*) #1

declare dso_local i32 @dump_end(i32, i32*) #1

declare dso_local i32 @c_write_global_declarations_1(i64) #1

declare dso_local i32* @DECL_INITIAL(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @build_cdtor(i8 signext, i64) #1

declare dso_local i32 @cgraph_optimize(...) #1

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i32 @c_write_global_declarations_2(i64) #1

declare dso_local i32 @timevar_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
