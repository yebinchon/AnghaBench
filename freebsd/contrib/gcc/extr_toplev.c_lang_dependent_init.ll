; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_toplev.c_lang_dependent_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_toplev.c_lang_dependent_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 (...)* }
%struct.TYPE_4__ = type { i32 (i8*)* }

@input_location = common dso_local global i32 0, align 4
@dump_base_name = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"gccdump\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"<built-in>\00", align 1
@input_filename = common dso_local global i8* null, align 8
@input_line = common dso_local global i64 0, align 8
@lang_hooks = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@TV_SYMOUT = common dso_local global i32 0, align 4
@debug_hooks = common dso_local global %struct.TYPE_4__* null, align 8
@BUILTINS_LOCATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @lang_dependent_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lang_dependent_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @input_location, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i8*, i8** @dump_base_name, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i8*, i8** %3, align 8
  br label %20

19:                                               ; preds = %11, %8
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i8* [ %18, %17 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %19 ]
  store i8* %21, i8** @dump_base_name, align 8
  br label %22

22:                                               ; preds = %20, %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** @input_filename, align 8
  store i64 0, i64* @input_line, align 8
  %23 = load i64 (...)*, i64 (...)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lang_hooks, i32 0, i32 0), align 8
  %24 = call i64 (...) %23()
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %45

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* @input_location, align 4
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @init_asm_output(i8* %29)
  %31 = call i32 (...) @init_eh()
  %32 = call i32 (...) @init_optabs()
  %33 = call i32 (...) @init_dummy_function_start()
  %34 = call i32 (...) @init_expr_once()
  %35 = call i32 (...) @expand_dummy_function_end()
  %36 = load i32, i32* @TV_SYMOUT, align 4
  %37 = call i32 @timevar_push(i32 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @debug_hooks, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (i8*)*, i32 (i8*)** %39, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = call i32 %40(i8* %41)
  %43 = load i32, i32* @TV_SYMOUT, align 4
  %44 = call i32 @timevar_pop(i32 %43)
  store i32 1, i32* %2, align 4
  br label %45

45:                                               ; preds = %27, %26
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @init_asm_output(i8*) #1

declare dso_local i32 @init_eh(...) #1

declare dso_local i32 @init_optabs(...) #1

declare dso_local i32 @init_dummy_function_start(...) #1

declare dso_local i32 @init_expr_once(...) #1

declare dso_local i32 @expand_dummy_function_end(...) #1

declare dso_local i32 @timevar_push(i32) #1

declare dso_local i32 @timevar_pop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
