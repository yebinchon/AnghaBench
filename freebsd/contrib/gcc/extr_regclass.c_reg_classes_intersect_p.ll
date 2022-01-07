; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regclass.c_reg_classes_intersect_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regclass.c_reg_classes_intersect_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ALL_REGS = common dso_local global i32 0, align 4
@reg_class_contents = common dso_local global i32* null, align 8
@NO_REGS = common dso_local global i64 0, align 8
@lose = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reg_classes_intersect_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %45

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @ALL_REGS, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ALL_REGS, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %11
  store i32 1, i32* %3, align 4
  br label %45

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = load i32*, i32** @reg_class_contents, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @COPY_HARD_REG_SET(i32 %21, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = load i32*, i32** @reg_class_contents, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @AND_HARD_REG_SET(i32 %28, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32*, i32** @reg_class_contents, align 8
  %37 = load i64, i64* @NO_REGS, align 8
  %38 = trunc i64 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @lose, align 4
  %43 = call i32 @GO_IF_HARD_REG_SUBSET(i32 %35, i32 %41, i32 %42)
  store i32 1, i32* %3, align 4
  br label %45

44:                                               ; No predecessors!
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %20, %19, %10
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @COPY_HARD_REG_SET(i32, i32) #1

declare dso_local i32 @AND_HARD_REG_SET(i32, i32) #1

declare dso_local i32 @GO_IF_HARD_REG_SUBSET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
