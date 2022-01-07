; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfglayout.c_reemit_insn_block_notes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfglayout.c_reemit_insn_block_notes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@cfun = common dso_local global %struct.TYPE_2__* null, align 8
@ADDR_VEC = common dso_local global i64 0, align 8
@ADDR_DIFF_VEC = common dso_local global i64 0, align 8
@SEQUENCE = common dso_local global i64 0, align 8
@NOTE_INSN_DELETED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reemit_insn_block_notes() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfun, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32* @DECL_INITIAL(i32 %9)
  store i32* %10, i32** %1, align 8
  %11 = call i64 (...) @get_insns()
  store i64 %11, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @active_insn_p(i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %0
  %16 = load i64, i64* %2, align 8
  %17 = call i64 @next_active_insn(i64 %16)
  store i64 %17, i64* %2, align 8
  br label %18

18:                                               ; preds = %15, %0
  br label %19

19:                                               ; preds = %81, %18
  %20 = load i64, i64* %2, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %84

22:                                               ; preds = %19
  %23 = load i64, i64* %2, align 8
  %24 = call i64 @JUMP_P(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load i64, i64* %2, align 8
  %28 = call i64 @PATTERN(i64 %27)
  %29 = call i64 @GET_CODE(i64 %28)
  %30 = load i64, i64* @ADDR_VEC, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load i64, i64* %2, align 8
  %34 = call i64 @PATTERN(i64 %33)
  %35 = call i64 @GET_CODE(i64 %34)
  %36 = load i64, i64* @ADDR_DIFF_VEC, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %26
  br label %81

39:                                               ; preds = %32, %22
  %40 = load i64, i64* %2, align 8
  %41 = call i32* @insn_scope(i64 %40)
  store i32* %41, i32** %4, align 8
  %42 = load i64, i64* %2, align 8
  %43 = call i64 @PATTERN(i64 %42)
  %44 = call i64 @GET_CODE(i64 %43)
  %45 = load i64, i64* @SEQUENCE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %39
  %48 = load i64, i64* %2, align 8
  %49 = call i64 @PATTERN(i64 %48)
  store i64 %49, i64* %6, align 8
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %62, %47
  %51 = load i32, i32* %5, align 4
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @XVECLEN(i64 %52, i32 0)
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %50
  %56 = load i32*, i32** %4, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @XVECEXP(i64 %57, i32 0, i32 %58)
  %60 = call i32* @insn_scope(i64 %59)
  %61 = call i32* @choose_inner_scope(i32* %56, i32* %60)
  store i32* %61, i32** %4, align 8
  br label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %50

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65, %39
  %67 = load i32*, i32** %4, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  br label %81

70:                                               ; preds = %66
  %71 = load i32*, i32** %4, align 8
  %72 = load i32*, i32** %1, align 8
  %73 = icmp ne i32* %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i64, i64* %2, align 8
  %76 = load i32*, i32** %1, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @change_scope(i64 %75, i32* %76, i32* %77)
  %79 = load i32*, i32** %4, align 8
  store i32* %79, i32** %1, align 8
  br label %80

80:                                               ; preds = %74, %70
  br label %81

81:                                               ; preds = %80, %69, %38
  %82 = load i64, i64* %2, align 8
  %83 = call i64 @next_active_insn(i64 %82)
  store i64 %83, i64* %2, align 8
  br label %19

84:                                               ; preds = %19
  %85 = load i32, i32* @NOTE_INSN_DELETED, align 4
  %86 = call i64 @emit_note(i32 %85)
  store i64 %86, i64* %3, align 8
  %87 = load i64, i64* %3, align 8
  %88 = load i32*, i32** %1, align 8
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfun, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32* @DECL_INITIAL(i32 %91)
  %93 = call i32 @change_scope(i64 %87, i32* %88, i32* %92)
  %94 = load i64, i64* %3, align 8
  %95 = call i32 @delete_insn(i64 %94)
  %96 = call i32 (...) @reorder_blocks()
  ret void
}

declare dso_local i32* @DECL_INITIAL(i32) #1

declare dso_local i64 @get_insns(...) #1

declare dso_local i32 @active_insn_p(i64) #1

declare dso_local i64 @next_active_insn(i64) #1

declare dso_local i64 @JUMP_P(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i32* @insn_scope(i64) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i32* @choose_inner_scope(i32*, i32*) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i32 @change_scope(i64, i32*, i32*) #1

declare dso_local i64 @emit_note(i32) #1

declare dso_local i32 @delete_insn(i64) #1

declare dso_local i32 @reorder_blocks(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
