; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_write.c_set_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_write.c_set_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@symbol_rootP = common dso_local global i32* null, align 8
@stdoutput = common dso_local global i32 0, align 4
@symbol_table_frozen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_symtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_symtab() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = load i32*, i32** @symbol_rootP, align 8
  store i32* %7, i32** %3, align 8
  br label %8

8:                                                ; preds = %14, %0
  %9 = load i32*, i32** %3, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %1, align 4
  br label %14

14:                                               ; preds = %11
  %15 = load i32*, i32** %3, align 8
  %16 = call i32* @symbol_next(i32* %15)
  store i32* %16, i32** %3, align 8
  br label %8

17:                                               ; preds = %8
  %18 = load i32, i32* %1, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %17
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @stdoutput, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32** @bfd_alloc(i32 %25, i32 %26)
  store i32** %27, i32*** %2, align 8
  %28 = load i32*, i32** @symbol_rootP, align 8
  store i32* %28, i32** %3, align 8
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %42, %20
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %1, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load i32*, i32** %3, align 8
  %35 = call i32* @symbol_get_bfdsym(i32* %34)
  %36 = load i32**, i32*** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  store i32* %35, i32** %39, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @symbol_mark_written(i32* %40)
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  %45 = load i32*, i32** %3, align 8
  %46 = call i32* @symbol_next(i32* %45)
  store i32* %46, i32** %3, align 8
  br label %29

47:                                               ; preds = %29
  br label %49

48:                                               ; preds = %17
  store i32** null, i32*** %2, align 8
  br label %49

49:                                               ; preds = %48, %47
  %50 = load i32, i32* @stdoutput, align 4
  %51 = load i32**, i32*** %2, align 8
  %52 = load i32, i32* %1, align 4
  %53 = call i32 @bfd_set_symtab(i32 %50, i32** %51, i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @assert(i32 %54)
  store i32 1, i32* @symbol_table_frozen, align 4
  ret void
}

declare dso_local i32* @symbol_next(i32*) #1

declare dso_local i32** @bfd_alloc(i32, i32) #1

declare dso_local i32* @symbol_get_bfdsym(i32*) #1

declare dso_local i32 @symbol_mark_written(i32*) #1

declare dso_local i32 @bfd_set_symtab(i32, i32**, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
