; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengenrtl.c_gencode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengenrtl.c_gencode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"#include \22config.h\22\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"#include \22system.h\22\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"#include \22coretypes.h\22\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"#include \22tm.h\22\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"#include \22obstack.h\22\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"#include \22rtl.h\22\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"#include \22ggc.h\22\0A\00", align 1
@formats = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gencode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gencode() #0 {
  %1 = alloca i8**, align 8
  %2 = call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 @puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %5 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %6 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %7 = call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %8 = call i32 @puts(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %9 = load i8**, i8*** @formats, align 8
  store i8** %9, i8*** %1, align 8
  br label %10

10:                                               ; preds = %18, %0
  %11 = load i8**, i8*** %1, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i8**, i8*** %1, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @gendef(i8* %16)
  br label %18

18:                                               ; preds = %14
  %19 = load i8**, i8*** %1, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %20, i8*** %1, align 8
  br label %10

21:                                               ; preds = %10
  ret void
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @gendef(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
