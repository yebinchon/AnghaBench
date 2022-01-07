; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_output_addr_const_extra.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_s390_output_addr_const_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNSPEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"@GOTENT\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"@GOT\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"@GOTOFF\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"@PLT\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"@PLTOFF\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"@TLSGD\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"@TLSLDM\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"@DTPOFF\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"@NTPOFF\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"@GOTNTPOFF\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"@INDNTPOFF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s390_output_addr_const_extra(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @GET_CODE(i32 %6)
  %8 = load i64, i64* @UNSPEC, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %94

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @XVECLEN(i32 %11, i32 0)
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %94

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @XINT(i32 %15, i32 1)
  switch i32 %16, label %93 [
    i32 136, label %17
    i32 137, label %24
    i32 134, label %31
    i32 131, label %38
    i32 130, label %45
    i32 129, label %52
    i32 128, label %59
    i32 138, label %65
    i32 132, label %72
    i32 135, label %79
    i32 133, label %86
  ]

17:                                               ; preds = %14
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @XVECEXP(i32 %19, i32 0, i32 0)
  %21 = call i32 @output_addr_const(i32* %18, i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @fprintf(i32* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %95

24:                                               ; preds = %14
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @XVECEXP(i32 %26, i32 0, i32 0)
  %28 = call i32 @output_addr_const(i32* %25, i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @fprintf(i32* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %95

31:                                               ; preds = %14
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @XVECEXP(i32 %33, i32 0, i32 0)
  %35 = call i32 @output_addr_const(i32* %32, i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @fprintf(i32* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %95

38:                                               ; preds = %14
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @XVECEXP(i32 %40, i32 0, i32 0)
  %42 = call i32 @output_addr_const(i32* %39, i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @fprintf(i32* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %95

45:                                               ; preds = %14
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @XVECEXP(i32 %47, i32 0, i32 0)
  %49 = call i32 @output_addr_const(i32* %46, i32 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = call i32 @fprintf(i32* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %95

52:                                               ; preds = %14
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @XVECEXP(i32 %54, i32 0, i32 0)
  %56 = call i32 @output_addr_const(i32* %53, i32 %55)
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @fprintf(i32* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %95

59:                                               ; preds = %14
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 (...) @get_some_local_dynamic_name()
  %62 = call i32 @assemble_name(i32* %60, i32 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @fprintf(i32* %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %95

65:                                               ; preds = %14
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @XVECEXP(i32 %67, i32 0, i32 0)
  %69 = call i32 @output_addr_const(i32* %66, i32 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @fprintf(i32* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %95

72:                                               ; preds = %14
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @XVECEXP(i32 %74, i32 0, i32 0)
  %76 = call i32 @output_addr_const(i32* %73, i32 %75)
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @fprintf(i32* %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %95

79:                                               ; preds = %14
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @XVECEXP(i32 %81, i32 0, i32 0)
  %83 = call i32 @output_addr_const(i32* %80, i32 %82)
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @fprintf(i32* %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %95

86:                                               ; preds = %14
  %87 = load i32*, i32** %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @XVECEXP(i32 %88, i32 0, i32 0)
  %90 = call i32 @output_addr_const(i32* %87, i32 %89)
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @fprintf(i32* %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %95

93:                                               ; preds = %14
  br label %94

94:                                               ; preds = %93, %10, %2
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %86, %79, %72, %65, %59, %52, %45, %38, %31, %24, %17
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XINT(i32, i32) #1

declare dso_local i32 @output_addr_const(i32*, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @assemble_name(i32*, i32) #1

declare dso_local i32 @get_some_local_dynamic_name(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
