; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_read_lexical_block_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_read_lexical_block_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dieinfo = type { i32, i32, i32 }
%struct.objfile = type { i32 }
%struct.context_stack = type { i32*, i32, i32 }

@local_symbols = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dieinfo*, i8*, i8*, %struct.objfile*)* @read_lexical_block_scope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_lexical_block_scope(%struct.dieinfo* %0, i8* %1, i8* %2, %struct.objfile* %3) #0 {
  %5 = alloca %struct.dieinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.objfile*, align 8
  %9 = alloca %struct.context_stack*, align 8
  store %struct.dieinfo* %0, %struct.dieinfo** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.objfile* %3, %struct.objfile** %8, align 8
  %10 = load %struct.dieinfo*, %struct.dieinfo** %5, align 8
  %11 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @push_context(i32 0, i32 %12)
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.dieinfo*, %struct.dieinfo** %5, align 8
  %16 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %14, i64 %18
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.objfile*, %struct.objfile** %8, align 8
  %22 = call i32 @process_dies(i8* %19, i8* %20, %struct.objfile* %21)
  %23 = call %struct.context_stack* (...) @pop_context()
  store %struct.context_stack* %23, %struct.context_stack** %9, align 8
  %24 = load i32*, i32** @local_symbols, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %4
  %27 = load %struct.context_stack*, %struct.context_stack** %9, align 8
  %28 = getelementptr inbounds %struct.context_stack, %struct.context_stack* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.context_stack*, %struct.context_stack** %9, align 8
  %31 = getelementptr inbounds %struct.context_stack, %struct.context_stack* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.dieinfo*, %struct.dieinfo** %5, align 8
  %34 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.objfile*, %struct.objfile** %8, align 8
  %37 = call i32 @finish_block(i32 0, i32** @local_symbols, i32 %29, i32 %32, i32 %35, %struct.objfile* %36)
  br label %38

38:                                               ; preds = %26, %4
  %39 = load %struct.context_stack*, %struct.context_stack** %9, align 8
  %40 = getelementptr inbounds %struct.context_stack, %struct.context_stack* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** @local_symbols, align 8
  ret void
}

declare dso_local i32 @push_context(i32, i32) #1

declare dso_local i32 @process_dies(i8*, i8*, %struct.objfile*) #1

declare dso_local %struct.context_stack* @pop_context(...) #1

declare dso_local i32 @finish_block(i32, i32**, i32, i32, i32, %struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
