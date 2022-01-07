; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_emit_stm_seq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_emit_stm_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"stm%?ia\09\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"stm%?ib\09\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"stm%?da\09\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"stm%?db\09\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%s%s, {%s%s\00", align 1
@REGISTER_PREFIX = common dso_local global i8* null, align 8
@reg_names = common dso_local global i8** null, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c", %s%s\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"}\09%@ phole stm\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @emit_stm_seq(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [100 x i8], align 16
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %13 = call i32 @store_multiple_sequence(i32* %10, i32 %11, i32* %12, i32* %6, i32* %7)
  switch i32 %13, label %26 [
    i32 1, label %14
    i32 2, label %17
    i32 3, label %20
    i32 4, label %23
  ]

14:                                               ; preds = %2
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %16 = call i32 @strcpy(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %28

17:                                               ; preds = %2
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %19 = call i32 @strcpy(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %28

20:                                               ; preds = %2
  %21 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %22 = call i32 @strcpy(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %28

23:                                               ; preds = %2
  %24 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %25 = call i32 @strcpy(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %28

26:                                               ; preds = %2
  %27 = call i32 (...) @gcc_unreachable()
  br label %28

28:                                               ; preds = %26, %23, %20, %17, %14
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %31 = call i32 @strlen(i8* %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  %34 = load i8*, i8** @REGISTER_PREFIX, align 8
  %35 = load i8**, i8*** @reg_names, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** @REGISTER_PREFIX, align 8
  %41 = load i8**, i8*** @reg_names, align 8
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %43 = load i32, i32* %42, align 16
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %41, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %34, i8* %39, i8* %40, i8* %46)
  store i32 1, i32* %9, align 4
  br label %48

48:                                               ; preds = %68, %28
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %48
  %53 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %54 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %55 = call i32 @strlen(i8* %54)
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  %58 = load i8*, i8** @REGISTER_PREFIX, align 8
  %59 = load i8**, i8*** @reg_names, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %59, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %58, i8* %66)
  br label %68

68:                                               ; preds = %52
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %48

71:                                               ; preds = %48
  %72 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %73 = call i32 @strcat(i8* %72, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %74 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @output_asm_insn(i8* %74, i32* %75)
  ret i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
}

declare dso_local i32 @store_multiple_sequence(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @output_asm_insn(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
