; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_opts.c_print_param_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_opts.c_print_param_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }

@.str = private unnamed_addr constant [60 x i8] c"The --param option recognizes the following as parameters:\0A\00", align 1
@LAST_PARAM = common dso_local global i64 0, align 8
@compiler_params = common dso_local global %struct.TYPE_2__* null, align 8
@undocumented_msg = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_param_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_param_help() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = call i8* @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @puts(i8* %4)
  store i64 0, i64* %1, align 8
  br label %6

6:                                                ; preds = %38, %0
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* @LAST_PARAM, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %41

10:                                               ; preds = %6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @compiler_params, align 8
  %12 = load i64, i64* %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %2, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @compiler_params, align 8
  %17 = load i64, i64* %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %3, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %10
  %24 = load i8*, i8** %2, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %10
  %29 = load i8*, i8** @undocumented_msg, align 8
  store i8* %29, i8** %2, align 8
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i8*, i8** %2, align 8
  %32 = call i8* @_(i8* %31)
  store i8* %32, i8** %2, align 8
  %33 = load i8*, i8** %2, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = call i32 @wrap_help(i8* %33, i8* %34, i32 %36)
  br label %38

38:                                               ; preds = %30
  %39 = load i64, i64* %1, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %1, align 8
  br label %6

41:                                               ; preds = %6
  %42 = call i32 @putchar(i8 signext 10)
  ret void
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @wrap_help(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
