; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macroexp.c_macro_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macroexp.c_macro_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_buffer = type { i8*, i64 }
%struct.cleanup = type { i32 }

@cleanup_macro_buffer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @macro_expand(i8* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.macro_buffer, align 8
  %8 = alloca %struct.macro_buffer, align 8
  %9 = alloca %struct.cleanup*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = call i32 @init_shared_buffer(%struct.macro_buffer* %7, i8* %10, i32 %12)
  %14 = call i32 @init_buffer(%struct.macro_buffer* %8, i32 0)
  %15 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %8, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @cleanup_macro_buffer, align 4
  %17 = call %struct.cleanup* @make_cleanup(i32 %16, %struct.macro_buffer* %8)
  store %struct.cleanup* %17, %struct.cleanup** %9, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @scan(%struct.macro_buffer* %8, %struct.macro_buffer* %7, i32 0, i32* %18, i8* %19)
  %21 = call i32 @appendc(%struct.macro_buffer* %8, i8 signext 0)
  %22 = load %struct.cleanup*, %struct.cleanup** %9, align 8
  %23 = call i32 @discard_cleanups(%struct.cleanup* %22)
  %24 = getelementptr inbounds %struct.macro_buffer, %struct.macro_buffer* %8, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  ret i8* %25
}

declare dso_local i32 @init_shared_buffer(%struct.macro_buffer*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @init_buffer(%struct.macro_buffer*, i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.macro_buffer*) #1

declare dso_local i32 @scan(%struct.macro_buffer*, %struct.macro_buffer*, i32, i32*, i8*) #1

declare dso_local i32 @appendc(%struct.macro_buffer*, i8 signext) #1

declare dso_local i32 @discard_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
