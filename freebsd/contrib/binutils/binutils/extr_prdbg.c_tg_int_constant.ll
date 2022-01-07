; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_tg_int_constant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_tg_int_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr_handle = type { i8*, i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"%s\09%s\090;\22\09kind:v\09type:const int\09value:%s\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @tg_int_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg_int_constant(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pr_handle*, align 8
  %8 = alloca [20 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.pr_handle*
  store %struct.pr_handle* %10, %struct.pr_handle** %7, align 8
  %11 = load %struct.pr_handle*, %struct.pr_handle** %7, align 8
  %12 = call i32 @indent(%struct.pr_handle* %11)
  %13 = load i32, i32* %6, align 4
  %14 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %15 = load i32, i32* @FALSE, align 4
  %16 = load i32, i32* @FALSE, align 4
  %17 = call i32 @print_vma(i32 %13, i8* %14, i32 %15, i32 %16)
  %18 = load %struct.pr_handle*, %struct.pr_handle** %7, align 8
  %19 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.pr_handle*, %struct.pr_handle** %7, align 8
  %23 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  %26 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %21, i8* %24, i8* %25)
  %27 = load i32, i32* @TRUE, align 4
  ret i32 %27
}

declare dso_local i32 @indent(%struct.pr_handle*) #1

declare dso_local i32 @print_vma(i32, i8*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
