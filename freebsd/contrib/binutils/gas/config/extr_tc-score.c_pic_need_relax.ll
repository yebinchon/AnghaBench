; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_pic_need_relax.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_pic_need_relax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@FALSE = common dso_local global i32 0, align 4
@stdoutput = common dso_local global i32 0, align 4
@SEC_LINK_ONCE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c".gnu.linkonce\00", align 1
@bfd_und_section = common dso_local global i32 0, align 4
@bfd_abs_section = common dso_local global i32 0, align 4
@OUTPUT_FLAVOR = common dso_local global i64 0, align 8
@bfd_target_elf_flavour = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @pic_need_relax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pic_need_relax(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  br label %8

8:                                                ; preds = %21, %2
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @symbol_equated_reloc_p(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = load i32*, i32** %3, align 8
  %14 = call %struct.TYPE_2__* @symbol_get_value_expression(i32* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = icmp eq i32* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %23

21:                                               ; preds = %12
  %22 = load i32*, i32** %7, align 8
  store i32* %22, i32** %3, align 8
  br label %8

23:                                               ; preds = %20, %8
  %24 = load i32*, i32** %3, align 8
  %25 = call i32* @S_GET_SEGMENT(i32* %24)
  store i32* %25, i32** %5, align 8
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = icmp ne i32* %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %23
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @S_IS_LOCAL(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @stdoutput, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @bfd_get_section_flags(i32 %35, i32* %36)
  %38 = load i32, i32* @SEC_LINK_ONCE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @TRUE, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %41, %34
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @segment_name(i32* %44)
  %46 = call i64 @strncmp(i32 %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 13)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %43
  br label %51

51:                                               ; preds = %50, %30, %23
  %52 = load i32*, i32** %5, align 8
  %53 = icmp ne i32* %52, @bfd_und_section
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load i32*, i32** %5, align 8
  %56 = icmp ne i32* %55, @bfd_abs_section
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @bfd_is_com_section(i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br label %65

65:                                               ; preds = %61, %57, %54, %51
  %66 = phi i1 [ false, %57 ], [ false, %54 ], [ false, %51 ], [ %64, %61 ]
  %67 = zext i1 %66 to i32
  ret i32 %67
}

declare dso_local i64 @symbol_equated_reloc_p(i32*) #1

declare dso_local %struct.TYPE_2__* @symbol_get_value_expression(i32*) #1

declare dso_local i32* @S_GET_SEGMENT(i32*) #1

declare dso_local i32 @S_IS_LOCAL(i32*) #1

declare dso_local i32 @bfd_get_section_flags(i32, i32*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @segment_name(i32*) #1

declare dso_local i32 @bfd_is_com_section(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
