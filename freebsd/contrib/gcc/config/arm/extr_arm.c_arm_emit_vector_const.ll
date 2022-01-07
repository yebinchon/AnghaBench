; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_emit_vector_const.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_emit_vector_const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONST_VECTOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%04x\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"0x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arm_emit_vector_const(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @GET_CODE(i32 %8)
  %10 = load i64, i64* @CONST_VECTOR, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @gcc_assert(i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @GET_MODE(i32 %14)
  switch i32 %15, label %19 [
    i32 130, label %16
    i32 129, label %17
    i32 128, label %18
  ]

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %21

17:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %21

18:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %21

19:                                               ; preds = %2
  %20 = call i32 (...) @gcc_unreachable()
  br label %21

21:                                               ; preds = %19, %18, %17, %16
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 (i32*, i8*, ...) @fprintf(i32* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @CONST_VECTOR_NUNITS(i32 %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %30, %21
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %5, align 4
  %29 = icmp ne i32 %27, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @CONST_VECTOR_ELT(i32 %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @INTVAL(i32 %36)
  %38 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* %35, i32 %37)
  br label %26

39:                                               ; preds = %26
  ret i32 1
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @CONST_VECTOR_NUNITS(i32) #1

declare dso_local i32 @CONST_VECTOR_ELT(i32, i32) #1

declare dso_local i32 @INTVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
