; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopanal.c_num_loop_insns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopanal.c_num_loop_insns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @num_loop_insns(%struct.loop* %0) #0 {
  %2 = alloca %struct.loop*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.loop* %0, %struct.loop** %2, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.loop*, %struct.loop** %2, align 8
  %9 = call i32* @get_loop_body(%struct.loop* %8)
  store i32* %9, i32** %3, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %43, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.loop*, %struct.loop** %2, align 8
  %13 = getelementptr inbounds %struct.loop, %struct.loop* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %10
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @BB_HEAD(i32 %24)
  store i64 %25, i64* %7, align 8
  br label %26

26:                                               ; preds = %39, %16
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @BB_END(i32 %28)
  %30 = icmp ne i64 %27, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @INSN_P(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %35, %31
  br label %39

39:                                               ; preds = %38
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @NEXT_INSN(i64 %40)
  store i64 %41, i64* %7, align 8
  br label %26

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %10

46:                                               ; preds = %10
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @free(i32* %47)
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32* @get_loop_body(%struct.loop*) #1

declare dso_local i64 @BB_HEAD(i32) #1

declare dso_local i64 @BB_END(i32) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
