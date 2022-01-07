; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-vis.c_print_rtl_slim_with_bb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_sched-vis.c_print_rtl_slim_with_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TDF_BLOCKS = common dso_local global i32 0, align 4
@NOTE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c";; \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_rtl_slim_with_bb(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %9 = load i32*, i32** %5, align 8
  store i32* %9, i32** %8, align 8
  br label %10

10:                                               ; preds = %63, %3
  %11 = load i32*, i32** %8, align 8
  %12 = icmp ne i32* null, %11
  br i1 %12, label %13, label %66

13:                                               ; preds = %10
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @TDF_BLOCKS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %13
  %19 = load i32*, i32** %8, align 8
  %20 = call i64 @INSN_P(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load i32*, i32** %8, align 8
  %24 = call i64 @GET_CODE(i32* %23)
  %25 = load i64, i64* @NOTE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %22, %18
  %28 = load i32*, i32** %8, align 8
  %29 = call i32* @BLOCK_FOR_INSN(i32* %28)
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load i32*, i32** %7, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = load i32*, i32** %8, align 8
  %36 = call i32* @BLOCK_FOR_INSN(i32* %35)
  store i32* %36, i32** %7, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @dump_bb_info(i32* %37, i32 1, i32 0, i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %39)
  br label %41

41:                                               ; preds = %34, %31, %27, %22, %13
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @dump_insn_slim(i32* %42, i32* %43)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @TDF_BLOCKS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %41
  %50 = load i32*, i32** %7, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %7, align 8
  %55 = call i32* @BB_END(i32* %54)
  %56 = icmp eq i32* %53, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @dump_bb_info(i32* %58, i32 0, i32 1, i32 %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %60)
  store i32* null, i32** %7, align 8
  br label %62

62:                                               ; preds = %57, %52, %49, %41
  br label %63

63:                                               ; preds = %62
  %64 = load i32*, i32** %8, align 8
  %65 = call i32* @NEXT_INSN(i32* %64)
  store i32* %65, i32** %8, align 8
  br label %10

66:                                               ; preds = %10
  ret void
}

declare dso_local i64 @INSN_P(i32*) #1

declare dso_local i64 @GET_CODE(i32*) #1

declare dso_local i32* @BLOCK_FOR_INSN(i32*) #1

declare dso_local i32 @dump_bb_info(i32*, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @dump_insn_slim(i32*, i32*) #1

declare dso_local i32* @BB_END(i32*) #1

declare dso_local i32* @NEXT_INSN(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
