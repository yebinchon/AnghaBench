; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_local_symbol_make.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_local_symbol_make.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_symbol = type { i8*, i32, i32, i32* }

@local_symbol_count = common dso_local global i32 0, align 4
@notes = common dso_local global i32 0, align 4
@local_hash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.local_symbol* (i8*, i32, i32, i32*)* @local_symbol_make to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.local_symbol* @local_symbol_make(i8* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.local_symbol*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* @local_symbol_count, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @local_symbol_count, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @save_symbol_name(i8* %13)
  store i8* %14, i8** %9, align 8
  %15 = call i64 @obstack_alloc(i32* @notes, i32 24)
  %16 = inttoptr i64 %15 to %struct.local_symbol*
  store %struct.local_symbol* %16, %struct.local_symbol** %10, align 8
  %17 = load %struct.local_symbol*, %struct.local_symbol** %10, align 8
  %18 = getelementptr inbounds %struct.local_symbol, %struct.local_symbol* %17, i32 0, i32 3
  store i32* null, i32** %18, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load %struct.local_symbol*, %struct.local_symbol** %10, align 8
  %21 = getelementptr inbounds %struct.local_symbol, %struct.local_symbol* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.local_symbol*, %struct.local_symbol** %10, align 8
  %24 = getelementptr inbounds %struct.local_symbol, %struct.local_symbol* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.local_symbol*, %struct.local_symbol** %10, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @local_symbol_set_frag(%struct.local_symbol* %25, i32* %26)
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.local_symbol*, %struct.local_symbol** %10, align 8
  %30 = getelementptr inbounds %struct.local_symbol, %struct.local_symbol* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @local_hash, align 4
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.local_symbol*, %struct.local_symbol** %10, align 8
  %34 = ptrtoint %struct.local_symbol* %33 to i32
  %35 = call i32 @hash_jam(i32 %31, i8* %32, i32 %34)
  %36 = load %struct.local_symbol*, %struct.local_symbol** %10, align 8
  ret %struct.local_symbol* %36
}

declare dso_local i8* @save_symbol_name(i8*) #1

declare dso_local i64 @obstack_alloc(i32*, i32) #1

declare dso_local i32 @local_symbol_set_frag(%struct.local_symbol*, i32*) #1

declare dso_local i32 @hash_jam(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
