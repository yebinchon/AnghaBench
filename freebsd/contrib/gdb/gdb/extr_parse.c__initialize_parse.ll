; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_parse.c__initialize_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_parse.c__initialize_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.type_stack_elt = type { i32 }

@type_stack_size = common dso_local global i32 0, align 4
@type_stack_depth = common dso_local global i64 0, align 8
@type_stack = common dso_local global %union.type_stack_elt* null, align 8
@msym_text_symbol_type = common dso_local global i32 0, align 4
@msym_data_symbol_type = common dso_local global i32 0, align 4
@msym_unknown_symbol_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"expression\00", align 1
@class_maintenance = common dso_local global i32 0, align 4
@var_zinteger = common dso_local global i32 0, align 4
@expressiondebug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [101 x i8] c"Set expression debugging.\0AWhen non-zero, the internal representation of expressions will be printed.\00", align 1
@setdebuglist = common dso_local global i32 0, align 4
@showdebuglist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_initialize_parse() #0 {
  store i32 80, i32* @type_stack_size, align 4
  store i64 0, i64* @type_stack_depth, align 8
  %1 = load i32, i32* @type_stack_size, align 4
  %2 = sext i32 %1 to i64
  %3 = mul i64 %2, 4
  %4 = trunc i64 %3 to i32
  %5 = call i64 @xmalloc(i32 %4)
  %6 = inttoptr i64 %5 to %union.type_stack_elt*
  store %union.type_stack_elt* %6, %union.type_stack_elt** @type_stack, align 8
  %7 = call i32 (...) @build_parse()
  %8 = load i32, i32* @msym_text_symbol_type, align 4
  %9 = call i32 @DEPRECATED_REGISTER_GDBARCH_SWAP(i32 %8)
  %10 = load i32, i32* @msym_data_symbol_type, align 4
  %11 = call i32 @DEPRECATED_REGISTER_GDBARCH_SWAP(i32 %10)
  %12 = load i32, i32* @msym_unknown_symbol_type, align 4
  %13 = call i32 @DEPRECATED_REGISTER_GDBARCH_SWAP(i32 %12)
  %14 = call i32 @deprecated_register_gdbarch_swap(i32* null, i32 0, i32 (...)* @build_parse)
  %15 = load i32, i32* @class_maintenance, align 4
  %16 = load i32, i32* @var_zinteger, align 4
  %17 = call i32 @add_set_cmd(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i8* bitcast (i32* @expressiondebug to i8*), i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.1, i64 0, i64 0), i32* @setdebuglist)
  %18 = call i32 @add_show_from_set(i32 %17, i32* @showdebuglist)
  ret void
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @build_parse(...) #1

declare dso_local i32 @DEPRECATED_REGISTER_GDBARCH_SWAP(i32) #1

declare dso_local i32 @deprecated_register_gdbarch_swap(i32*, i32, i32 (...)*) #1

declare dso_local i32 @add_show_from_set(i32, i32*) #1

declare dso_local i32 @add_set_cmd(i8*, i32, i32, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
