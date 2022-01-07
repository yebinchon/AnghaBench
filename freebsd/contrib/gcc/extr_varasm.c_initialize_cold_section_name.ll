; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_initialize_cold_section_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_initialize_cold_section_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i8* (i8*)* }

@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@current_function_decl = common dso_local global i64 0, align 8
@flag_function_sections = common dso_local global i64 0, align 8
@targetm = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"_unlikely\00", align 1
@UNLIKELY_EXECUTED_TEXT_SECTION_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @initialize_cold_section_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_cold_section_name() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i64, i64* @current_function_decl, align 8
  %9 = icmp ne i64 %8, 0
  br label %10

10:                                               ; preds = %7, %0
  %11 = phi i1 [ false, %0 ], [ %9, %7 ]
  %12 = zext i1 %11 to i32
  %13 = call i32 @gcc_assert(i32 %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %52

19:                                               ; preds = %10
  %20 = load i64, i64* @current_function_decl, align 8
  %21 = call i64 @DECL_SECTION_NAME(i64 %20)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* @flag_function_sections, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %19
  %25 = load i64, i64* %4, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @TREE_STRING_LENGTH(i64 %28)
  %30 = add nsw i64 %29, 1
  %31 = call i8* @alloca(i64 %30)
  store i8* %31, i8** %2, align 8
  %32 = load i8*, i8** %2, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @TREE_STRING_POINTER(i64 %33)
  %35 = load i64, i64* %4, align 8
  %36 = call i64 @TREE_STRING_LENGTH(i64 %35)
  %37 = add nsw i64 %36, 1
  %38 = call i32 @memcpy(i8* %32, i32 %34, i64 %37)
  %39 = load i8* (i8*)*, i8* (i8*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @targetm, i32 0, i32 0), align 8
  %40 = load i8*, i8** %2, align 8
  %41 = call i8* %39(i8* %40)
  store i8* %41, i8** %1, align 8
  %42 = load i8*, i8** %1, align 8
  %43 = call i8* @ACONCAT(i8* null)
  store i8* %43, i8** %3, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = call i64 @ggc_strdup(i8* %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %52

48:                                               ; preds = %24, %19
  %49 = load i64, i64* @UNLIKELY_EXECUTED_TEXT_SECTION_NAME, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %18, %48, %27
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @DECL_SECTION_NAME(i64) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i64 @TREE_STRING_LENGTH(i64) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @TREE_STRING_POINTER(i64) #1

declare dso_local i8* @ACONCAT(i8*) #1

declare dso_local i64 @ggc_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
