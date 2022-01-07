; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_symbol_locate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_symbol_locate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@notes = common dso_local global i32 0, align 4
@symbol_table_frozen = external dso_local global i32, align 4
@symbol_lastP = common dso_local global i32 0, align 4
@symbol_rootP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32, i32, i32*)* @symbol_locate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @symbol_locate(i32* %0, i8* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %11, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* %11, align 4
  %18 = call i32 @obstack_grow(i32* @notes, i8* %16, i32 %17)
  %19 = call i8* @obstack_finish(i32* @notes)
  store i8* %19, i8** %12, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = call i32 @S_SET_NAME(i32* %20, i8* %21)
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @S_SET_SEGMENT(i32* %23, i32 %24)
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @S_SET_VALUE(i32* %26, i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = call i32 @symbol_clear_list_pointers(i32* %29)
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @symbol_set_frag(i32* %31, i32* %32)
  %34 = load i32, i32* @symbol_table_frozen, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %5
  %37 = call i32 (...) @abort() #3
  unreachable

38:                                               ; preds = %5
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* @symbol_lastP, align 4
  %41 = call i32 @symbol_append(i32* %39, i32 %40, i32* @symbol_rootP, i32* @symbol_lastP)
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @obj_symbol_new_hook(i32* %42)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @obstack_grow(i32*, i8*, i32) #1

declare dso_local i8* @obstack_finish(i32*) #1

declare dso_local i32 @S_SET_NAME(i32*, i8*) #1

declare dso_local i32 @S_SET_SEGMENT(i32*, i32) #1

declare dso_local i32 @S_SET_VALUE(i32*, i32) #1

declare dso_local i32 @symbol_clear_list_pointers(i32*) #1

declare dso_local i32 @symbol_set_frag(i32*, i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @symbol_append(i32*, i32, i32*, i32*) #1

declare dso_local i32 @obj_symbol_new_hook(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
