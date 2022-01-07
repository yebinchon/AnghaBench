; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_start_fname_decls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_start_fname_decls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8** }

@NULL_TREE = common dso_local global i8* null, align 8
@fname_vars = common dso_local global %struct.TYPE_2__* null, align 8
@saved_function_name_decls = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_fname_decls() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = load i8*, i8** @NULL_TREE, align 8
  store i8* %4, i8** %2, align 8
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %38, %0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fname_vars, align 8
  %7 = load i32, i32* %1, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i8**, i8*** %10, align 8
  %12 = icmp ne i8** %11, null
  br i1 %12, label %13, label %41

13:                                               ; preds = %5
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fname_vars, align 8
  %15 = load i32, i32* %1, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %3, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %13
  %24 = load i8*, i8** %3, align 8
  %25 = load i8*, i8** @NULL_TREE, align 8
  %26 = load i32, i32* %1, align 4
  %27 = call i8* @build_int_cst(i8* %25, i32 %26)
  %28 = load i8*, i8** %2, align 8
  %29 = call i8* @tree_cons(i8* %24, i8* %27, i8* %28)
  store i8* %29, i8** %2, align 8
  %30 = load i8*, i8** @NULL_TREE, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fname_vars, align 8
  %32 = load i32, i32* %1, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i8**, i8*** %35, align 8
  store i8* %30, i8** %36, align 8
  br label %37

37:                                               ; preds = %23, %13
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %1, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %1, align 4
  br label %5

41:                                               ; preds = %5
  %42 = load i8*, i8** %2, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** @saved_function_name_decls, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44, %41
  %48 = load i8*, i8** %2, align 8
  %49 = load i8*, i8** @NULL_TREE, align 8
  %50 = load i8*, i8** @saved_function_name_decls, align 8
  %51 = call i8* @tree_cons(i8* %48, i8* %49, i8* %50)
  store i8* %51, i8** @saved_function_name_decls, align 8
  br label %52

52:                                               ; preds = %47, %44
  ret void
}

declare dso_local i8* @tree_cons(i8*, i8*, i8*) #1

declare dso_local i8* @build_int_cst(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
