; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genflags.c_gen_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genflags.c_gen_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_id_len = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"#define HAVE_%s 1\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"#define HAVE_%s (\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" \\\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@obstack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @gen_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_insn(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i8* @XSTR(i32 %7, i32 0)
  store i8* %8, i8** %3, align 8
  %9 = load i32, i32* %2, align 4
  %10 = call i8* @XSTR(i32 %9, i32 2)
  %11 = call i32 @maybe_eval_c_test(i8* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 42
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %1
  br label %73

24:                                               ; preds = %17
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @strlen(i8* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @max_id_len, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* @max_id_len, align 4
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %71

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i8*, i8** %3, align 8
  %41 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %40)
  br label %70

42:                                               ; preds = %36
  %43 = load i8*, i8** %3, align 8
  %44 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* %2, align 4
  %46 = call i8* @XSTR(i32 %45, i32 2)
  store i8* %46, i8** %4, align 8
  br label %47

47:                                               ; preds = %64, %42
  %48 = load i8*, i8** %4, align 8
  %49 = load i8, i8* %48, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = load i8*, i8** %4, align 8
  %53 = load i8, i8* %52, align 1
  %54 = call i64 @IS_VSPACE(i8 signext %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @stdout, align 4
  %58 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %63

59:                                               ; preds = %51
  %60 = load i8*, i8** %4, align 8
  %61 = load i8, i8* %60, align 1
  %62 = call i32 @putchar(i8 signext %61)
  br label %63

63:                                               ; preds = %59, %56
  br label %64

64:                                               ; preds = %63
  %65 = load i8*, i8** %4, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %4, align 8
  br label %47

67:                                               ; preds = %47
  %68 = load i32, i32* @stdout, align 4
  %69 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %67, %39
  br label %71

71:                                               ; preds = %70, %35
  %72 = call i32 @obstack_grow(i32* @obstack, i32* %2, i32 4)
  br label %73

73:                                               ; preds = %71, %23
  ret void
}

declare dso_local i8* @XSTR(i32, i32) #1

declare dso_local i32 @maybe_eval_c_test(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @IS_VSPACE(i8 signext) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @obstack_grow(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
