; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_unshare_all_rtl_again.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_unshare_all_rtl_again.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@cfun = common dso_local global %struct.TYPE_2__* null, align 8
@stack_slot_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unshare_all_rtl_again(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  store i64 %5, i64* %3, align 8
  br label %6

6:                                                ; preds = %24, %1
  %7 = load i64, i64* %3, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @INSN_P(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @PATTERN(i64 %14)
  %16 = call i32 @reset_used_flags(i32 %15)
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @REG_NOTES(i64 %17)
  %19 = call i32 @reset_used_flags(i32 %18)
  %20 = load i64, i64* %3, align 8
  %21 = call i32 @LOG_LINKS(i64 %20)
  %22 = call i32 @reset_used_flags(i32 %21)
  br label %23

23:                                               ; preds = %13, %9
  br label %24

24:                                               ; preds = %23
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @NEXT_INSN(i64 %25)
  store i64 %26, i64* %3, align 8
  br label %6

27:                                               ; preds = %6
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfun, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @DECL_INITIAL(i32 %30)
  %32 = call i32 @reset_used_decls(i32 %31)
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfun, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @DECL_ARGUMENTS(i32 %35)
  store i64 %36, i64* %4, align 8
  br label %37

37:                                               ; preds = %44, %27
  %38 = load i64, i64* %4, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @DECL_RTL(i64 %41)
  %43 = call i32 @reset_used_flags(i32 %42)
  br label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %4, align 8
  %46 = call i64 @TREE_CHAIN(i64 %45)
  store i64 %46, i64* %4, align 8
  br label %37

47:                                               ; preds = %37
  %48 = load i32, i32* @stack_slot_list, align 4
  %49 = call i32 @reset_used_flags(i32 %48)
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfun, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %2, align 8
  %54 = call i32 @unshare_all_rtl_1(i32 %52, i64 %53)
  ret void
}

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i32 @reset_used_flags(i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i32 @REG_NOTES(i64) #1

declare dso_local i32 @LOG_LINKS(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i32 @reset_used_decls(i32) #1

declare dso_local i32 @DECL_INITIAL(i32) #1

declare dso_local i64 @DECL_ARGUMENTS(i32) #1

declare dso_local i32 @DECL_RTL(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @unshare_all_rtl_1(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
