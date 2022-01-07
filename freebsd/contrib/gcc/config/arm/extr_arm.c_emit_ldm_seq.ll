; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_emit_ldm_seq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_emit_ldm_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"ldm%?ia\09\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ldm%?ib\09\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ldm%?da\09\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ldm%?db\09\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"add%%?\09%s%s, %s%s, #%ld\00", align 1
@REGISTER_PREFIX = common dso_local global i8* null, align 8
@reg_names = common dso_local global i8** null, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"sub%%?\09%s%s, %s%s, #%ld\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"%s%s, {%s%s\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c", %s%s\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"}\09%@ phole ldm\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @emit_ldm_seq(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [100 x i8], align 16
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %13 = call i32 @load_multiple_sequence(i32* %10, i32 %11, i32* %12, i32* %6, i64* %7)
  switch i32 %13, label %72 [
    i32 1, label %14
    i32 2, label %17
    i32 3, label %20
    i32 4, label %23
    i32 5, label %26
  ]

14:                                               ; preds = %2
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %16 = call i32 @strcpy(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %74

17:                                               ; preds = %2
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %19 = call i32 @strcpy(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %74

20:                                               ; preds = %2
  %21 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %22 = call i32 @strcpy(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %74

23:                                               ; preds = %2
  %24 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %25 = call i32 @strcpy(i8* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %74

26:                                               ; preds = %2
  %27 = load i64, i64* %7, align 8
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %31 = load i8*, i8** @REGISTER_PREFIX, align 8
  %32 = load i8**, i8*** @reg_names, align 8
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %34 = load i32, i32* %33, align 16
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %32, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** @REGISTER_PREFIX, align 8
  %39 = load i8**, i8*** @reg_names, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %31, i8* %37, i8* %38, i8* %43, i64 %44)
  br label %64

46:                                               ; preds = %26
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %48 = load i8*, i8** @REGISTER_PREFIX, align 8
  %49 = load i8**, i8*** @reg_names, align 8
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %51 = load i32, i32* %50, align 16
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %49, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = load i8*, i8** @REGISTER_PREFIX, align 8
  %56 = load i8**, i8*** @reg_names, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = sub nsw i64 0, %61
  %63 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %48, i8* %54, i8* %55, i8* %60, i64 %62)
  br label %64

64:                                               ; preds = %46, %29
  %65 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %66 = load i32*, i32** %3, align 8
  %67 = call i32 @output_asm_insn(i8* %65, i32* %66)
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %69 = load i32, i32* %68, align 16
  store i32 %69, i32* %6, align 4
  %70 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %71 = call i32 @strcpy(i8* %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %74

72:                                               ; preds = %2
  %73 = call i32 (...) @gcc_unreachable()
  br label %74

74:                                               ; preds = %72, %64, %23, %20, %17, %14
  %75 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %76 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %77 = call i32 @strlen(i8* %76)
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %75, i64 %78
  %80 = load i8*, i8** @REGISTER_PREFIX, align 8
  %81 = load i8**, i8*** @reg_names, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = load i8*, i8** @REGISTER_PREFIX, align 8
  %87 = load i8**, i8*** @reg_names, align 8
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %89 = load i32, i32* %88, align 16
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %87, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %80, i8* %85, i8* %86, i8* %92)
  store i32 1, i32* %9, align 4
  br label %94

94:                                               ; preds = %114, %74
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %117

98:                                               ; preds = %94
  %99 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %100 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %101 = call i32 @strlen(i8* %100)
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  %104 = load i8*, i8** @REGISTER_PREFIX, align 8
  %105 = load i8**, i8*** @reg_names, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %105, i64 %110
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 (i8*, i8*, i8*, i8*, ...) @sprintf(i8* %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* %104, i8* %112)
  br label %114

114:                                              ; preds = %98
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %94

117:                                              ; preds = %94
  %118 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %119 = call i32 @strcat(i8* %118, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %120 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @output_asm_insn(i8* %120, i32* %121)
  ret i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)
}

declare dso_local i32 @load_multiple_sequence(i32*, i32, i32*, i32*, i64*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @output_asm_insn(i8*, i32*) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
