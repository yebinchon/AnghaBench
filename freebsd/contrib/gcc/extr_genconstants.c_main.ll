; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genconstants.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genconstants.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"genconstants\00", align 1
@progname = common dso_local global i8* null, align 8
@SUCCESS_EXIT_CODE = common dso_local global i64 0, align 8
@FATAL_EXIT_CODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"/* Generated automatically by the program `genconstants'\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"   from the machine description file `md'.  */\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"#ifndef GCC_INSN_CONSTANTS_H\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"#define GCC_INSN_CONSTANTS_H\0A\00", align 1
@print_md_constant = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"\0A#endif /* GCC_INSN_CONSTANTS_H */\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** @progname, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i8**, i8*** %5, align 8
  %8 = call i64 @init_md_reader_args(i32 %6, i8** %7)
  %9 = load i64, i64* @SUCCESS_EXIT_CODE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @FATAL_EXIT_CODE, align 4
  store i32 %12, i32* %3, align 4
  br label %38

13:                                               ; preds = %2
  %14 = call i32 @puts(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @puts(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %16 = call i32 @puts(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %18 = load i32, i32* @print_md_constant, align 4
  %19 = load i32, i32* @stdout, align 4
  %20 = call i32 @traverse_md_constants(i32 %18, i32 %19)
  %21 = call i32 @puts(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %22 = load i32, i32* @stdout, align 4
  %23 = call i64 @ferror(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %13
  %26 = load i32, i32* @stdout, align 4
  %27 = call i64 @fflush(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @stdout, align 4
  %31 = call i64 @fclose(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %25, %13
  %34 = load i32, i32* @FATAL_EXIT_CODE, align 4
  store i32 %34, i32* %3, align 4
  br label %38

35:                                               ; preds = %29
  %36 = load i64, i64* @SUCCESS_EXIT_CODE, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %35, %33, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @init_md_reader_args(i32, i8**) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @traverse_md_constants(i32, i32) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i64 @fflush(i32) #1

declare dso_local i64 @fclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
