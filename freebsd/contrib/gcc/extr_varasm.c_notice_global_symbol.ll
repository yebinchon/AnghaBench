; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_notice_global_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_notice_global_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* (i32)* }

@first_global_object_name = common dso_local global i8* null, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@weak_global_object_name = common dso_local global i8* null, align 8
@targetm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @notice_global_symbol(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i8** @first_global_object_name, i8*** %3, align 8
  %7 = load i8*, i8** @first_global_object_name, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %49, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @TREE_PUBLIC(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %49

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = call i64 @DECL_EXTERNAL(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %49, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @DECL_NAME(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %17
  %22 = load i32, i32* %2, align 4
  %23 = call i64 @TREE_CODE(i32 %22)
  %24 = load i64, i64* @FUNCTION_DECL, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %21
  %27 = load i32, i32* %2, align 4
  %28 = call i64 @TREE_CODE(i32 %27)
  %29 = load i64, i64* @VAR_DECL, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %49, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %2, align 4
  %33 = call i64 @DECL_COMMON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i32, i32* %2, align 4
  %37 = call i64 @DECL_INITIAL(i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %2, align 4
  %41 = call i64 @DECL_INITIAL(i32 %40)
  %42 = load i64, i64* @error_mark_node, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %49, label %44

44:                                               ; preds = %39, %31, %21
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @DECL_RTL(i32 %45)
  %47 = call i32 @MEM_P(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44, %39, %35, %26, %17, %13, %9, %1
  br label %75

50:                                               ; preds = %44
  %51 = load i32, i32* %2, align 4
  %52 = call i64 @DECL_WEAK(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %2, align 4
  %56 = call i64 @DECL_ONE_ONLY(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %50
  store i8** @weak_global_object_name, i8*** %3, align 8
  br label %59

59:                                               ; preds = %58, %54
  %60 = load i8**, i8*** %3, align 8
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %75, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %2, align 4
  %65 = call i32 @DECL_RTL(i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i8* (i32)*, i8* (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @targetm, i32 0, i32 0), align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @XEXP(i32 %67, i32 0)
  %69 = call i32 @XSTR(i32 %68, i32 0)
  %70 = call i8* %66(i32 %69)
  store i8* %70, i8** %4, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = call i8* @ggc_strdup(i8* %71)
  store i8* %72, i8** %5, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load i8**, i8*** %3, align 8
  store i8* %73, i8** %74, align 8
  br label %75

75:                                               ; preds = %49, %63, %59
  ret void
}

declare dso_local i32 @TREE_PUBLIC(i32) #1

declare dso_local i64 @DECL_EXTERNAL(i32) #1

declare dso_local i32 @DECL_NAME(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @DECL_COMMON(i32) #1

declare dso_local i64 @DECL_INITIAL(i32) #1

declare dso_local i32 @MEM_P(i32) #1

declare dso_local i32 @DECL_RTL(i32) #1

declare dso_local i64 @DECL_WEAK(i32) #1

declare dso_local i64 @DECL_ONE_ONLY(i32) #1

declare dso_local i32 @XSTR(i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i8* @ggc_strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
