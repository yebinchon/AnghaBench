; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_reserv_sets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_output_reserv_sets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_cycles_num = common dso_local global i32 0, align 4
@els_in_cycle_reserv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @output_reserv_sets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_reserv_sets(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %60, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @max_cycles_num, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %63

12:                                               ; preds = %8
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %5, align 4
  br label %59

19:                                               ; preds = %12
  %20 = load i64, i64* %4, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @els_in_cycle_reserv, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = getelementptr inbounds i8, i8* %21, i64 %26
  %28 = load i64, i64* %4, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @els_in_cycle_reserv, align 4
  %32 = mul nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = getelementptr inbounds i8, i8* %29, i64 %34
  %36 = load i32, i32* @els_in_cycle_reserv, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = call i64 @memcmp(i8* %27, i8* %35, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %19
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %58

45:                                               ; preds = %19
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @fprintf(i32* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32*, i32** %3, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @output_cycle_reservs(i32* %52, i64 %53, i32 %54, i32 %55)
  store i32 1, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %51, %42
  br label %59

59:                                               ; preds = %58, %15
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %8

63:                                               ; preds = %8
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @max_cycles_num, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32*, i32** %3, align 8
  %72 = call i32 @fprintf(i32* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32*, i32** %3, align 8
  %75 = load i64, i64* %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @output_cycle_reservs(i32* %74, i64 %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %73, %63
  ret void
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @output_cycle_reservs(i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
