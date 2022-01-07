; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_emit_safe_across_calls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_emit_safe_across_calls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@call_used_regs = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"\09.pred.safe_across_calls \00", align 1
@asm_out_file = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"p%u\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"p%u-p%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emit_safe_across_calls() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %0, %68
  br label %5

5:                                                ; preds = %17, %4
  %6 = load i32, i32* %1, align 4
  %7 = icmp ult i32 %6, 64
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load i64*, i64** @call_used_regs, align 8
  %10 = load i32, i32* %1, align 4
  %11 = call i64 @PR_REG(i32 %10)
  %12 = getelementptr inbounds i64, i64* %9, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %8, %5
  %16 = phi i1 [ false, %5 ], [ %14, %8 ]
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = load i32, i32* %1, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %5

20:                                               ; preds = %15
  %21 = load i32, i32* %1, align 4
  %22 = icmp uge i32 %21, 64
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %71

24:                                               ; preds = %20
  %25 = load i32, i32* %1, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %41, %24
  %28 = load i32, i32* %2, align 4
  %29 = icmp ult i32 %28, 64
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i64*, i64** @call_used_regs, align 8
  %32 = load i32, i32* %2, align 4
  %33 = call i64 @PR_REG(i32 %32)
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %30, %27
  %39 = phi i1 [ false, %27 ], [ %37, %30 ]
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %2, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %2, align 4
  br label %27

44:                                               ; preds = %38
  %45 = load i32, i32* %3, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* @asm_out_file, align 4
  %49 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %48)
  store i32 1, i32* %3, align 4
  br label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @asm_out_file, align 4
  %52 = call i32 @fputc(i8 signext 44, i32 %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* %1, align 4
  %56 = add i32 %55, 1
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @asm_out_file, align 4
  %60 = load i32, i32* %1, align 4
  %61 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %68

62:                                               ; preds = %53
  %63 = load i32, i32* @asm_out_file, align 4
  %64 = load i32, i32* %1, align 4
  %65 = load i32, i32* %2, align 4
  %66 = sub i32 %65, 1
  %67 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %66)
  br label %68

68:                                               ; preds = %62, %58
  %69 = load i32, i32* %2, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %1, align 4
  br label %4

71:                                               ; preds = %23
  %72 = load i32, i32* %3, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* @asm_out_file, align 4
  %76 = call i32 @fputc(i8 signext 10, i32 %75)
  br label %77

77:                                               ; preds = %74, %71
  ret void
}

declare dso_local i64 @PR_REG(i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
