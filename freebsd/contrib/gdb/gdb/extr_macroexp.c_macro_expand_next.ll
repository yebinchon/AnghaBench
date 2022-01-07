; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macroexp.c_macro_expand_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macroexp.c_macro_expand_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_buffer = type { i8*, i64 }
%struct.cleanup = type { i32 }

@cleanup_macro_buffer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @macro_expand_next(i8** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.macro_buffer, align 8
  %9 = alloca %struct.macro_buffer, align 8
  %10 = alloca %struct.macro_buffer, align 8
  %11 = alloca %struct.cleanup*, align 8
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @strlen(i8* %15)
  %17 = call i32 @init_shared_buffer(%struct.macro_buffer* %8, i8* %13, i32 %16)
  %18 = call i32 @init_buffer(%struct.macro_buffer* %9, i32 0)
  %19 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %9, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @cleanup_macro_buffer, align 4
  %21 = call %struct.cleanup* @make_cleanup(i32 %20, %struct.macro_buffer* %9)
  store %struct.cleanup* %21, %struct.cleanup** %11, align 8
  %22 = call i32 @get_token(%struct.macro_buffer* %10, %struct.macro_buffer* %8)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load %struct.cleanup*, %struct.cleanup** %11, align 8
  %26 = call i32 @do_cleanups(%struct.cleanup* %25)
  store i8* null, i8** %4, align 8
  br label %44

27:                                               ; preds = %3
  %28 = load i32*, i32** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @maybe_expand(%struct.macro_buffer* %9, %struct.macro_buffer* %10, %struct.macro_buffer* %8, i32 0, i32* %28, i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = call i32 @appendc(%struct.macro_buffer* %9, i8 signext 0)
  %34 = load %struct.cleanup*, %struct.cleanup** %11, align 8
  %35 = call i32 @discard_cleanups(%struct.cleanup* %34)
  %36 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %8, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i8**, i8*** %5, align 8
  store i8* %37, i8** %38, align 8
  %39 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %9, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %4, align 8
  br label %44

41:                                               ; preds = %27
  %42 = load %struct.cleanup*, %struct.cleanup** %11, align 8
  %43 = call i32 @do_cleanups(%struct.cleanup* %42)
  store i8* null, i8** %4, align 8
  br label %44

44:                                               ; preds = %41, %32, %24
  %45 = load i8*, i8** %4, align 8
  ret i8* %45
}

declare dso_local i32 @init_shared_buffer(%struct.macro_buffer*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @init_buffer(%struct.macro_buffer*, i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.macro_buffer*) #1

declare dso_local i32 @get_token(%struct.macro_buffer*, %struct.macro_buffer*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i64 @maybe_expand(%struct.macro_buffer*, %struct.macro_buffer*, %struct.macro_buffer*, i32, i32*, i8*) #1

declare dso_local i32 @appendc(%struct.macro_buffer*, i8 signext) #1

declare dso_local i32 @discard_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
