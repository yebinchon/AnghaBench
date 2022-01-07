; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_maint.c_maintenance_demangle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_maint.c_maintenance_demangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"\22maintenance demangle\22 takes an argument to demangle.\0A\00", align 1
@current_language = common dso_local global i32 0, align 4
@DMGL_ANSI = common dso_local global i32 0, align 4
@DMGL_PARAMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Can't demangle \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @maintenance_demangle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maintenance_demangle(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8, %2
  %14 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %33

15:                                               ; preds = %8
  %16 = load i32, i32* @current_language, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* @DMGL_ANSI, align 4
  %19 = load i32, i32* @DMGL_PARAMS, align 4
  %20 = or i32 %18, %19
  %21 = call i8* @language_demangle(i32 %16, i8* %17, i32 %20)
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @xfree(i8* %27)
  br label %32

29:                                               ; preds = %15
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %29, %24
  br label %33

33:                                               ; preds = %32, %13
  ret void
}

declare dso_local i32 @printf_unfiltered(i8*, ...) #1

declare dso_local i8* @language_demangle(i32, i8*, i32) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
