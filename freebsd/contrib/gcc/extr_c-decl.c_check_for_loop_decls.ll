; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_check_for_loop_decls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_check_for_loop_decls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.c_binding* }
%struct.c_binding = type { i32, i32, %struct.c_binding* }

@NULL_TREE = common dso_local global i32 0, align 4
@flag_isoc99 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"%<for%> loop initial declaration used outside C99 mode\00", align 1
@current_scope = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [72 x i8] c"declaration of static variable %q+D in %<for%> loop initial declaration\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"declaration of %<extern%> variable %q+D in %<for%> loop initial declaration\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"%<struct %E%> declared in %<for%> loop initial declaration\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"%<union %E%> declared in %<for%> loop initial declaration\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"%<enum %E%> declared in %<for%> loop initial declaration\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"declaration of non-variable %q+D in %<for%> loop initial declaration\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_for_loop_decls() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.c_binding*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @NULL_TREE, align 4
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* @flag_isoc99, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @NULL_TREE, align 4
  store i32 %12, i32* %1, align 4
  br label %84

13:                                               ; preds = %0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_scope, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.c_binding*, %struct.c_binding** %15, align 8
  store %struct.c_binding* %16, %struct.c_binding** %2, align 8
  br label %17

17:                                               ; preds = %71, %13
  %18 = load %struct.c_binding*, %struct.c_binding** %2, align 8
  %19 = icmp ne %struct.c_binding* %18, null
  br i1 %19, label %20, label %75

20:                                               ; preds = %17
  %21 = load %struct.c_binding*, %struct.c_binding** %2, align 8
  %22 = getelementptr inbounds %struct.c_binding, %struct.c_binding* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load %struct.c_binding*, %struct.c_binding** %2, align 8
  %25 = getelementptr inbounds %struct.c_binding, %struct.c_binding* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %71

30:                                               ; preds = %20
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @TREE_CODE(i32 %31)
  switch i32 %32, label %64 [
    i32 128, label %33
    i32 130, label %49
    i32 129, label %52
    i32 132, label %55
    i32 131, label %58
  ]

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @TREE_STATIC(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %48

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @DECL_EXTERNAL(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %40
  br label %48

48:                                               ; preds = %47, %37
  br label %67

49:                                               ; preds = %30
  %50 = load i32, i32* %5, align 4
  %51 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %67

52:                                               ; preds = %30
  %53 = load i32, i32* %5, align 4
  %54 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  br label %67

55:                                               ; preds = %30
  %56 = load i32, i32* %5, align 4
  %57 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  br label %67

58:                                               ; preds = %30
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @BLOCK_SYNTHESIZED_FUNC(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %67

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %30, %63
  %65 = load i32, i32* %6, align 4
  %66 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %64, %62, %55, %52, %49, %48
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %29
  %72 = load %struct.c_binding*, %struct.c_binding** %2, align 8
  %73 = getelementptr inbounds %struct.c_binding, %struct.c_binding* %72, i32 0, i32 2
  %74 = load %struct.c_binding*, %struct.c_binding** %73, align 8
  store %struct.c_binding* %74, %struct.c_binding** %2, align 8
  br label %17

75:                                               ; preds = %17
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* %3, align 4
  br label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @NULL_TREE, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  store i32 %83, i32* %1, align 4
  br label %84

84:                                               ; preds = %82, %10
  %85 = load i32, i32* %1, align 4
  ret i32 %85
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_STATIC(i32) #1

declare dso_local i32 @DECL_EXTERNAL(i32) #1

declare dso_local i32 @BLOCK_SYNTHESIZED_FUNC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
