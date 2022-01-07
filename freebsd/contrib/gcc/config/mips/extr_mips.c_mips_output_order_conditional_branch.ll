; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_output_order_conditional_branch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_output_order_conditional_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"bne\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%2,%.,%1\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"beq\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%.,%.,%1\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"b%C0z\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%2,%1\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"b%N0z\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mips_output_order_conditional_branch(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i8*], align 16
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @GET_CODE(i32 %10)
  switch i32 %11, label %46 [
    i32 129, label %12
    i32 130, label %17
    i32 128, label %29
    i32 131, label %34
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %3, %12
  %18 = call i8* @MIPS_BRANCH(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 %23
  store i8* %18, i8** %24, align 8
  %25 = call i8* @MIPS_BRANCH(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 %27
  store i8* %25, i8** %28, align 8
  br label %58

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %3, %29
  %35 = call i8* @MIPS_BRANCH(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 %40
  store i8* %35, i8** %41, align 8
  %42 = call i8* @MIPS_BRANCH(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 %44
  store i8* %42, i8** %45, align 8
  br label %58

46:                                               ; preds = %3
  %47 = call i8* @MIPS_BRANCH(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 %52
  store i8* %47, i8** %53, align 8
  %54 = call i8* @MIPS_BRANCH(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 %56
  store i8* %54, i8** %57, align 8
  br label %58

58:                                               ; preds = %46, %34, %17
  %59 = load i32, i32* %4, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %64 = load i8*, i8** %63, align 16
  %65 = call i8* @mips_output_conditional_branch(i32 %59, i32* %60, i8* %62, i8* %64)
  ret i8* %65
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i8* @MIPS_BRANCH(i8*, i8*) #1

declare dso_local i8* @mips_output_conditional_branch(i32, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
