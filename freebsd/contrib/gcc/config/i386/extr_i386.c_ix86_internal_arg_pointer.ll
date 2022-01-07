; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_internal_arg_pointer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_internal_arg_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ix86_force_align_arg_pointer_string = common dso_local global i32 0, align 4
@current_function_decl = common dso_local global i32 0, align 4
@FORCE_PREFERRED_STACK_BOUNDARY_IN_MAIN = common dso_local global i64 0, align 8
@ix86_force_align_arg_pointer = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"-mstackrealign ignored for nested functions\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"%s not supported for nested functions\00", align 1
@virtual_incoming_args_rtx = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4
@cfun = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ix86_internal_arg_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ix86_internal_arg_pointer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @ix86_force_align_arg_pointer_string, align 4
  %4 = load i32, i32* @current_function_decl, align 4
  %5 = call i32 @TREE_TYPE(i32 %4)
  %6 = call i32 @TYPE_ATTRIBUTES(i32 %5)
  %7 = call i64 @lookup_attribute(i32 %3, i32 %6)
  %8 = icmp ne i64 0, %7
  %9 = zext i1 %8 to i32
  store i32 %9, i32* %2, align 4
  %10 = load i64, i64* @FORCE_PREFERRED_STACK_BOUNDARY_IN_MAIN, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %0
  %13 = load i32, i32* @current_function_decl, align 4
  %14 = call i64 @DECL_NAME(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load i32, i32* @current_function_decl, align 4
  %18 = call i64 @DECL_NAME(i32 %17)
  %19 = call i64 @MAIN_NAME_P(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @current_function_decl, align 4
  %23 = call i64 @DECL_FILE_SCOPE_P(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21, %16, %12, %0
  %26 = load i64, i64* @ix86_force_align_arg_pointer, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %2, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %67

31:                                               ; preds = %28, %25, %21
  %32 = load i32, i32* @current_function_decl, align 4
  %33 = call i64 @DECL_CONTEXT(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = load i32, i32* @current_function_decl, align 4
  %37 = call i64 @DECL_CONTEXT(i32 %36)
  %38 = call i64 @TREE_CODE(i64 %37)
  %39 = load i64, i64* @FUNCTION_DECL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = load i64, i64* @ix86_force_align_arg_pointer, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 @warning(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32, i32* %2, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @ix86_force_align_arg_pointer_string, align 4
  %51 = call i32 @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* @virtual_incoming_args_rtx, align 4
  store i32 %53, i32* %1, align 4
  br label %69

54:                                               ; preds = %35, %31
  %55 = load i32, i32* @Pmode, align 4
  %56 = call i32 @gen_rtx_REG(i32 %55, i32 2)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cfun, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @copy_to_reg(i32 %65)
  store i32 %66, i32* %1, align 4
  br label %69

67:                                               ; preds = %28
  %68 = load i32, i32* @virtual_incoming_args_rtx, align 4
  store i32 %68, i32* %1, align 4
  br label %69

69:                                               ; preds = %67, %54, %52
  %70 = load i32, i32* %1, align 4
  ret i32 %70
}

declare dso_local i64 @lookup_attribute(i32, i32) #1

declare dso_local i32 @TYPE_ATTRIBUTES(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @DECL_NAME(i32) #1

declare dso_local i64 @MAIN_NAME_P(i64) #1

declare dso_local i64 @DECL_FILE_SCOPE_P(i32) #1

declare dso_local i64 @DECL_CONTEXT(i32) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

declare dso_local i32 @copy_to_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
