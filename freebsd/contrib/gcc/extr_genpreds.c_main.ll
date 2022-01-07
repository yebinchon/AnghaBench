; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genpreds.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genpreds.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@progname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"no input file name\00", align 1
@parse_option = common dso_local global i32 0, align 4
@SUCCESS_EXIT_CODE = common dso_local global i64 0, align 8
@FATAL_EXIT_CODE = common dso_local global i32 0, align 4
@gen_header = common dso_local global i64 0, align 8
@gen_constrs = common dso_local global i64 0, align 8
@have_error = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** @progname, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp sle i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @fatal(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %2
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = load i32, i32* @parse_option, align 4
  %20 = call i64 @init_md_reader_args_cb(i32 %17, i8** %18, i32 %19)
  %21 = load i64, i64* @SUCCESS_EXIT_CODE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @FATAL_EXIT_CODE, align 4
  store i32 %24, i32* %3, align 4
  br label %79

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %45, %25
  %27 = call i32 @read_md_rtx(i32* %7, i32* %8)
  store i32 %27, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @GET_CODE(i32 %30)
  switch i32 %31, label %44 [
    i32 130, label %32
    i32 128, label %32
    i32 132, label %36
    i32 131, label %36
    i32 133, label %36
    i32 129, label %40
  ]

32:                                               ; preds = %29, %29
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @process_define_predicate(i32 %33, i32 %34)
  br label %45

36:                                               ; preds = %29, %29, %29
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @process_define_constraint(i32 %37, i32 %38)
  br label %45

40:                                               ; preds = %29
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @process_define_register_constraint(i32 %41, i32 %42)
  br label %45

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44, %40, %36, %32
  br label %26

46:                                               ; preds = %26
  %47 = load i64, i64* @gen_header, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 (...) @write_tm_preds_h()
  br label %59

51:                                               ; preds = %46
  %52 = load i64, i64* @gen_constrs, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 (...) @write_tm_constrs_h()
  br label %58

56:                                               ; preds = %51
  %57 = call i32 (...) @write_insn_preds_c()
  br label %58

58:                                               ; preds = %56, %54
  br label %59

59:                                               ; preds = %58, %49
  %60 = load i64, i64* @have_error, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @stdout, align 4
  %64 = call i64 @ferror(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* @stdout, align 4
  %68 = call i64 @fflush(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* @stdout, align 4
  %72 = call i64 @fclose(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %70, %66, %62, %59
  %75 = load i32, i32* @FATAL_EXIT_CODE, align 4
  store i32 %75, i32* %3, align 4
  br label %79

76:                                               ; preds = %70
  %77 = load i64, i64* @SUCCESS_EXIT_CODE, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %76, %74, %23
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @fatal(i8*) #1

declare dso_local i64 @init_md_reader_args_cb(i32, i8**, i32) #1

declare dso_local i32 @read_md_rtx(i32*, i32*) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @process_define_predicate(i32, i32) #1

declare dso_local i32 @process_define_constraint(i32, i32) #1

declare dso_local i32 @process_define_register_constraint(i32, i32) #1

declare dso_local i32 @write_tm_preds_h(...) #1

declare dso_local i32 @write_tm_constrs_h(...) #1

declare dso_local i32 @write_insn_preds_c(...) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i64 @fflush(i32) #1

declare dso_local i64 @fclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
