; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_final.c_rest_of_handle_final.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_final.c_rest_of_handle_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)* }

@current_function_decl = common dso_local global i32 0, align 4
@SYMBOL_REF = common dso_local global i64 0, align 8
@asm_out_file = common dso_local global i32 0, align 4
@optimize = common dso_local global i32 0, align 4
@user_defined_section_attribute = common dso_local global i32 0, align 4
@quiet_flag = common dso_local global i32 0, align 4
@TV_SYMOUT = common dso_local global i32 0, align 4
@debug_hooks = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rest_of_handle_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rest_of_handle_final() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @current_function_decl, align 4
  %4 = call i32 @DECL_RTL(i32 %3)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = call i32 @MEM_P(i32 %5)
  %7 = call i32 @gcc_assert(i32 %6)
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @XEXP(i32 %8, i32 0)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = call i64 @GET_CODE(i32 %10)
  %12 = load i64, i64* @SYMBOL_REF, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @gcc_assert(i32 %14)
  %16 = load i32, i32* %1, align 4
  %17 = call i8* @XSTR(i32 %16, i32 0)
  store i8* %17, i8** %2, align 8
  %18 = load i32, i32* @current_function_decl, align 4
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @assemble_start_function(i32 %18, i8* %19)
  %21 = call i32 (...) @get_insns()
  %22 = load i32, i32* @asm_out_file, align 4
  %23 = load i32, i32* @optimize, align 4
  %24 = call i32 @final_start_function(i32 %21, i32 %22, i32 %23)
  %25 = call i32 (...) @get_insns()
  %26 = load i32, i32* @asm_out_file, align 4
  %27 = load i32, i32* @optimize, align 4
  %28 = call i32 @final(i32 %25, i32 %26, i32 %27)
  %29 = call i32 (...) @final_end_function()
  %30 = load i32, i32* @current_function_decl, align 4
  %31 = load i8*, i8** %2, align 8
  %32 = call i32 @assemble_end_function(i32 %30, i8* %31)
  %33 = call i32 (...) @output_function_exception_table()
  store i32 0, i32* @user_defined_section_attribute, align 4
  %34 = load i32, i32* @quiet_flag, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %0
  %37 = load i32, i32* @asm_out_file, align 4
  %38 = call i32 @fflush(i32 %37)
  br label %39

39:                                               ; preds = %36, %0
  %40 = call i32 (...) @free_basic_block_vars()
  %41 = load i32, i32* @TV_SYMOUT, align 4
  %42 = call i32 @timevar_push(i32 %41)
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @debug_hooks, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (i32)*, i32 (i32)** %44, align 8
  %46 = load i32, i32* @current_function_decl, align 4
  %47 = call i32 %45(i32 %46)
  %48 = load i32, i32* @TV_SYMOUT, align 4
  %49 = call i32 @timevar_pop(i32 %48)
  ret i32 0
}

declare dso_local i32 @DECL_RTL(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @MEM_P(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i8* @XSTR(i32, i32) #1

declare dso_local i32 @assemble_start_function(i32, i8*) #1

declare dso_local i32 @final_start_function(i32, i32, i32) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @final(i32, i32, i32) #1

declare dso_local i32 @final_end_function(...) #1

declare dso_local i32 @assemble_end_function(i32, i8*) #1

declare dso_local i32 @output_function_exception_table(...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @free_basic_block_vars(...) #1

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i32 @timevar_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
