; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_legitimize_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_legitimize_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mips_split_p = common dso_local global i64* null, align 8
@PLUS = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mips_legitimize_address(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @mips_tls_operand_p(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mips_legitimize_tls_address(i32 %14)
  %16 = load i32*, i32** %4, align 8
  store i32 %15, i32* %16, align 4
  store i32 1, i32* %3, align 4
  br label %73

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @mips_symbolic_constant_p(i32 %19, i32* %6)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @mips_symbolic_address_p(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load i64*, i64** @mips_split_p, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mips_split_symbol(i32 0, i32 %36)
  %38 = load i32*, i32** %4, align 8
  store i32 %37, i32* %38, align 4
  store i32 1, i32* %3, align 4
  br label %73

39:                                               ; preds = %27, %22, %17
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @GET_CODE(i32 %41)
  %43 = load i64, i64* @PLUS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %72

45:                                               ; preds = %39
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @XEXP(i32 %47, i32 1)
  %49 = call i64 @GET_CODE(i32 %48)
  %50 = load i64, i64* @CONST_INT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %45
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @XEXP(i32 %54, i32 0)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @mips_valid_base_register_p(i32 %56, i32 %57, i32 0)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %52
  %61 = load i32, i32* @Pmode, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @copy_to_mode_reg(i32 %61, i32 %62)
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %60, %52
  %65 = load i32, i32* %7, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @XEXP(i32 %67, i32 1)
  %69 = call i32 @INTVAL(i32 %68)
  %70 = call i32 @mips_add_offset(i32 0, i32 %65, i32 %69)
  %71 = load i32*, i32** %4, align 8
  store i32 %70, i32* %71, align 4
  store i32 1, i32* %3, align 4
  br label %73

72:                                               ; preds = %45, %39
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %64, %34, %12
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @mips_tls_operand_p(i32) #1

declare dso_local i32 @mips_legitimize_tls_address(i32) #1

declare dso_local i64 @mips_symbolic_constant_p(i32, i32*) #1

declare dso_local i64 @mips_symbolic_address_p(i32, i32) #1

declare dso_local i32 @mips_split_symbol(i32, i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @mips_valid_base_register_p(i32, i32, i32) #1

declare dso_local i32 @copy_to_mode_reg(i32, i32) #1

declare dso_local i32 @mips_add_offset(i32, i32, i32) #1

declare dso_local i32 @INTVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
