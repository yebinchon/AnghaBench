; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_translation_unit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_c_parser_translation_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPP_EOF = common dso_local global i32 0, align 4
@pedantic = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"ISO C forbids an empty source file\00", align 1
@parser_obstack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @c_parser_translation_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_parser_translation_unit(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* @CPP_EOF, align 4
  %6 = call i64 @c_parser_next_token_is(i32* %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i64, i64* @pedantic, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i32 @pedwarn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %8
  br label %28

14:                                               ; preds = %1
  %15 = call i8* @obstack_alloc(i32* @parser_obstack, i32 0)
  store i8* %15, i8** %3, align 8
  br label %16

16:                                               ; preds = %22, %14
  %17 = call i32 (...) @ggc_collect()
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @c_parser_external_declaration(i32* %18)
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @obstack_free(i32* @parser_obstack, i8* %20)
  br label %22

22:                                               ; preds = %16
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @CPP_EOF, align 4
  %25 = call i64 @c_parser_next_token_is_not(i32* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %16, label %27

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27, %13
  ret void
}

declare dso_local i64 @c_parser_next_token_is(i32*, i32) #1

declare dso_local i32 @pedwarn(i8*) #1

declare dso_local i8* @obstack_alloc(i32*, i32) #1

declare dso_local i32 @ggc_collect(...) #1

declare dso_local i32 @c_parser_external_declaration(i32*) #1

declare dso_local i32 @obstack_free(i32*, i8*) #1

declare dso_local i64 @c_parser_next_token_is_not(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
