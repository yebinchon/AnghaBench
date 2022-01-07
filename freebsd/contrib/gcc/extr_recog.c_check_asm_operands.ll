; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_check_asm_operands.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_check_asm_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reload_completed = common dso_local global i64 0, align 8
@which_alternative = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_asm_operands(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i64, i64* @reload_completed, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @make_insn_raw(i32 %12)
  %14 = call i32 @extract_insn(i32 %13)
  %15 = call i32 @constrain_operands(i32 1)
  %16 = load i64, i64* @which_alternative, align 8
  %17 = icmp sge i64 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %2, align 4
  br label %101

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @asm_noperands(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %101

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %101

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call i8* @alloca(i32 %33)
  %35 = bitcast i8* %34 to i32*
  store i32* %35, i32** %5, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 8
  %39 = trunc i64 %38 to i32
  %40 = call i8* @alloca(i32 %39)
  %41 = bitcast i8* %40 to i8**
  store i8** %41, i8*** %6, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i8**, i8*** %6, align 8
  %45 = call i32 @decode_asm_operands(i32 %42, i32* %43, i32* null, i8** %44, i32* null)
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %97, %29
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %100

50:                                               ; preds = %46
  %51 = load i8**, i8*** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %8, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 37
  br i1 %60, label %61, label %64

61:                                               ; preds = %50
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %8, align 8
  br label %64

64:                                               ; preds = %61, %50
  %65 = load i8*, i8** %8, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = call i64 @ISDIGIT(i8 zeroext %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %64
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %70
  %77 = load i8**, i8*** %6, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = sub nsw i32 %81, 48
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %77, i64 %83
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %8, align 8
  br label %86

86:                                               ; preds = %76, %70, %64
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @asm_operand_ok(i32 %91, i8* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %86
  store i32 0, i32* %2, align 4
  br label %101

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %46

100:                                              ; preds = %46
  store i32 1, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %95, %28, %24, %11
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @extract_insn(i32) #1

declare dso_local i32 @make_insn_raw(i32) #1

declare dso_local i32 @constrain_operands(i32) #1

declare dso_local i32 @asm_noperands(i32) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @decode_asm_operands(i32, i32*, i32*, i8**, i32*) #1

declare dso_local i64 @ISDIGIT(i8 zeroext) #1

declare dso_local i32 @asm_operand_ok(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
