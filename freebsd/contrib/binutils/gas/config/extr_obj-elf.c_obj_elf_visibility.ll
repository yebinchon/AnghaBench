; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-elf.c_obj_elf_visibility.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_obj-elf.c_obj_elf_visibility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@input_line_pointer = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @obj_elf_visibility to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @obj_elf_visibility(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %2, align 4
  br label %8

8:                                                ; preds = %49, %1
  %9 = load i8*, i8** @input_line_pointer, align 8
  store i8* %9, i8** %3, align 8
  %10 = call i32 (...) @get_symbol_end()
  store i32 %10, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call i32* @symbol_find_or_make(i8* %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = trunc i32 %13 to i8
  %15 = load i8*, i8** @input_line_pointer, align 8
  store i8 %14, i8* %15, align 1
  %16 = call i32 (...) @SKIP_WHITESPACE()
  %17 = load i32*, i32** %5, align 8
  %18 = call i32* @symbol_get_bfdsym(i32* %17)
  store i32* %18, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @bfd_asymbol_bfd(i32* %19)
  %21 = load i32*, i32** %6, align 8
  %22 = call %struct.TYPE_6__* @elf_symbol_from(i32 %20, i32* %21)
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %7, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %24 = call i32 @assert(%struct.TYPE_6__* %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, -4
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %2, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %30
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp eq i32 %36, 44
  br i1 %37, label %38, label %48

38:                                               ; preds = %8
  %39 = load i8*, i8** @input_line_pointer, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** @input_line_pointer, align 8
  %41 = call i32 (...) @SKIP_WHITESPACE()
  %42 = load i8*, i8** @input_line_pointer, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 10
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 10, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %38
  br label %48

48:                                               ; preds = %47, %8
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, 44
  br i1 %51, label %8, label %52

52:                                               ; preds = %49
  %53 = call i32 (...) @demand_empty_rest_of_line()
  ret void
}

declare dso_local i32 @get_symbol_end(...) #1

declare dso_local i32* @symbol_find_or_make(i8*) #1

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i32* @symbol_get_bfdsym(i32*) #1

declare dso_local %struct.TYPE_6__* @elf_symbol_from(i32, i32*) #1

declare dso_local i32 @bfd_asymbol_bfd(i32*) #1

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i32 @demand_empty_rest_of_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
