; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/test/yacc/extr_grammar.tab.c_init_parser.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/test/yacc/extr_grammar.tab.c_init_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@init_parser.keywords = internal global [14 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [6 x i8] c"const\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"restrict\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"volatile\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"__builtin_va_arg\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"__builtin_va_list\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"__const\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"__const__\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"__inline\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"__inline__\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"__restrict\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"__restrict__\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"__volatile\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"__volatile__\00", align 1
@type_qualifiers = common dso_local global i32 0, align 4
@DS_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_parser() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @new_symbol_table()
  store i32 %2, i32* @type_qualifiers, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %15, %0
  %4 = load i32, i32* %1, align 4
  %5 = zext i32 %4 to i64
  %6 = icmp ult i64 %5, 14
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = load i32, i32* @type_qualifiers, align 4
  %9 = load i32, i32* %1, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [14 x i8*], [14 x i8*]* @init_parser.keywords, i64 0, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = load i32, i32* @DS_NONE, align 4
  %14 = call i32 @new_symbol(i32 %8, i8* %12, i32* null, i32 %13)
  br label %15

15:                                               ; preds = %7
  %16 = load i32, i32* %1, align 4
  %17 = add i32 %16, 1
  store i32 %17, i32* %1, align 4
  br label %3

18:                                               ; preds = %3
  ret void
}

declare dso_local i32 @new_symbol_table(...) #1

declare dso_local i32 @new_symbol(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
