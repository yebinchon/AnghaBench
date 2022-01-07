; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_dump_simple_decl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_dump_simple_decl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TFF_DECL_SPECIFIERS = common dso_local global i32 0, align 4
@cxx_pp = common dso_local global i32 0, align 4
@TEMPLATE_PARM_INDEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"<anonymous>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @dump_simple_decl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_simple_decl(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @TFF_DECL_SPECIFIERS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @dump_type_prefix(i32 %12, i32 %13)
  %15 = load i32, i32* @cxx_pp, align 4
  %16 = call i32 @pp_maybe_space(i32 %15)
  br label %17

17:                                               ; preds = %11, %3
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @DECL_INITIAL(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @DECL_INITIAL(i32 %22)
  %24 = call i64 @TREE_CODE(i32 %23)
  %25 = load i64, i64* @TEMPLATE_PARM_INDEX, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21, %17
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @CP_DECL_CONTEXT(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @dump_scope(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %27, %21
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @DECL_NAME(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @DECL_NAME(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @dump_decl(i64 %38, i32 %39)
  br label %44

41:                                               ; preds = %32
  %42 = load i32, i32* @cxx_pp, align 4
  %43 = call i32 @pp_identifier(i32 %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @TFF_DECL_SPECIFIERS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @dump_type_suffix(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %44
  ret void
}

declare dso_local i32 @dump_type_prefix(i32, i32) #1

declare dso_local i32 @pp_maybe_space(i32) #1

declare dso_local i32 @DECL_INITIAL(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @dump_scope(i32, i32) #1

declare dso_local i32 @CP_DECL_CONTEXT(i32) #1

declare dso_local i64 @DECL_NAME(i32) #1

declare dso_local i32 @dump_decl(i64, i32) #1

declare dso_local i32 @pp_identifier(i32, i8*) #1

declare dso_local i32 @dump_type_suffix(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
