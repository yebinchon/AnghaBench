; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_assemble_integer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_assemble_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_SIZE = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@TARGET_NO_PIC = common dso_local global i64 0, align 8
@TARGET_AUTO_PIC = common dso_local global i64 0, align 8
@SYMBOL_REF = common dso_local global i64 0, align 8
@ia64_assemble_integer.directive = internal constant [2 x [2 x i8*]] [[2 x i8*] [i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0)]], align 16
@.str = private unnamed_addr constant [17 x i8] c"\09data8.ua\09@fptr(\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\09data4.ua\09@fptr(\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"\09data8\09@fptr(\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"\09data4\09@fptr(\00", align 1
@asm_out_file = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ia64_assemble_integer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ia64_assemble_integer(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @POINTER_SIZE, align 4
  %10 = load i32, i32* @BITS_PER_UNIT, align 4
  %11 = udiv i32 %9, %10
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %47

13:                                               ; preds = %3
  %14 = load i64, i64* @TARGET_NO_PIC, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %47, label %16

16:                                               ; preds = %13
  %17 = load i64, i64* @TARGET_AUTO_PIC, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %47, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @GET_CODE(i32 %20)
  %22 = load i64, i64* @SYMBOL_REF, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @SYMBOL_REF_FUNCTION_P(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [2 x [2 x i8*]], [2 x [2 x i8*]]* @ia64_assemble_integer.directive, i64 0, i64 %32
  %34 = load i32, i32* @POINTER_SIZE, align 4
  %35 = icmp eq i32 %34, 32
  %36 = zext i1 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [2 x i8*], [2 x i8*]* %33, i64 0, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* @asm_out_file, align 4
  %41 = call i32 @fputs(i8* %39, i32 %40)
  %42 = load i32, i32* @asm_out_file, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @output_addr_const(i32 %42, i32 %43)
  %45 = load i32, i32* @asm_out_file, align 4
  %46 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  store i32 1, i32* %4, align 4
  br label %52

47:                                               ; preds = %24, %19, %16, %13, %3
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @default_assemble_integer(i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %47, %28
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @SYMBOL_REF_FUNCTION_P(i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @output_addr_const(i32, i32) #1

declare dso_local i32 @default_assemble_integer(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
