; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_exp_macro_ldst_abs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_exp_macro_ldst_abs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.score_it = type { i32 }

@MAX_LITERAL_POOL_SIZE = common dso_local global i32 0, align 4
@nor1 = common dso_local global i32 0, align 4
@inst = common dso_local global %struct.score_it zeroinitializer, align 4
@REG_TYPE_SCORE = common dso_local global i32 0, align 4
@FAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"li r1  %s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c" r%d, [r1,0]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @exp_macro_ldst_abs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exp_macro_ldst_abs(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.score_it, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i32, i32* @MAX_LITERAL_POOL_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* @MAX_LITERAL_POOL_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* @nor1, align 4
  store i32 %19, i32* %10, align 4
  store i32 0, i32* @nor1, align 4
  %20 = call i32 @memcpy(%struct.score_it* %9, %struct.score_it* @inst, i32 4)
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @strcpy(i8* %18, i8* %21)
  store i8* %18, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @skip_whitespace(i8* %23)
  %25 = load i32, i32* @REG_TYPE_SCORE, align 4
  %26 = call i32 @reg_required_here(i8** %4, i32 -1, i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i64, i64* @FAIL, align 8
  %28 = trunc i64 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  store i32 1, i32* %11, align 4
  br label %49

31:                                               ; preds = %1
  %32 = load i8*, i8** %4, align 8
  store i8* %32, i8** %5, align 8
  %33 = call i32 @skip_past_comma(i8** %4)
  %34 = load i64, i64* @FAIL, align 8
  %35 = trunc i64 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 1, i32* %11, align 4
  br label %49

38:                                               ; preds = %31
  %39 = load i8*, i8** %5, align 8
  store i8* %39, i8** %4, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 (i8*, i8*, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* @TRUE, align 4
  %43 = call i32 @append_insn(i8* %15, i32 %42)
  %44 = call i32 @memcpy(%struct.score_it* @inst, %struct.score_it* %9, i32 4)
  %45 = load i32, i32* %3, align 4
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = call i32 @do_ldst_insn(i8* %15)
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* @nor1, align 4
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %38, %37, %30
  %50 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load i32, i32* %11, align 4
  switch i32 %51, label %53 [
    i32 0, label %52
    i32 1, label %52
  ]

52:                                               ; preds = %49, %49
  ret void

53:                                               ; preds = %49
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(%struct.score_it*, %struct.score_it*, i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @skip_whitespace(i8*) #2

declare dso_local i32 @reg_required_here(i8**, i32, i32) #2

declare dso_local i32 @skip_past_comma(i8**) #2

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i32 @append_insn(i8*, i32) #2

declare dso_local i32 @do_ldst_insn(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
