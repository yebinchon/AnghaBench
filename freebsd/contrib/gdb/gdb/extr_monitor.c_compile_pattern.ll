; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_compile_pattern.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_compile_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.re_pattern_buffer = type { i8* }

@RE_SYNTAX_EMACS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"compile_pattern: Can't compile pattern string `%s': %s!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.re_pattern_buffer*, i8*)* @compile_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compile_pattern(i8* %0, %struct.re_pattern_buffer* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.re_pattern_buffer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.re_pattern_buffer* %1, %struct.re_pattern_buffer** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %5, align 8
  %11 = getelementptr inbounds %struct.re_pattern_buffer, %struct.re_pattern_buffer* %10, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = load i32, i32* @RE_SYNTAX_EMACS, align 4
  %13 = call i32 @re_set_syntax(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %5, align 8
  %18 = call i8* @re_compile_pattern(i8* %14, i32 %16, %struct.re_pattern_buffer* %17)
  store i8* %18, i8** %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @re_set_syntax(i32 %19)
  %21 = load i8*, i8** %8, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i8*, i8** %4, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %25)
  br label %27

27:                                               ; preds = %23, %3
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.re_pattern_buffer*, %struct.re_pattern_buffer** %5, align 8
  %32 = call i32 @re_compile_fastmap(%struct.re_pattern_buffer* %31)
  br label %33

33:                                               ; preds = %30, %27
  ret void
}

declare dso_local i32 @re_set_syntax(i32) #1

declare dso_local i8* @re_compile_pattern(i8*, i32, %struct.re_pattern_buffer*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i32 @re_compile_fastmap(%struct.re_pattern_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
