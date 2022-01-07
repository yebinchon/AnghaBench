; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_maybe_warn_string_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-typeck.c_maybe_warn_string_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_expr = type { i64, i32 }

@pedantic = common dso_local global i64 0, align 8
@ARRAY_TYPE = common dso_local global i64 0, align 8
@STRING_CST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"array initialized from parenthesized string constant\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @maybe_warn_string_init(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.c_expr, align 8
  %5 = alloca i32, align 4
  %6 = bitcast %struct.c_expr* %4 to { i64, i32 }*
  %7 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  store i64 %1, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  store i32 %2, i32* %8, align 8
  store i32 %0, i32* %5, align 4
  %9 = load i64, i64* @pedantic, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @TREE_CODE(i32 %12)
  %14 = load i64, i64* @ARRAY_TYPE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %4, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @TREE_CODE(i32 %18)
  %20 = load i64, i64* @STRING_CST, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.c_expr, %struct.c_expr* %4, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @STRING_CST, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = call i32 @pedwarn_init(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22, %16, %11, %3
  ret void
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @pedwarn_init(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
