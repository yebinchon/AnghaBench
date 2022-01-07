; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dojump.c_do_jump_by_parts_greater_rtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_dojump.c_do_jump_by_parts_greater_rtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNITS_PER_WORD = common dso_local global i32 0, align 4
@WORDS_BIG_ENDIAN = common dso_local global i64 0, align 8
@GT = common dso_local global i32 0, align 4
@word_mode = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@NE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i64, i64, i64, i64)* @do_jump_by_parts_greater_rtx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_jump_by_parts_greater_rtx(i32 %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @GET_MODE_SIZE(i32 %18)
  %20 = load i32, i32* @UNITS_PER_WORD, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %13, align 4
  store i64 0, i64* %14, align 8
  %22 = load i64, i64* %12, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %6
  %25 = load i64, i64* %11, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24, %6
  %28 = call i64 (...) @gen_label_rtx()
  store i64 %28, i64* %14, align 8
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i64, i64* %12, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %14, align 8
  store i64 %33, i64* %12, align 8
  br label %34

34:                                               ; preds = %32, %29
  %35 = load i64, i64* %11, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* %14, align 8
  store i64 %38, i64* %11, align 8
  br label %39

39:                                               ; preds = %37, %34
  store i32 0, i32* %15, align 4
  br label %40

40:                                               ; preds = %97, %39
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %100

44:                                               ; preds = %40
  %45 = load i64, i64* @WORDS_BIG_ENDIAN, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i64, i64* %9, align 8
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @operand_subword_force(i64 %48, i32 %49, i32 %50)
  store i64 %51, i64* %16, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @operand_subword_force(i64 %52, i32 %53, i32 %54)
  store i64 %55, i64* %17, align 8
  br label %71

56:                                               ; preds = %44
  %57 = load i64, i64* %9, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sub nsw i32 %58, 1
  %60 = load i32, i32* %15, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @operand_subword_force(i64 %57, i32 %61, i32 %62)
  store i64 %63, i64* %16, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sub nsw i32 %65, 1
  %67 = load i32, i32* %15, align 4
  %68 = sub nsw i32 %66, %67
  %69 = load i32, i32* %7, align 4
  %70 = call i64 @operand_subword_force(i64 %64, i32 %68, i32 %69)
  store i64 %70, i64* %17, align 8
  br label %71

71:                                               ; preds = %56, %47
  %72 = load i64, i64* %16, align 8
  %73 = load i64, i64* %17, align 8
  %74 = load i32, i32* @GT, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %15, align 4
  %79 = icmp sgt i32 %78, 0
  br label %80

80:                                               ; preds = %77, %71
  %81 = phi i1 [ true, %71 ], [ %79, %77 ]
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* @word_mode, align 4
  %84 = load i32, i32* @NULL_RTX, align 4
  %85 = load i32, i32* @NULL_RTX, align 4
  %86 = load i64, i64* %12, align 8
  %87 = call i32 @do_compare_rtx_and_jump(i64 %72, i64 %73, i32 %74, i32 %82, i32 %83, i32 %84, i32 %85, i64 %86)
  %88 = load i64, i64* %16, align 8
  %89 = load i64, i64* %17, align 8
  %90 = load i32, i32* @NE, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @word_mode, align 4
  %93 = load i32, i32* @NULL_RTX, align 4
  %94 = load i32, i32* @NULL_RTX, align 4
  %95 = load i64, i64* %11, align 8
  %96 = call i32 @do_compare_rtx_and_jump(i64 %88, i64 %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i64 %95)
  br label %97

97:                                               ; preds = %80
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %15, align 4
  br label %40

100:                                              ; preds = %40
  %101 = load i64, i64* %11, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i64, i64* %11, align 8
  %105 = call i32 @emit_jump(i64 %104)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i64, i64* %14, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load i64, i64* %14, align 8
  %111 = call i32 @emit_label(i64 %110)
  br label %112

112:                                              ; preds = %109, %106
  ret void
}

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i64 @gen_label_rtx(...) #1

declare dso_local i64 @operand_subword_force(i64, i32, i32) #1

declare dso_local i32 @do_compare_rtx_and_jump(i64, i64, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @emit_jump(i64) #1

declare dso_local i32 @emit_label(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
