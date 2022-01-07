; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_is_store_insn1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_is_store_insn1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@PARALLEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @is_store_insn1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_store_insn1(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @NULL_RTX, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %1
  store i32 0, i32* %2, align 4
  br label %45

12:                                               ; preds = %7
  %13 = load i64, i64* %3, align 8
  %14 = call i64 @GET_CODE(i64 %13)
  %15 = load i64, i64* @SET, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @SET_DEST(i64 %18)
  %20 = call i32 @is_mem_ref(i32 %19)
  store i32 %20, i32* %2, align 4
  br label %45

21:                                               ; preds = %12
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @GET_CODE(i64 %22)
  %24 = load i64, i64* @PARALLEL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %40, %26
  %28 = load i32, i32* %4, align 4
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @XVECLEN(i64 %29, i32 0)
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load i64, i64* %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @XVECEXP(i64 %33, i32 0, i32 %34)
  %36 = call i32 @is_store_insn1(i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  br label %45

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %27

43:                                               ; preds = %27
  br label %44

44:                                               ; preds = %43, %21
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %38, %17, %11
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @is_mem_ref(i32) #1

declare dso_local i32 @SET_DEST(i64) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
