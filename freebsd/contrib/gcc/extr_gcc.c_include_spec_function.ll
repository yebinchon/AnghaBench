; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_include_spec_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcc.c_include_spec_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@startfile_prefixes = common dso_local global i32 0, align 4
@R_OK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8**)* @include_spec_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @include_spec_function(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 1
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 (...) @abort() #3
  unreachable

10:                                               ; preds = %2
  %11 = load i8**, i8*** %4, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i32, i32* @R_OK, align 4
  %15 = call i8* @find_a_file(i32* @startfile_prefixes, i8* %13, i32 %14, i32 0)
  store i8* %15, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = load i8*, i8** %5, align 8
  br label %24

20:                                               ; preds = %10
  %21 = load i8**, i8*** %4, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  br label %24

24:                                               ; preds = %20, %18
  %25 = phi i8* [ %19, %18 ], [ %23, %20 ]
  %26 = load i32, i32* @FALSE, align 4
  %27 = call i32 @read_specs(i8* %25, i32 %26)
  ret i8* null
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i8* @find_a_file(i32*, i8*, i32, i32) #2

declare dso_local i32 @read_specs(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
