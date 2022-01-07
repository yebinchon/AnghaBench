; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-ppoutput.c_cb_define.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-ppoutput.c_cb_define.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"#define \00", align 1
@print = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@flag_dump_macros = common dso_local global i8 0, align 1
@line_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @cb_define to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb_define(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @maybe_print_line(i32 %7)
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @print, i32 0, i32 1), align 4
  %10 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i8, i8* @flag_dump_macros, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 68
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i32*, i32** %4, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @cpp_macro_definition(i32* %15, i32* %16)
  %18 = inttoptr i64 %17 to i8*
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @print, i32 0, i32 1), align 4
  %20 = call i32 @fputs(i8* %18, i32 %19)
  br label %27

21:                                               ; preds = %3
  %22 = load i32*, i32** %6, align 8
  %23 = call i64 @NODE_NAME(i32* %22)
  %24 = inttoptr i64 %23 to i8*
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @print, i32 0, i32 1), align 4
  %26 = call i32 @fputs(i8* %24, i32 %25)
  br label %27

27:                                               ; preds = %21, %14
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @print, i32 0, i32 1), align 4
  %29 = call i32 @putc(i8 signext 10, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = call %struct.TYPE_4__* @linemap_lookup(i32* @line_table, i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @print, i32 0, i32 0), align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @print, i32 0, i32 0), align 4
  br label %38

38:                                               ; preds = %35, %27
  ret void
}

declare dso_local i32 @maybe_print_line(i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i64 @cpp_macro_definition(i32*, i32*) #1

declare dso_local i64 @NODE_NAME(i32*) #1

declare dso_local i32 @putc(i8 signext, i32) #1

declare dso_local %struct.TYPE_4__* @linemap_lookup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
