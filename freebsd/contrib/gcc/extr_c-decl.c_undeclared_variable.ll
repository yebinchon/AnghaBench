; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_undeclared_variable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_undeclared_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_scope = type { i32 }

@undeclared_variable.already = internal global i32 0, align 4
@current_function_decl = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"%H%qE undeclared here (not in a function)\00", align 1
@current_scope = common dso_local global %struct.c_scope* null, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"%H%qE undeclared (first use in this function)\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"%H(Each undeclared identifier is reported only once\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%Hfor each function it appears in.)\00", align 1
@current_function_scope = common dso_local global %struct.c_scope* null, align 8
@error_mark_node = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @undeclared_variable(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.c_scope*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @current_function_decl, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 (i8*, i32*, ...) @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32* %4, i8* %9)
  %11 = load %struct.c_scope*, %struct.c_scope** @current_scope, align 8
  store %struct.c_scope* %11, %struct.c_scope** %5, align 8
  br label %29

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 (i8*, i32*, ...) @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32* %4, i8* %13)
  %15 = load i32, i32* @undeclared_variable.already, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = call i32 (i8*, i32*, ...) @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32* %4)
  %19 = call i32 (i8*, i32*, ...) @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32* %4)
  store i32 1, i32* @undeclared_variable.already, align 4
  br label %20

20:                                               ; preds = %17, %12
  %21 = load %struct.c_scope*, %struct.c_scope** @current_function_scope, align 8
  %22 = icmp ne %struct.c_scope* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load %struct.c_scope*, %struct.c_scope** @current_function_scope, align 8
  br label %27

25:                                               ; preds = %20
  %26 = load %struct.c_scope*, %struct.c_scope** @current_scope, align 8
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi %struct.c_scope* [ %24, %23 ], [ %26, %25 ]
  store %struct.c_scope* %28, %struct.c_scope** %5, align 8
  br label %29

29:                                               ; preds = %27, %8
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* @error_mark_node, align 4
  %32 = load %struct.c_scope*, %struct.c_scope** %5, align 8
  %33 = call i32 @bind(i8* %30, i32 %31, %struct.c_scope* %32, i32 0, i32 0)
  ret void
}

declare dso_local i32 @error(i8*, i32*, ...) #1

declare dso_local i32 @bind(i8*, i32, %struct.c_scope*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
