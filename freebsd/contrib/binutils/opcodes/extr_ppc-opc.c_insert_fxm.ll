; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ppc-opc.c_insert_fxm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_ppc-opc.c_insert_fxm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"invalid mask field\00", align 1
@PPC_OPCODE_POWER4 = common dso_local global i32 0, align 4
@PPC_OPCODE_ANY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ignoring invalid mfcr mask\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32, i8**)* @insert_fxm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @insert_fxm(i64 %0, i64 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %9 = load i64, i64* %5, align 8
  %10 = and i64 %9, 1048576
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %4
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = sub nsw i64 0, %17
  %19 = and i64 %16, %18
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %15, %12
  %23 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %24 = load i8**, i8*** %8, align 8
  store i8* %23, i8** %24, align 8
  store i64 0, i64* %6, align 8
  br label %25

25:                                               ; preds = %22, %15
  br label %64

26:                                               ; preds = %4
  %27 = load i64, i64* %6, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %63

30:                                               ; preds = %26
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = sub nsw i64 0, %32
  %34 = and i64 %31, %33
  %35 = load i64, i64* %6, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %30
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @PPC_OPCODE_POWER4, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @PPC_OPCODE_ANY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load i64, i64* %5, align 8
  %49 = and i64 %48, 2046
  %50 = icmp eq i64 %49, 38
  br i1 %50, label %51, label %54

51:                                               ; preds = %47, %37
  %52 = load i64, i64* %5, align 8
  %53 = or i64 %52, 1048576
  store i64 %53, i64* %5, align 8
  br label %62

54:                                               ; preds = %47, %42, %30
  %55 = load i64, i64* %5, align 8
  %56 = and i64 %55, 2046
  %57 = icmp eq i64 %56, 38
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i8**, i8*** %8, align 8
  store i8* %59, i8** %60, align 8
  store i64 0, i64* %6, align 8
  br label %61

61:                                               ; preds = %58, %54
  br label %62

62:                                               ; preds = %61, %51
  br label %63

63:                                               ; preds = %62, %29
  br label %64

64:                                               ; preds = %63, %25
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = and i64 %66, 255
  %68 = shl i64 %67, 12
  %69 = or i64 %65, %68
  ret i64 %69
}

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
