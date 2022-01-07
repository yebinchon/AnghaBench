; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genpreds.c_write_predicate_stmts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genpreds.c_write_predicate_stmts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [67 x i8] c"      return true;\0A    default:\0A      break;\0A    }\0A  return false;\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"      break;\0A    default:\0A      return false;\0A    }\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"      return true;\0A    default:\0A      break;\0A    }\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"      return false;\0A    default:\0A      break;\0A    }\0A  return true;\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"  return \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @write_predicate_stmts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_predicate_stmts(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @GET_CODE(i32 %3)
  switch i32 %4, label %51 [
    i32 129, label %5
    i32 131, label %14
    i32 130, label %27
    i32 128, label %40
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @generate_switch_p(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @write_match_code_switch(i32 %10)
  %12 = call i32 @puts(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  br label %59

13:                                               ; preds = %5
  br label %52

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @XEXP(i32 %15, i32 0)
  %17 = call i32 @generate_switch_p(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @XEXP(i32 %20, i32 0)
  %22 = call i32 @write_match_code_switch(i32 %21)
  %23 = call i32 @puts(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @XEXP(i32 %24, i32 1)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %19, %14
  br label %52

27:                                               ; preds = %1
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @XEXP(i32 %28, i32 0)
  %30 = call i32 @generate_switch_p(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @XEXP(i32 %33, i32 0)
  %35 = call i32 @write_match_code_switch(i32 %34)
  %36 = call i32 @puts(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @XEXP(i32 %37, i32 1)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %32, %27
  br label %52

40:                                               ; preds = %1
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @XEXP(i32 %41, i32 0)
  %43 = call i32 @generate_switch_p(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @XEXP(i32 %46, i32 0)
  %48 = call i32 @write_match_code_switch(i32 %47)
  %49 = call i32 @puts(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0))
  br label %59

50:                                               ; preds = %40
  br label %52

51:                                               ; preds = %1
  br label %52

52:                                               ; preds = %51, %50, %39, %26, %13
  %53 = load i32, i32* @stdout, align 4
  %54 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @write_predicate_expr(i32 %55)
  %57 = load i32, i32* @stdout, align 4
  %58 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %52, %45, %9
  ret void
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @generate_switch_p(i32) #1

declare dso_local i32 @write_match_code_switch(i32) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @write_predicate_expr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
