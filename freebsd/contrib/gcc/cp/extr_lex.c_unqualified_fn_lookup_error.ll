; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_lex.c_unqualified_fn_lookup_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_lex.c_unqualified_fn_lookup_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@processing_template_decl = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [109 x i8] c"there are no arguments to %qD that depend on a template parameter, so a declaration of %qD must be available\00", align 1
@flag_permissive = common dso_local global i32 0, align 4
@unqualified_fn_lookup_error.hint = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [115 x i8] c"(if you use %<-fpermissive%>, G++ will accept your code, but allowing the use of an undeclared name is deprecated)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unqualified_fn_lookup_error(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i64, i64* @processing_template_decl, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @pedwarn(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8)
  %10 = load i32, i32* @flag_permissive, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %6
  %13 = load i32, i32* @unqualified_fn_lookup_error.hint, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = call i32 @error(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @unqualified_fn_lookup_error.hint, align 4
  br label %17

17:                                               ; preds = %15, %12
  br label %18

18:                                               ; preds = %17, %6
  %19 = load i32, i32* %3, align 4
  store i32 %19, i32* %2, align 4
  br label %23

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @unqualified_name_lookup_error(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %20, %18
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @pedwarn(i8*, i32, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @unqualified_name_lookup_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
