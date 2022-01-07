; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_synerror.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_parser.c_synerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@commandname = common dso_local global i64 0, align 8
@out2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s: %d: \00", align 1
@startlinno = common dso_local global i32 0, align 4
@arg0 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Syntax error: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @synerror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synerror(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* @commandname, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load i32, i32* @out2, align 4
  %7 = load i64, i64* @commandname, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = load i32, i32* @startlinno, align 4
  %10 = call i32 (i32, i8*, i8*, ...) @outfmt(i32 %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %8, i32 %9)
  br label %19

11:                                               ; preds = %1
  %12 = load i8*, i8** @arg0, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* @out2, align 4
  %16 = load i8*, i8** @arg0, align 8
  %17 = call i32 (i32, i8*, i8*, ...) @outfmt(i32 %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %14, %11
  br label %19

19:                                               ; preds = %18, %5
  %20 = load i32, i32* @out2, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 (i32, i8*, i8*, ...) @outfmt(i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  %23 = call i32 @error(i8* null)
  ret void
}

declare dso_local i32 @outfmt(i32, i8*, i8*, ...) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
