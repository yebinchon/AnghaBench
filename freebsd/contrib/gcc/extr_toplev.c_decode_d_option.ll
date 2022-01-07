; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_toplev.c_decode_d_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_toplev.c_decode_d_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_debug_asm = common dso_local global i32 0, align 4
@flag_print_asm_name = common dso_local global i32 0, align 4
@flag_dump_rtl_in_asm = common dso_local global i32 0, align 4
@vcg = common dso_local global i32 0, align 4
@graph_dump_format = common dso_local global i32 0, align 4
@rtl_dump_and_exit = common dso_local global i32 0, align 4
@set_yydebug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"unrecognized gcc debugging option: %c\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decode_d_option(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  br label %4

4:                                                ; preds = %32, %1
  %5 = load i8*, i8** %2, align 8
  %6 = load i8, i8* %5, align 1
  %7 = icmp ne i8 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %4
  %9 = load i8*, i8** %2, align 8
  %10 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %10, i8** %2, align 8
  %11 = load i8, i8* %9, align 1
  %12 = sext i8 %11 to i32
  store i32 %12, i32* %3, align 4
  switch i32 %12, label %24 [
    i32 65, label %13
    i32 112, label %14
    i32 80, label %15
    i32 118, label %16
    i32 120, label %18
    i32 121, label %19
    i32 68, label %20
    i32 73, label %20
    i32 72, label %21
    i32 97, label %23
  ]

13:                                               ; preds = %8
  store i32 1, i32* @flag_debug_asm, align 4
  br label %32

14:                                               ; preds = %8
  store i32 1, i32* @flag_print_asm_name, align 4
  br label %32

15:                                               ; preds = %8
  store i32 1, i32* @flag_dump_rtl_in_asm, align 4
  store i32 1, i32* @flag_print_asm_name, align 4
  br label %32

16:                                               ; preds = %8
  %17 = load i32, i32* @vcg, align 4
  store i32 %17, i32* @graph_dump_format, align 4
  br label %32

18:                                               ; preds = %8
  store i32 1, i32* @rtl_dump_and_exit, align 4
  br label %32

19:                                               ; preds = %8
  store i32 1, i32* @set_yydebug, align 4
  br label %32

20:                                               ; preds = %8, %8
  br label %32

21:                                               ; preds = %8
  %22 = call i32 (...) @setup_core_dumping()
  br label %32

23:                                               ; preds = %8
  br label %24

24:                                               ; preds = %8, %23
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @enable_rtl_dump_file(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @warning(i32 0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %24
  br label %32

32:                                               ; preds = %31, %21, %20, %19, %18, %16, %15, %14, %13
  br label %4

33:                                               ; preds = %4
  ret void
}

declare dso_local i32 @setup_core_dumping(...) #1

declare dso_local i32 @enable_rtl_dump_file(i32) #1

declare dso_local i32 @warning(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
