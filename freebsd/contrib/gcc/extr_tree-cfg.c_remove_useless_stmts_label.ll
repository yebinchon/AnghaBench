; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_remove_useless_stmts_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_remove_useless_stmts_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rus_data = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, %struct.rus_data*)* @remove_useless_stmts_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_useless_stmts_label(i64* %0, %struct.rus_data* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.rus_data*, align 8
  %5 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store %struct.rus_data* %1, %struct.rus_data** %4, align 8
  %6 = load i64*, i64** %3, align 8
  %7 = load i64, i64* %6, align 8
  %8 = call i64 @LABEL_EXPR_LABEL(i64 %7)
  store i64 %8, i64* %5, align 8
  %9 = load %struct.rus_data*, %struct.rus_data** %4, align 8
  %10 = getelementptr inbounds %struct.rus_data, %struct.rus_data* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @DECL_NONLOCAL(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.rus_data*, %struct.rus_data** %4, align 8
  %16 = getelementptr inbounds %struct.rus_data, %struct.rus_data* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  br label %38

17:                                               ; preds = %2
  %18 = load %struct.rus_data*, %struct.rus_data** %4, align 8
  %19 = getelementptr inbounds %struct.rus_data, %struct.rus_data* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load %struct.rus_data*, %struct.rus_data** %4, align 8
  %24 = getelementptr inbounds %struct.rus_data, %struct.rus_data* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @GOTO_DESTINATION(i32 %26)
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = call i32 (...) @build_empty_stmt()
  %32 = load %struct.rus_data*, %struct.rus_data** %4, align 8
  %33 = getelementptr inbounds %struct.rus_data, %struct.rus_data* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  store i32 %31, i32* %34, align 4
  %35 = load %struct.rus_data*, %struct.rus_data** %4, align 8
  %36 = getelementptr inbounds %struct.rus_data, %struct.rus_data* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %30, %22, %17
  br label %38

38:                                               ; preds = %37, %14
  ret void
}

declare dso_local i64 @LABEL_EXPR_LABEL(i64) #1

declare dso_local i64 @DECL_NONLOCAL(i64) #1

declare dso_local i64 @GOTO_DESTINATION(i32) #1

declare dso_local i32 @build_empty_stmt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
