; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_va_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_builtins.c_expand_builtin_va_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@va_list_type_node = common dso_local global i32 0, align 4
@ARRAY_TYPE = common dso_local global i64 0, align 8
@MODIFY_EXPR = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@EXPAND_NORMAL = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@BLKmode = common dso_local global i32 0, align 4
@BLOCK_OP_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @expand_builtin_va_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_builtin_va_copy(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @TREE_VALUE(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @TREE_CHAIN(i32 %12)
  %14 = call i32 @TREE_VALUE(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @stabilize_va_list(i32 %15, i32 1)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @stabilize_va_list(i32 %17, i32 0)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @va_list_type_node, align 4
  %20 = call i64 @TREE_CODE(i32 %19)
  %21 = load i64, i64* @ARRAY_TYPE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %1
  %24 = load i32, i32* @MODIFY_EXPR, align 4
  %25 = load i32, i32* @va_list_type_node, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @build2(i32 %24, i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @const0_rtx, align 4
  %31 = load i32, i32* @VOIDmode, align 4
  %32 = load i32, i32* @EXPAND_NORMAL, align 4
  %33 = call i32 @expand_expr(i32 %29, i32 %30, i32 %31, i32 %32)
  br label %88

34:                                               ; preds = %1
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @NULL_RTX, align 4
  %37 = load i32, i32* @Pmode, align 4
  %38 = load i32, i32* @EXPAND_NORMAL, align 4
  %39 = call i32 @expand_expr(i32 %35, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @NULL_RTX, align 4
  %42 = load i32, i32* @Pmode, align 4
  %43 = load i32, i32* @EXPAND_NORMAL, align 4
  %44 = call i32 @expand_expr(i32 %40, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* @va_list_type_node, align 4
  %46 = call i32 @TYPE_SIZE_UNIT(i32 %45)
  %47 = load i32, i32* @NULL_RTX, align 4
  %48 = load i32, i32* @VOIDmode, align 4
  %49 = load i32, i32* @EXPAND_NORMAL, align 4
  %50 = call i32 @expand_expr(i32 %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* @Pmode, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @convert_memory_address(i32 %51, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* @Pmode, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @convert_memory_address(i32 %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* @BLKmode, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @gen_rtx_MEM(i32 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @TREE_TYPE(i32 %61)
  %63 = call i32 @TREE_TYPE(i32 %62)
  %64 = call i32 @get_alias_set(i32 %63)
  %65 = call i32 @set_mem_alias_set(i32 %60, i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @va_list_type_node, align 4
  %68 = call i32 @TYPE_ALIGN(i32 %67)
  %69 = call i32 @set_mem_align(i32 %66, i32 %68)
  %70 = load i32, i32* @BLKmode, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @gen_rtx_MEM(i32 %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @TREE_TYPE(i32 %74)
  %76 = call i32 @TREE_TYPE(i32 %75)
  %77 = call i32 @get_alias_set(i32 %76)
  %78 = call i32 @set_mem_alias_set(i32 %73, i32 %77)
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @va_list_type_node, align 4
  %81 = call i32 @TYPE_ALIGN(i32 %80)
  %82 = call i32 @set_mem_align(i32 %79, i32 %81)
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @BLOCK_OP_NORMAL, align 4
  %87 = call i32 @emit_block_move(i32 %83, i32 %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %34, %23
  %89 = load i32, i32* @const0_rtx, align 4
  ret i32 %89
}

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @stabilize_va_list(i32, i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @build2(i32, i32, i32, i32) #1

declare dso_local i32 @expand_expr(i32, i32, i32, i32) #1

declare dso_local i32 @TYPE_SIZE_UNIT(i32) #1

declare dso_local i32 @convert_memory_address(i32, i32) #1

declare dso_local i32 @gen_rtx_MEM(i32, i32) #1

declare dso_local i32 @set_mem_alias_set(i32, i32) #1

declare dso_local i32 @get_alias_set(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @set_mem_align(i32, i32) #1

declare dso_local i32 @TYPE_ALIGN(i32) #1

declare dso_local i32 @emit_block_move(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
