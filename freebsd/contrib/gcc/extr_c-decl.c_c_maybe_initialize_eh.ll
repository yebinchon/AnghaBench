; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_c_maybe_initialize_eh.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_c_maybe_initialize_eh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_exceptions = common dso_local global i32 0, align 4
@c_eh_initialized_p = common dso_local global i32 0, align 4
@USING_SJLJ_EXCEPTIONS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"__gcc_personality_sj0\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"__gcc_personality_v0\00", align 1
@eh_personality_libfunc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_maybe_initialize_eh() #0 {
  %1 = load i32, i32* @flag_exceptions, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, i32* @c_eh_initialized_p, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3, %0
  br label %15

7:                                                ; preds = %3
  store i32 1, i32* @c_eh_initialized_p, align 4
  %8 = load i64, i64* @USING_SJLJ_EXCEPTIONS, align 8
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)
  %12 = call i32 @init_one_libfunc(i8* %11)
  store i32 %12, i32* @eh_personality_libfunc, align 4
  %13 = call i32 (...) @default_init_unwind_resume_libfunc()
  %14 = call i32 (...) @using_eh_for_cleanups()
  br label %15

15:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @init_one_libfunc(i8*) #1

declare dso_local i32 @default_init_unwind_resume_libfunc(...) #1

declare dso_local i32 @using_eh_for_cleanups(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
