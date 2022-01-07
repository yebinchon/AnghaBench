; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_emit_int_relational.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_emit_int_relational.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XOR = common dso_local global i32 0, align 4
@const1_rtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32, i32, i32)* @mips_emit_int_relational to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_emit_int_relational(i32 %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call i64 @mips_relational_operand_ok_p(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @mips_emit_binary(i32 %18, i32 %19, i32 %20, i32 %21)
  br label %83

23:                                               ; preds = %5
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @GET_MODE(i32 %24)
  %26 = call i64 @mips_canonicalize_comparison(i32* %6, i32* %10, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @mips_emit_binary(i32 %29, i32 %30, i32 %31, i32 %32)
  br label %82

34:                                               ; preds = %23
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @reverse_condition(i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i64 @mips_relational_operand_ok_p(i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @GET_MODE(i32 %42)
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @force_reg(i32 %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  call void @mips_emit_int_relational(i32 %46, i32* %47, i32 %48, i32 %49, i32 %50)
  br label %81

51:                                               ; preds = %34
  %52 = load i32*, i32** %7, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @GET_MODE(i32 %55)
  %57 = call i32 @gen_reg_rtx(i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @mips_emit_binary(i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* @XOR, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @const1_rtx, align 4
  %67 = call i32 @mips_emit_binary(i32 %63, i32 %64, i32 %65, i32 %66)
  br label %80

68:                                               ; preds = %51
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = load i32*, i32** %7, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @mips_emit_binary(i32 %75, i32 %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %68, %54
  br label %81

81:                                               ; preds = %80, %41
  br label %82

82:                                               ; preds = %81, %28
  br label %83

83:                                               ; preds = %82, %17
  ret void
}

declare dso_local i64 @mips_relational_operand_ok_p(i32, i32) #1

declare dso_local i32 @mips_emit_binary(i32, i32, i32, i32) #1

declare dso_local i64 @mips_canonicalize_comparison(i32*, i32*, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @reverse_condition(i32) #1

declare dso_local i32 @force_reg(i32, i32) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
