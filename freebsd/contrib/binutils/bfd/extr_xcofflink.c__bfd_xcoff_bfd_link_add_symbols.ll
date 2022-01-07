; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c__bfd_xcoff_bfd_link_add_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c__bfd_xcoff_bfd_link_add_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.bfd_link_info = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@DYNAMIC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@bfd_error_wrong_format = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_xcoff_bfd_link_add_symbols(%struct.TYPE_15__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %9 = call i32 @bfd_get_format(%struct.TYPE_15__* %8)
  switch i32 %9, label %77 [
    i32 128, label %10
    i32 129, label %14
  ]

10:                                               ; preds = %2
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %12 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %13 = call i32 @xcoff_link_add_object_symbols(%struct.TYPE_15__* %11, %struct.bfd_link_info* %12)
  store i32 %13, i32* %3, align 4
  br label %81

14:                                               ; preds = %2
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = call i32 @bfd_has_map(%struct.TYPE_15__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %20 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %21 = call i32 @_bfd_generic_link_add_archive_symbols(%struct.TYPE_15__* %19, %struct.bfd_link_info* %20, i32 (%struct.TYPE_15__*, %struct.bfd_link_info*, i32*)* @xcoff_link_check_archive_element)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %3, align 4
  br label %81

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25, %14
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = call %struct.TYPE_15__* @bfd_openr_next_archived_file(%struct.TYPE_15__* %27, %struct.TYPE_15__* null)
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %6, align 8
  br label %29

29:                                               ; preds = %71, %26
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = icmp ne %struct.TYPE_15__* %30, null
  br i1 %31, label %32, label %75

32:                                               ; preds = %29
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %34 = call i32 @bfd_check_format(%struct.TYPE_15__* %33, i32 128)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %71

36:                                               ; preds = %32
  %37 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %38 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %37, i32 0, i32 0
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %36
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %48 = call i32 @bfd_has_map(%struct.TYPE_15__* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DYNAMIC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %50, %46
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %60 = call i32 @xcoff_link_check_archive_element(%struct.TYPE_15__* %58, %struct.bfd_link_info* %59, i32* %7)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @FALSE, align 4
  store i32 %63, i32* %3, align 4
  br label %81

64:                                               ; preds = %57
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  store i32 -1, i32* %69, align 4
  br label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %70, %50, %36, %32
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %74 = call %struct.TYPE_15__* @bfd_openr_next_archived_file(%struct.TYPE_15__* %72, %struct.TYPE_15__* %73)
  store %struct.TYPE_15__* %74, %struct.TYPE_15__** %6, align 8
  br label %29

75:                                               ; preds = %29
  %76 = load i32, i32* @TRUE, align 4
  store i32 %76, i32* %3, align 4
  br label %81

77:                                               ; preds = %2
  %78 = load i32, i32* @bfd_error_wrong_format, align 4
  %79 = call i32 @bfd_set_error(i32 %78)
  %80 = load i32, i32* @FALSE, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %77, %75, %62, %23, %10
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @bfd_get_format(%struct.TYPE_15__*) #1

declare dso_local i32 @xcoff_link_add_object_symbols(%struct.TYPE_15__*, %struct.bfd_link_info*) #1

declare dso_local i32 @bfd_has_map(%struct.TYPE_15__*) #1

declare dso_local i32 @_bfd_generic_link_add_archive_symbols(%struct.TYPE_15__*, %struct.bfd_link_info*, i32 (%struct.TYPE_15__*, %struct.bfd_link_info*, i32*)*) #1

declare dso_local i32 @xcoff_link_check_archive_element(%struct.TYPE_15__*, %struct.bfd_link_info*, i32*) #1

declare dso_local %struct.TYPE_15__* @bfd_openr_next_archived_file(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @bfd_check_format(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @bfd_set_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
