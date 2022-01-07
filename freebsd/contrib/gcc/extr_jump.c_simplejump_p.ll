; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_jump.c_simplejump_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_jump.c_simplejump_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SET = common dso_local global i64 0, align 8
@PC = common dso_local global i64 0, align 8
@LABEL_REF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @simplejump_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i64 @JUMP_P(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @PATTERN(i32 %7)
  %9 = call i64 @GET_CODE(i32 %8)
  %10 = load i64, i64* @SET, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %6
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @PATTERN(i32 %13)
  %15 = call i32 @SET_DEST(i32 %14)
  %16 = call i64 @GET_CODE(i32 %15)
  %17 = load i64, i64* @PC, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @PATTERN(i32 %20)
  %22 = call i32 @SET_SRC(i32 %21)
  %23 = call i64 @GET_CODE(i32 %22)
  %24 = load i64, i64* @LABEL_REF, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %19, %12, %6, %1
  %27 = phi i1 [ false, %12 ], [ false, %6 ], [ false, %1 ], [ %25, %19 ]
  %28 = zext i1 %27 to i32
  ret i32 %28
}

declare dso_local i64 @JUMP_P(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i32 @SET_SRC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
