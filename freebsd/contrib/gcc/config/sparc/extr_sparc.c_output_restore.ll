; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_output_restore.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_output_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"\09 restore\0A\00", align 1
@asm_out_file = common dso_local global i32 0, align 4
@SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c" restore %r1, %2, %Y0\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c" restore %r1, %%lo(%a2), %Y0\00", align 1
@const1_rtx = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c" restore %r1, %r1, %Y0\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c" restore %%g0, %1, %Y0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @output_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_restore(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca [3 x i64], align 16
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* @asm_out_file, align 4
  %8 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %7)
  br label %58

9:                                                ; preds = %1
  %10 = load i64, i64* %2, align 8
  %11 = call i32 @GET_CODE(i64 %10)
  %12 = load i32, i32* @SET, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @gcc_assert(i32 %14)
  %16 = load i64, i64* %2, align 8
  %17 = call i64 @SET_DEST(i64 %16)
  %18 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 0
  store i64 %17, i64* %18, align 16
  %19 = load i64, i64* %2, align 8
  %20 = call i64 @SET_SRC(i64 %19)
  store i64 %20, i64* %2, align 8
  %21 = load i64, i64* %2, align 8
  %22 = call i32 @GET_CODE(i64 %21)
  switch i32 %22, label %53 [
    i32 128, label %23
    i32 129, label %32
    i32 130, label %41
  ]

23:                                               ; preds = %9
  %24 = load i64, i64* %2, align 8
  %25 = call i64 @XEXP(i64 %24, i32 0)
  %26 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 1
  store i64 %25, i64* %26, align 8
  %27 = load i64, i64* %2, align 8
  %28 = call i64 @XEXP(i64 %27, i32 1)
  %29 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 2
  store i64 %28, i64* %29, align 16
  %30 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 0
  %31 = call i32 @output_asm_insn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64* %30)
  br label %58

32:                                               ; preds = %9
  %33 = load i64, i64* %2, align 8
  %34 = call i64 @XEXP(i64 %33, i32 0)
  %35 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 1
  store i64 %34, i64* %35, align 8
  %36 = load i64, i64* %2, align 8
  %37 = call i64 @XEXP(i64 %36, i32 1)
  %38 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 2
  store i64 %37, i64* %38, align 16
  %39 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 0
  %40 = call i32 @output_asm_insn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64* %39)
  br label %58

41:                                               ; preds = %9
  %42 = load i64, i64* %2, align 8
  %43 = call i64 @XEXP(i64 %42, i32 0)
  %44 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 1
  store i64 %43, i64* %44, align 8
  %45 = load i64, i64* %2, align 8
  %46 = call i64 @XEXP(i64 %45, i32 1)
  %47 = load i64, i64* @const1_rtx, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @gcc_assert(i32 %49)
  %51 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 0
  %52 = call i32 @output_asm_insn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64* %51)
  br label %58

53:                                               ; preds = %9
  %54 = load i64, i64* %2, align 8
  %55 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 1
  store i64 %54, i64* %55, align 8
  %56 = getelementptr inbounds [3 x i64], [3 x i64]* %3, i64 0, i64 0
  %57 = call i32 @output_asm_insn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64* %56)
  br label %58

58:                                               ; preds = %6, %53, %41, %32, %23
  ret void
}

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @output_asm_insn(i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
