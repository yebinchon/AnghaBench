; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_method.c_make_alias_for_thunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_method.c_make_alias_for_thunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"LTHUNK\00", align 1
@thunk_labelno = common dso_local global i32 0, align 4
@flag_syntax_only = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @make_alias_for_thunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_alias_for_thunk(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [256 x i8], align 16
  store i32 %0, i32* %2, align 4
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %6 = load i32, i32* @thunk_labelno, align 4
  %7 = call i32 @ASM_GENERATE_INTERNAL_LABEL(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* @thunk_labelno, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @thunk_labelno, align 4
  %10 = load i32, i32* %2, align 4
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %12 = call i32 @get_identifier(i8* %11)
  %13 = call i32 @make_alias_for(i32 %10, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @flag_syntax_only, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @DECL_ASSEMBLER_NAME(i32 %18)
  %20 = call i32 @assemble_alias(i32 %17, i32 %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @ASM_GENERATE_INTERNAL_LABEL(i8*, i8*, i32) #1

declare dso_local i32 @make_alias_for(i32, i32) #1

declare dso_local i32 @get_identifier(i8*) #1

declare dso_local i32 @assemble_alias(i32, i32) #1

declare dso_local i32 @DECL_ASSEMBLER_NAME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
