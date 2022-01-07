; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_print_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_print_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HOST_WIDE_INT_PRINT_HEX = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"<0x%lx,0x%lx>\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"`%s'\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"L%d\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"pc\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"????\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @arm_print_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_print_value(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @GET_CODE(i32 %6)
  switch i32 %7, label %84 [
    i32 134, label %8
    i32 135, label %14
    i32 132, label %21
    i32 133, label %52
    i32 128, label %57
    i32 131, label %62
    i32 136, label %68
    i32 129, label %72
    i32 130, label %81
  ]

8:                                                ; preds = %2
  %9 = load i32*, i32** %3, align 8
  %10 = load i8*, i8** @HOST_WIDE_INT_PRINT_HEX, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @INTVAL(i32 %11)
  %13 = call i32 (i32*, i8*, ...) @fprintf(i32* %9, i8* %10, i32 %12)
  br label %87

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @XWINT(i32 %16, i32 2)
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @XWINT(i32 %18, i32 3)
  %20 = call i32 (i32*, i8*, ...) @fprintf(i32* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %17, i64 %19)
  br label %87

21:                                               ; preds = %2
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %46, %21
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @CONST_VECTOR_NUNITS(i32 %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %24
  %30 = load i32*, i32** %3, align 8
  %31 = load i8*, i8** @HOST_WIDE_INT_PRINT_HEX, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @CONST_VECTOR_ELT(i32 %32, i32 %33)
  %35 = call i32 @INTVAL(i32 %34)
  %36 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* %31, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @CONST_VECTOR_NUNITS(i32 %38)
  %40 = sub nsw i32 %39, 1
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %29
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @fputc(i8 signext 44, i32* %43)
  br label %45

45:                                               ; preds = %42, %29
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %24

49:                                               ; preds = %24
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %87

52:                                               ; preds = %2
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i8* @XSTR(i32 %54, i32 0)
  %56 = call i32 (i32*, i8*, ...) @fprintf(i32* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %55)
  br label %87

57:                                               ; preds = %2
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i8* @XSTR(i32 %59, i32 0)
  %61 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %60)
  br label %87

62:                                               ; preds = %2
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @XEXP(i32 %64, i32 0)
  %66 = call i32 @INSN_UID(i32 %65)
  %67 = call i32 (i32*, i8*, ...) @fprintf(i32* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %66)
  br label %87

68:                                               ; preds = %2
  %69 = load i32*, i32** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @XEXP(i32 %70, i32 0)
  call void @arm_print_value(i32* %69, i32 %71)
  br label %87

72:                                               ; preds = %2
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @XEXP(i32 %74, i32 0)
  call void @arm_print_value(i32* %73, i32 %75)
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 (i32*, i8*, ...) @fprintf(i32* %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @XEXP(i32 %79, i32 1)
  call void @arm_print_value(i32* %78, i32 %80)
  br label %87

81:                                               ; preds = %2
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 (i32*, i8*, ...) @fprintf(i32* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %87

84:                                               ; preds = %2
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 (i32*, i8*, ...) @fprintf(i32* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %81, %72, %68, %62, %57, %52, %49, %14, %8
  ret void
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i64 @XWINT(i32, i32) #1

declare dso_local i32 @CONST_VECTOR_NUNITS(i32) #1

declare dso_local i32 @CONST_VECTOR_ELT(i32, i32) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i8* @XSTR(i32, i32) #1

declare dso_local i32 @INSN_UID(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
