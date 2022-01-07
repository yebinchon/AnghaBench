; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfglayout.c_duplicate_insn_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfglayout.c_duplicate_insn_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADDR_VEC = common dso_local global i32 0, align 4
@ADDR_DIFF_VEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @duplicate_insn_chain(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = call i64 @emit_note(i32 135)
  store i64 %7, i64* %6, align 8
  %8 = load i64, i64* %3, align 8
  store i64 %8, i64* %5, align 8
  br label %9

9:                                                ; preds = %56, %2
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @NEXT_INSN(i64 %11)
  %13 = icmp ne i64 %10, %12
  br i1 %13, label %14, label %59

14:                                               ; preds = %9
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @GET_CODE(i64 %15)
  switch i32 %16, label %53 [
    i32 139, label %17
    i32 141, label %17
    i32 138, label %17
    i32 140, label %34
    i32 142, label %35
    i32 137, label %37
  ]

17:                                               ; preds = %14, %14, %14
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @PATTERN(i64 %18)
  %20 = call i32 @GET_CODE(i64 %19)
  %21 = load i32, i32* @ADDR_VEC, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @PATTERN(i64 %24)
  %26 = call i32 @GET_CODE(i64 %25)
  %27 = load i32, i32* @ADDR_DIFF_VEC, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %17
  br label %55

30:                                               ; preds = %23
  %31 = load i64, i64* %5, align 8
  %32 = call i32 (...) @get_last_insn()
  %33 = call i32 @emit_copy_of_insn_after(i64 %31, i32 %32)
  br label %55

34:                                               ; preds = %14
  br label %55

35:                                               ; preds = %14
  %36 = call i32 (...) @emit_barrier()
  br label %55

37:                                               ; preds = %14
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @NOTE_LINE_NUMBER(i64 %38)
  switch i32 %39, label %44 [
    i32 130, label %40
    i32 135, label %40
    i32 134, label %40
    i32 133, label %40
    i32 131, label %40
    i32 132, label %40
    i32 136, label %40
    i32 129, label %41
    i32 128, label %41
  ]

40:                                               ; preds = %37, %37, %37, %37, %37, %37, %37
  br label %52

41:                                               ; preds = %37, %37
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @emit_note_copy(i64 %42)
  br label %52

44:                                               ; preds = %37
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @NOTE_LINE_NUMBER(i64 %45)
  %47 = icmp sge i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @gcc_assert(i32 %48)
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @emit_note_copy(i64 %50)
  br label %52

52:                                               ; preds = %44, %41, %40
  br label %55

53:                                               ; preds = %14
  %54 = call i32 (...) @gcc_unreachable()
  br label %55

55:                                               ; preds = %53, %52, %35, %34, %30, %29
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %5, align 8
  %58 = call i64 @NEXT_INSN(i64 %57)
  store i64 %58, i64* %5, align 8
  br label %9

59:                                               ; preds = %9
  %60 = load i64, i64* %6, align 8
  %61 = call i64 @NEXT_INSN(i64 %60)
  store i64 %61, i64* %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @delete_insn(i64 %62)
  %64 = load i64, i64* %5, align 8
  ret i64 %64
}

declare dso_local i64 @emit_note(i32) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i32 @emit_copy_of_insn_after(i64, i32) #1

declare dso_local i32 @get_last_insn(...) #1

declare dso_local i32 @emit_barrier(...) #1

declare dso_local i32 @NOTE_LINE_NUMBER(i64) #1

declare dso_local i32 @emit_note_copy(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @delete_insn(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
