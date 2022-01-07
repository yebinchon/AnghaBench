; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_sol2.c_solaris_output_init_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/extr_sol2.c_solaris_output_init_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"\09.pushsection\09\22.init\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"\09.popsection\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fini\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"\09.pushsection\09\22.fini\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @solaris_output_init_fini(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @DECL_ATTRIBUTES(i32 %5)
  %7 = call i64 @lookup_attribute(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @fprintf(i32* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @ASM_OUTPUT_CALL(i32* %12, i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @fprintf(i32* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %17

17:                                               ; preds = %9, %2
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @DECL_ATTRIBUTES(i32 %18)
  %20 = call i64 @lookup_attribute(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @fprintf(i32* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @ASM_OUTPUT_CALL(i32* %25, i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @fprintf(i32* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %22, %17
  ret void
}

declare dso_local i64 @lookup_attribute(i8*, i32) #1

declare dso_local i32 @DECL_ATTRIBUTES(i32) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @ASM_OUTPUT_CALL(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
