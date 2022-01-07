; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_initiate_automaton_gen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_initiate_automaton_gen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ndfa_flag = common dso_local global i32 0, align 4
@split_argument = common dso_local global i64 0, align 8
@no_minimization_flag = common dso_local global i32 0, align 4
@time_flag = common dso_local global i32 0, align 4
@v_flag = common dso_local global i32 0, align 4
@w_flag = common dso_local global i32 0, align 4
@progress_flag = common dso_local global i32 0, align 4
@NO_MINIMIZATION_OPTION = common dso_local global i8* null, align 8
@TIME_OPTION = common dso_local global i8* null, align 8
@V_OPTION = common dso_local global i8* null, align 8
@W_OPTION = common dso_local global i8* null, align 8
@NDFA_OPTION = common dso_local global i8* null, align 8
@PROGRESS_OPTION = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"-split\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"-split has no argument.\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"option `-split' has not been implemented yet\0A\00", align 1
@irp = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@output_file = common dso_local global i32 0, align 4
@output_description_file = common dso_local global i32* null, align 8
@STANDARD_OUTPUT_DESCRIPTION_FILE_SUFFIX = common dso_local global i8* null, align 8
@output_description_file_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @initiate_automaton_gen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initiate_automaton_gen(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* @ndfa_flag, align 4
  store i64 0, i64* @split_argument, align 8
  store i32 0, i32* @no_minimization_flag, align 4
  store i32 0, i32* @time_flag, align 4
  store i32 0, i32* @v_flag, align 4
  store i32 0, i32* @w_flag, align 4
  store i32 0, i32* @progress_flag, align 4
  store i32 2, i32* %6, align 4
  br label %7

7:                                                ; preds = %95, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %98

11:                                               ; preds = %7
  %12 = load i8**, i8*** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = load i8*, i8** @NO_MINIMIZATION_OPTION, align 8
  %18 = call i64 @strcmp(i8* %16, i8* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 1, i32* @no_minimization_flag, align 4
  br label %94

21:                                               ; preds = %11
  %22 = load i8**, i8*** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** @TIME_OPTION, align 8
  %28 = call i64 @strcmp(i8* %26, i8* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 1, i32* @time_flag, align 4
  br label %93

31:                                               ; preds = %21
  %32 = load i8**, i8*** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** @V_OPTION, align 8
  %38 = call i64 @strcmp(i8* %36, i8* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 1, i32* @v_flag, align 4
  br label %92

41:                                               ; preds = %31
  %42 = load i8**, i8*** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = load i8*, i8** @W_OPTION, align 8
  %48 = call i64 @strcmp(i8* %46, i8* %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i32 1, i32* @w_flag, align 4
  br label %91

51:                                               ; preds = %41
  %52 = load i8**, i8*** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** @NDFA_OPTION, align 8
  %58 = call i64 @strcmp(i8* %56, i8* %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  store i32 1, i32* @ndfa_flag, align 4
  br label %90

61:                                               ; preds = %51
  %62 = load i8**, i8*** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = load i8*, i8** @PROGRESS_OPTION, align 8
  %68 = call i64 @strcmp(i8* %66, i8* %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  store i32 1, i32* @progress_flag, align 4
  br label %89

71:                                               ; preds = %61
  %72 = load i8**, i8*** %4, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %71
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  %82 = load i32, i32* %3, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = call i32 @fatal(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %79
  %87 = call i32 @fatal(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %71
  br label %89

89:                                               ; preds = %88, %70
  br label %90

90:                                               ; preds = %89, %60
  br label %91

91:                                               ; preds = %90, %50
  br label %92

92:                                               ; preds = %91, %40
  br label %93

93:                                               ; preds = %92, %30
  br label %94

94:                                               ; preds = %93, %20
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %7

98:                                               ; preds = %7
  %99 = call i32 @obstack_init(i32* @irp)
  %100 = call i32 (...) @initiate_automaton_decl_table()
  %101 = call i32 (...) @initiate_insn_decl_table()
  %102 = call i32 (...) @initiate_decl_table()
  %103 = load i32, i32* @stdout, align 4
  store i32 %103, i32* @output_file, align 4
  store i32* null, i32** @output_description_file, align 8
  %104 = load i8**, i8*** %4, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 1
  %106 = load i8*, i8** %105, align 8
  %107 = call i8* @base_file_name(i8* %106)
  store i8* %107, i8** %5, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = load i8*, i8** %5, align 8
  %110 = call i64 @strlen(i8* %109)
  %111 = load i8*, i8** %5, align 8
  %112 = call i8* @file_name_suffix(i8* %111)
  %113 = call i64 @strlen(i8* %112)
  %114 = sub nsw i64 %110, %113
  %115 = call i32 @obstack_grow(i32* @irp, i8* %108, i64 %114)
  %116 = load i8*, i8** @STANDARD_OUTPUT_DESCRIPTION_FILE_SUFFIX, align 8
  %117 = load i8*, i8** @STANDARD_OUTPUT_DESCRIPTION_FILE_SUFFIX, align 8
  %118 = call i64 @strlen(i8* %117)
  %119 = add nsw i64 %118, 1
  %120 = call i32 @obstack_grow(i32* @irp, i8* %116, i64 %119)
  %121 = call i32 @obstack_1grow(i32* @irp, i8 signext 0)
  %122 = call i32 @obstack_base(i32* @irp)
  store i32 %122, i32* @output_description_file_name, align 4
  %123 = call i32 @obstack_finish(i32* @irp)
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @obstack_init(i32*) #1

declare dso_local i32 @initiate_automaton_decl_table(...) #1

declare dso_local i32 @initiate_insn_decl_table(...) #1

declare dso_local i32 @initiate_decl_table(...) #1

declare dso_local i8* @base_file_name(i8*) #1

declare dso_local i32 @obstack_grow(i32*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @file_name_suffix(i8*) #1

declare dso_local i32 @obstack_1grow(i32*, i8 signext) #1

declare dso_local i32 @obstack_base(i32*) #1

declare dso_local i32 @obstack_finish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
