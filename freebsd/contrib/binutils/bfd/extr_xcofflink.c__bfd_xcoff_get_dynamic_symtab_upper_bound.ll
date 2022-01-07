; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c__bfd_xcoff_get_dynamic_symtab_upper_bound.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c__bfd_xcoff_get_dynamic_symtab_upper_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.internal_ldhdr = type { i32 }
%struct.TYPE_9__ = type { i32* }

@DYNAMIC = common dso_local global i32 0, align 4
@bfd_error_invalid_operation = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c".loader\00", align 1
@bfd_error_no_symbols = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_bfd_xcoff_get_dynamic_symtab_upper_bound(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.internal_ldhdr, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @DYNAMIC, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @bfd_error_invalid_operation, align 4
  %15 = call i32 @bfd_set_error(i32 %14)
  store i64 -1, i64* %2, align 8
  br label %45

16:                                               ; preds = %1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = call i32* @bfd_get_section_by_name(%struct.TYPE_8__* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @bfd_error_no_symbols, align 4
  %23 = call i32 @bfd_set_error(i32 %22)
  store i64 -1, i64* %2, align 8
  br label %45

24:                                               ; preds = %16
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @xcoff_get_section_contents(%struct.TYPE_8__* %25, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i64 -1, i64* %2, align 8
  br label %45

30:                                               ; preds = %24
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call %struct.TYPE_9__* @coff_section_data(%struct.TYPE_8__* %31, i32* %32)
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %5, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = bitcast i32* %37 to i8*
  %39 = call i32 @bfd_xcoff_swap_ldhdr_in(%struct.TYPE_8__* %36, i8* %38, %struct.internal_ldhdr* %6)
  %40 = getelementptr inbounds %struct.internal_ldhdr, %struct.internal_ldhdr* %6, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 8
  store i64 %44, i64* %2, align 8
  br label %45

45:                                               ; preds = %30, %29, %21, %13
  %46 = load i64, i64* %2, align 8
  ret i64 %46
}

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32* @bfd_get_section_by_name(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @xcoff_get_section_contents(%struct.TYPE_8__*, i32*) #1

declare dso_local %struct.TYPE_9__* @coff_section_data(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @bfd_xcoff_swap_ldhdr_in(%struct.TYPE_8__*, i8*, %struct.internal_ldhdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
