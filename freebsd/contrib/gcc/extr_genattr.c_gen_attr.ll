; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattr.c_gen_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattr.c_gen_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"#define HAVE_ATTR_%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"extern int get_attr_%s (%s);\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"rtx\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"enum attr_%s {\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c", \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"extern enum attr_%s get_attr_%s (%s);\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.9 = private unnamed_addr constant [212 x i8] c"extern void shorten_branches (rtx);\0Aextern int insn_default_length (rtx);\0Aextern int insn_min_length (rtx);\0Aextern int insn_variable_length_p (rtx);\0Aextern int insn_current_length (rtx);\0A\0A#include \22insn-addr.h\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @gen_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_attr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @XEXP(i32 %6, i32 2)
  %8 = call i64 @GET_CODE(i32 %7)
  %9 = load i64, i64* @CONST, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i8* @XSTR(i32 %12, i32 0)
  %14 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* %2, align 4
  %16 = call i8* @XSTR(i32 %15, i32 1)
  store i8* %16, i8** %3, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load i32, i32* %2, align 4
  %23 = call i8* @XSTR(i32 %22, i32 0)
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %28 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %23, i8* %27)
  br label %73

29:                                               ; preds = %1
  %30 = load i32, i32* %2, align 4
  %31 = call i8* @XSTR(i32 %30, i32 0)
  %32 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %60, %29
  %34 = call i8* @scan_comma_elt(i8** %3)
  store i8* %34, i8** %4, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %61

36:                                               ; preds = %33
  %37 = load i32, i32* %2, align 4
  %38 = call i8* @XSTR(i32 %37, i32 0)
  %39 = call i32 @write_upcase(i8* %38)
  %40 = call i32 @putchar(i8 signext 95)
  br label %41

41:                                               ; preds = %45, %36
  %42 = load i8*, i8** %4, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = icmp ne i8* %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %4, align 8
  %48 = load i8, i8* %46, align 1
  %49 = sext i8 %48 to i32
  %50 = call signext i8 @TOUPPER(i32 %49)
  %51 = call i32 @putchar(i8 signext %50)
  br label %41

52:                                               ; preds = %41
  %53 = load i8*, i8** %3, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 44
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @stdout, align 4
  %59 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %57, %52
  br label %33

61:                                               ; preds = %33
  %62 = load i32, i32* @stdout, align 4
  %63 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %2, align 4
  %65 = call i8* @XSTR(i32 %64, i32 0)
  %66 = load i32, i32* %2, align 4
  %67 = call i8* @XSTR(i32 %66, i32 0)
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %72 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* %65, i8* %67, i8* %71)
  br label %73

73:                                               ; preds = %61, %21
  %74 = load i32, i32* %2, align 4
  %75 = call i8* @XSTR(i32 %74, i32 0)
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = call i32 @puts(i8* getelementptr inbounds ([212 x i8], [212 x i8]* @.str.9, i64 0, i64 0))
  br label %80

80:                                               ; preds = %78, %73
  ret void
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @XSTR(i32, i32) #1

declare dso_local i8* @scan_comma_elt(i8**) #1

declare dso_local i32 @write_upcase(i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local signext i8 @TOUPPER(i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @puts(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
