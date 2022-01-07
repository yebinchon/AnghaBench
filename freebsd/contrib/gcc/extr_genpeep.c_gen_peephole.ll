; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genpeep.c_gen_peephole.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genpeep.c_gen_peephole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@n_operands = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"  insn = ins1;\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"  do { insn = NEXT_INSN (insn);\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"       if (insn == 0) goto L%d; }\0A\00", align 1
@insn_code_number = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"  while (NOTE_P (insn)\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"\09 || (NONJUMP_INSN_P (insn)\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"\09     && (GET_CODE (PATTERN (insn)) == USE\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"\09\09 || GET_CODE (PATTERN (insn)) == CLOBBER)));\0A\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"  if (LABEL_P (insn)\0A      || BARRIER_P (insn))\0A    goto L%d;\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"  pat = PATTERN (insn);\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"  if (! (%s)) goto L%d;\0A\00", align 1
@.str.10 = private unnamed_addr constant [77 x i8] c"  PATTERN (ins1) = gen_rtx_PARALLEL (VOIDmode, gen_rtvec_v (%d, operands));\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"  INSN_CODE (ins1) = %d;\0A\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"  delete_for_peephole (NEXT_INSN (ins1), insn);\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"  return NEXT_INSN (insn);\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c" L%d:\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @gen_peephole to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_peephole(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @XVECLEN(i32 %5, i32 0)
  store i32 %6, i32* %3, align 4
  store i32 0, i32* @n_operands, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %32, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @insn_code_number, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %17)
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  %23 = load i32, i32* @insn_code_number, align 4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %15, %12
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @XVECEXP(i32 %27, i32 0, i32 %28)
  %30 = load i32, i32* @insn_code_number, align 4
  %31 = call i32 @match_rtx(i32 %29, i32* null, i32 %30)
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %8

35:                                               ; preds = %8
  %36 = load i32, i32* %2, align 4
  %37 = call i8* @XSTR(i32 %36, i32 1)
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load i32, i32* %2, align 4
  %41 = call i8* @XSTR(i32 %40, i32 1)
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load i32, i32* %2, align 4
  %48 = call i8* @XSTR(i32 %47, i32 1)
  %49 = load i32, i32* @insn_code_number, align 4
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %39, %35
  %52 = load i32, i32* @n_operands, align 4
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.10, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @insn_code_number, align 4
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %3, align 4
  %57 = icmp sgt i32 %56, 1
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %51
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0))
  %62 = load i32, i32* @insn_code_number, align 4
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %62)
  ret void
}

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @match_rtx(i32, i32*, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i8* @XSTR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
