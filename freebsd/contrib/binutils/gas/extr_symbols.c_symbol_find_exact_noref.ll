; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_symbol_find_exact_noref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_symbol_find_exact_noref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_symbol = type { i32 }

@local_hash = common dso_local global i32 0, align 4
@sy_hash = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @symbol_find_exact_noref(i8* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.local_symbol*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @local_hash, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @hash_find(i32 %8, i8* %9)
  %11 = inttoptr i64 %10 to %struct.local_symbol*
  store %struct.local_symbol* %11, %struct.local_symbol** %6, align 8
  %12 = load %struct.local_symbol*, %struct.local_symbol** %6, align 8
  %13 = icmp ne %struct.local_symbol* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.local_symbol*, %struct.local_symbol** %6, align 8
  %16 = bitcast %struct.local_symbol* %15 to i32*
  store i32* %16, i32** %3, align 8
  br label %32

17:                                               ; preds = %2
  %18 = load i32, i32* @sy_hash, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = call i64 @hash_find(i32 %18, i8* %19)
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @S_CLEAR_WEAKREFD(i32* %28)
  br label %30

30:                                               ; preds = %27, %24, %17
  %31 = load i32*, i32** %7, align 8
  store i32* %31, i32** %3, align 8
  br label %32

32:                                               ; preds = %30, %14
  %33 = load i32*, i32** %3, align 8
  ret i32* %33
}

declare dso_local i64 @hash_find(i32, i8*) #1

declare dso_local i32 @S_CLEAR_WEAKREFD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
