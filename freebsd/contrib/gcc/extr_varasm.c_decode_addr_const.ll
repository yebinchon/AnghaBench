; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_decode_addr_const.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_decode_addr_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addr_const = type { i32, i32 }

@COMPONENT_REF = common dso_local global i32 0, align 4
@ARRAY_REF = common dso_local global i32 0, align 4
@ARRAY_RANGE_REF = common dso_local global i32 0, align 4
@FUNCTION_MODE = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.addr_const*)* @decode_addr_const to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_addr_const(i32 %0, %struct.addr_const* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.addr_const*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.addr_const* %1, %struct.addr_const** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @TREE_OPERAND(i32 %8, i32 0)
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %2, %56
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @TREE_CODE(i32 %11)
  %13 = load i32, i32* @COMPONENT_REF, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @TREE_OPERAND(i32 %16, i32 1)
  %18 = call i32 @byte_position(i32 %17)
  %19 = call i64 @host_integerp(i32 %18, i32 0)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @TREE_OPERAND(i32 %22, i32 1)
  %24 = call i64 @int_byte_position(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @TREE_OPERAND(i32 %29, i32 0)
  store i32 %30, i32* %5, align 4
  br label %56

31:                                               ; preds = %15, %10
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @TREE_CODE(i32 %32)
  %34 = load i32, i32* @ARRAY_REF, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @TREE_CODE(i32 %37)
  %39 = load i32, i32* @ARRAY_RANGE_REF, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %36, %31
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @TREE_TYPE(i32 %42)
  %44 = call i32 @TYPE_SIZE_UNIT(i32 %43)
  %45 = call i32 @tree_low_cst(i32 %44, i32 1)
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @TREE_OPERAND(i32 %46, i32 1)
  %48 = call i32 @tree_low_cst(i32 %47, i32 0)
  %49 = mul nsw i32 %45, %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @TREE_OPERAND(i32 %52, i32 0)
  store i32 %53, i32* %5, align 4
  br label %55

54:                                               ; preds = %36
  br label %57

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55, %21
  br label %10

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @TREE_CODE(i32 %58)
  switch i32 %59, label %73 [
    i32 128, label %60
    i32 133, label %60
    i32 131, label %63
    i32 130, label %70
    i32 129, label %70
    i32 135, label %70
    i32 134, label %70
    i32 132, label %70
  ]

60:                                               ; preds = %57, %57
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @DECL_RTL(i32 %61)
  store i32 %62, i32* %7, align 4
  br label %75

63:                                               ; preds = %57
  %64 = load i32, i32* @FUNCTION_MODE, align 4
  %65 = load i32, i32* @Pmode, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @force_label_rtx(i32 %66)
  %68 = call i32 @gen_rtx_LABEL_REF(i32 %65, i32 %67)
  %69 = call i32 @gen_rtx_MEM(i32 %64, i32 %68)
  store i32 %69, i32* %7, align 4
  br label %75

70:                                               ; preds = %57, %57, %57, %57, %57
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @output_constant_def(i32 %71, i32 1)
  store i32 %72, i32* %7, align 4
  br label %75

73:                                               ; preds = %57
  %74 = call i32 (...) @gcc_unreachable()
  br label %75

75:                                               ; preds = %73, %70, %63, %60
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @MEM_P(i32 %76)
  %78 = call i32 @gcc_assert(i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @XEXP(i32 %79, i32 0)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.addr_const*, %struct.addr_const** %4, align 8
  %83 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.addr_const*, %struct.addr_const** %4, align 8
  %86 = getelementptr inbounds %struct.addr_const, %struct.addr_const* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  ret void
}

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i64 @host_integerp(i32, i32) #1

declare dso_local i32 @byte_position(i32) #1

declare dso_local i64 @int_byte_position(i32) #1

declare dso_local i32 @tree_low_cst(i32, i32) #1

declare dso_local i32 @TYPE_SIZE_UNIT(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @DECL_RTL(i32) #1

declare dso_local i32 @gen_rtx_MEM(i32, i32) #1

declare dso_local i32 @gen_rtx_LABEL_REF(i32, i32) #1

declare dso_local i32 @force_label_rtx(i32) #1

declare dso_local i32 @output_constant_def(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @MEM_P(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
