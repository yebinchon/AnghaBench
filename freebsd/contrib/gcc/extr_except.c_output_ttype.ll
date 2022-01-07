; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_output_ttype.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_output_ttype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (i32)* }
%struct.cgraph_varpool_node = type { i32 }

@NULL_TREE = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@EXPAND_INITIALIZER = common dso_local global i32 0, align 4
@ADDR_EXPR = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@INTEGER_CST = common dso_local global i64 0, align 8
@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@DW_EH_PE_absptr = common dso_local global i32 0, align 4
@DW_EH_PE_aligned = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32)* @output_ttype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_ttype(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cgraph_varpool_node*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %8, align 4
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @NULL_TREE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @const0_rtx, align 4
  store i32 %14, i32* %7, align 4
  br label %56

15:                                               ; preds = %3
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @lookup_type_for_runtime(i64 %16)
  store i64 %17, i64* %4, align 8
  %18 = load i64, i64* %4, align 8
  %19 = load i32, i32* @NULL_RTX, align 4
  %20 = load i32, i32* @VOIDmode, align 4
  %21 = load i32, i32* @EXPAND_INITIALIZER, align 4
  %22 = call i32 @expand_expr(i64 %18, i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @STRIP_NOPS(i64 %23)
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @TREE_CODE(i64 %25)
  %27 = load i64, i64* @ADDR_EXPR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %15
  %30 = load i64, i64* %4, align 8
  %31 = call i64 @TREE_OPERAND(i64 %30, i32 0)
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @TREE_CODE(i64 %32)
  %34 = load i64, i64* @VAR_DECL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %29
  %37 = load i64, i64* %4, align 8
  %38 = call %struct.cgraph_varpool_node* @cgraph_varpool_node(i64 %37)
  store %struct.cgraph_varpool_node* %38, %struct.cgraph_varpool_node** %9, align 8
  %39 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %9, align 8
  %40 = icmp ne %struct.cgraph_varpool_node* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.cgraph_varpool_node*, %struct.cgraph_varpool_node** %9, align 8
  %43 = call i32 @cgraph_varpool_mark_needed_node(%struct.cgraph_varpool_node* %42)
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @TREE_PUBLIC(i64 %45)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %44, %29
  br label %55

48:                                               ; preds = %15
  %49 = load i64, i64* %4, align 8
  %50 = call i64 @TREE_CODE(i64 %49)
  %51 = load i64, i64* @INTEGER_CST, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @gcc_assert(i32 %53)
  br label %55

55:                                               ; preds = %48, %47
  br label %56

56:                                               ; preds = %55, %13
  %57 = load i64 (i32)*, i64 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i64 %57(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %82

62:                                               ; preds = %56
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @DW_EH_PE_absptr, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @DW_EH_PE_aligned, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66, %62
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @BITS_PER_UNIT, align 4
  %75 = mul nsw i32 %73, %74
  %76 = call i32 @assemble_integer(i32 %71, i32 %72, i32 %75, i32 1)
  br label %82

77:                                               ; preds = %66
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @dw2_asm_output_encoded_addr_rtx(i32 %78, i32 %79, i32 %80, i32* null)
  br label %82

82:                                               ; preds = %61, %77, %70
  ret void
}

declare dso_local i64 @lookup_type_for_runtime(i64) #1

declare dso_local i32 @expand_expr(i64, i32, i32, i32) #1

declare dso_local i32 @STRIP_NOPS(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

declare dso_local %struct.cgraph_varpool_node* @cgraph_varpool_node(i64) #1

declare dso_local i32 @cgraph_varpool_mark_needed_node(%struct.cgraph_varpool_node*) #1

declare dso_local i32 @TREE_PUBLIC(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @assemble_integer(i32, i32, i32, i32) #1

declare dso_local i32 @dw2_asm_output_encoded_addr_rtx(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
