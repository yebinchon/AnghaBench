; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_pic_need_relax.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mips.c_pic_need_relax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@TRUE = common dso_local global i32 0, align 4
@bfd_und_section = common dso_local global i32 0, align 4
@bfd_abs_section = common dso_local global i32 0, align 4
@IS_ELF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @pic_need_relax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pic_need_relax(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  br label %8

8:                                                ; preds = %21, %2
  %9 = load i32*, i32** %4, align 8
  %10 = call i64 @symbol_equated_reloc_p(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load i32*, i32** %4, align 8
  %14 = call %struct.TYPE_2__* @symbol_get_value_expression(i32* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = icmp eq i32* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %23

21:                                               ; preds = %12
  %22 = load i32*, i32** %7, align 8
  store i32* %22, i32** %4, align 8
  br label %8

23:                                               ; preds = %20, %8
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @symbol_section_p(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %3, align 4
  br label %50

29:                                               ; preds = %23
  %30 = load i32*, i32** %4, align 8
  %31 = call i32* @S_GET_SEGMENT(i32* %30)
  store i32* %31, i32** %6, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = icmp ne i32* %32, @bfd_und_section
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load i32*, i32** %6, align 8
  %36 = icmp ne i32* %35, @bfd_abs_section
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @bfd_is_com_section(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @s_is_linkonce(i32* %42, i32* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br label %47

47:                                               ; preds = %41, %37, %34, %29
  %48 = phi i1 [ false, %37 ], [ false, %34 ], [ false, %29 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %27
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @symbol_equated_reloc_p(i32*) #1

declare dso_local %struct.TYPE_2__* @symbol_get_value_expression(i32*) #1

declare dso_local i64 @symbol_section_p(i32*) #1

declare dso_local i32* @S_GET_SEGMENT(i32*) #1

declare dso_local i32 @bfd_is_com_section(i32*) #1

declare dso_local i32 @s_is_linkonce(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
