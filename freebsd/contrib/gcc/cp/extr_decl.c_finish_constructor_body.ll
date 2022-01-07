; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_finish_constructor_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_finish_constructor_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (...)* }

@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@LABEL_EXPR = common dso_local global i32 0, align 4
@cdtor_label = common dso_local global i32 0, align 4
@current_function_decl = common dso_local global i32 0, align 4
@MODIFY_EXPR = common dso_local global i32 0, align 4
@RETURN_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @finish_constructor_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_constructor_body() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64 (...)*, i64 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 8
  %4 = call i64 (...) %3()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %0
  %7 = load i32, i32* @LABEL_EXPR, align 4
  %8 = load i32, i32* @cdtor_label, align 4
  %9 = call i32 @build_stmt(i32 %7, i32 %8)
  %10 = call i32 @add_stmt(i32 %9)
  %11 = load i32, i32* @current_function_decl, align 4
  %12 = call i32 @DECL_ARGUMENTS(i32 %11)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* @MODIFY_EXPR, align 4
  %14 = load i32, i32* %1, align 4
  %15 = call i32 @TREE_TYPE(i32 %14)
  %16 = load i32, i32* @current_function_decl, align 4
  %17 = call i32 @DECL_RESULT(i32 %16)
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @build2(i32 %13, i32 %15, i32 %17, i32 %18)
  store i32 %19, i32* %1, align 4
  %20 = load i32, i32* @RETURN_EXPR, align 4
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @build_stmt(i32 %20, i32 %21)
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @add_stmt(i32 %23)
  br label %25

25:                                               ; preds = %6, %0
  ret void
}

declare dso_local i32 @add_stmt(i32) #1

declare dso_local i32 @build_stmt(i32, i32) #1

declare dso_local i32 @DECL_ARGUMENTS(i32) #1

declare dso_local i32 @build2(i32, i32, i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @DECL_RESULT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
