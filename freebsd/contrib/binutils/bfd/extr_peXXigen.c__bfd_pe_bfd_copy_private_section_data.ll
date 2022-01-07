; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peXXigen.c__bfd_pe_bfd_copy_private_section_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peXXigen.c__bfd_pe_bfd_copy_private_section_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32 }

@bfd_target_coff_flavour = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_XX_bfd_copy_private_section_data(i32* %0, %struct.TYPE_8__* %1, i32* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i64 @bfd_get_flavour(i32* %12)
  %14 = load i64, i64* @bfd_target_coff_flavour, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = load i32*, i32** %8, align 8
  %18 = call i64 @bfd_get_flavour(i32* %17)
  %19 = load i64, i64* @bfd_target_coff_flavour, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16, %4
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %5, align 4
  br label %96

23:                                               ; preds = %16
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = call %struct.TYPE_10__* @coff_section_data(i32* %24, %struct.TYPE_8__* %25)
  %27 = icmp ne %struct.TYPE_10__* %26, null
  br i1 %27, label %28, label %94

28:                                               ; preds = %23
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %31 = call %struct.TYPE_9__* @pei_section_data(i32* %29, %struct.TYPE_8__* %30)
  %32 = icmp ne %struct.TYPE_9__* %31, null
  br i1 %32, label %33, label %94

33:                                               ; preds = %28
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %36 = call %struct.TYPE_10__* @coff_section_data(i32* %34, %struct.TYPE_8__* %35)
  %37 = icmp eq %struct.TYPE_10__* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  store i32 4, i32* %10, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i8* @bfd_zalloc(i32* %39, i32 %40)
  %42 = bitcast i8* %41 to i32*
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i32* %42, i32** %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %5, align 4
  br label %96

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51, %33
  %53 = load i32*, i32** %8, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %55 = call %struct.TYPE_9__* @pei_section_data(i32* %53, %struct.TYPE_8__* %54)
  %56 = icmp eq %struct.TYPE_9__* %55, null
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  store i32 4, i32* %11, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i8* @bfd_zalloc(i32* %58, i32 %59)
  %61 = bitcast i8* %60 to i32*
  %62 = load i32*, i32** %8, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %64 = call %struct.TYPE_10__* @coff_section_data(i32* %62, %struct.TYPE_8__* %63)
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  store i32* %61, i32** %65, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %68 = call %struct.TYPE_10__* @coff_section_data(i32* %66, %struct.TYPE_8__* %67)
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %57
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %5, align 4
  br label %96

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74, %52
  %76 = load i32*, i32** %6, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %78 = call %struct.TYPE_9__* @pei_section_data(i32* %76, %struct.TYPE_8__* %77)
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %8, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %83 = call %struct.TYPE_9__* @pei_section_data(i32* %81, %struct.TYPE_8__* %82)
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  store i32 %80, i32* %84, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = call %struct.TYPE_9__* @pei_section_data(i32* %85, %struct.TYPE_8__* %86)
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %92 = call %struct.TYPE_9__* @pei_section_data(i32* %90, %struct.TYPE_8__* %91)
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  store i32 %89, i32* %93, align 4
  br label %94

94:                                               ; preds = %75, %28, %23
  %95 = load i32, i32* @TRUE, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %94, %72, %49, %21
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i64 @bfd_get_flavour(i32*) #1

declare dso_local %struct.TYPE_10__* @coff_section_data(i32*, %struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_9__* @pei_section_data(i32*, %struct.TYPE_8__*) #1

declare dso_local i8* @bfd_zalloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
