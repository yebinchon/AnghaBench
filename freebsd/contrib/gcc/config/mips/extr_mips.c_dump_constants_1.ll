; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_dump_constants_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_dump_constants_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @dump_constants_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_constants_1(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @GET_MODE_CLASS(i32 %10)
  switch i32 %11, label %45 [
    i32 130, label %12
    i32 131, label %21
    i32 129, label %26
    i32 128, label %26
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @GET_MODE_SIZE(i32 %13)
  %15 = call i32 @GEN_INT(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @gen_consttable_int(i32 %16, i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @emit_insn_after(i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %47

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @gen_consttable_float(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @emit_insn_after(i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %47

26:                                               ; preds = %3, %3
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %40, %26
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @CONST_VECTOR_NUNITS(i32 %29)
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @GET_MODE_INNER(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @CONST_VECTOR_ELT(i32 %35, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @dump_constants_1(i32 %34, i32 %37, i32 %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %27

43:                                               ; preds = %27
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %4, align 4
  br label %47

45:                                               ; preds = %3
  %46 = call i32 (...) @gcc_unreachable()
  br label %47

47:                                               ; preds = %12, %21, %43, %45
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @emit_insn_after(i32, i32) #1

declare dso_local i32 @gen_consttable_int(i32, i32) #1

declare dso_local i32 @gen_consttable_float(i32) #1

declare dso_local i32 @CONST_VECTOR_NUNITS(i32) #1

declare dso_local i32 @GET_MODE_INNER(i32) #1

declare dso_local i32 @CONST_VECTOR_ELT(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
