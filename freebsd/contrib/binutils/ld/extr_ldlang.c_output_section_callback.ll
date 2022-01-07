; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_output_section_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_output_section_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.wildcard_list = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.wildcard_list*, i32*, i32*, i8*)* @output_section_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_section_callback(%struct.TYPE_11__* %0, %struct.wildcard_list* %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.wildcard_list*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_13__, align 8
  %13 = alloca %struct.TYPE_12__**, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.wildcard_list* %1, %struct.wildcard_list** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = call i64 @unique_section_p(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %81

18:                                               ; preds = %5
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = load %struct.wildcard_list*, %struct.wildcard_list** %7, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call %struct.TYPE_12__* @wild_sort(%struct.TYPE_11__* %19, %struct.wildcard_list* %20, i32* %21, i32* %22)
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %11, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %25 = icmp eq %struct.TYPE_12__* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32*, i32** %8, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = call i32 @lang_add_section(%struct.TYPE_13__* %28, i32* %29, i32* %31)
  br label %81

33:                                               ; preds = %18
  %34 = call i32 @lang_list_init(%struct.TYPE_13__* %12)
  %35 = load i32*, i32** %8, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = call i32 @lang_add_section(%struct.TYPE_13__* %12, i32* %35, i32* %37)
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = icmp ne %struct.TYPE_12__* %40, null
  br i1 %41, label %42, label %80

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = icmp eq %struct.TYPE_12__* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @ASSERT(i32 %49)
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  store %struct.TYPE_12__** %53, %struct.TYPE_12__*** %13, align 8
  br label %54

54:                                               ; preds = %65, %42
  %55 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %13, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %58 = icmp ne %struct.TYPE_12__* %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %13, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = icmp ne %struct.TYPE_12__* %61, null
  %63 = zext i1 %62 to i32
  %64 = call i32 @ASSERT(i32 %63)
  br label %65

65:                                               ; preds = %59
  %66 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %13, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store %struct.TYPE_12__** %69, %struct.TYPE_12__*** %13, align 8
  br label %54

70:                                               ; preds = %54
  %71 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %13, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  store %struct.TYPE_12__* %72, %struct.TYPE_12__** %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %13, align 8
  store %struct.TYPE_12__* %78, %struct.TYPE_12__** %79, align 8
  br label %80

80:                                               ; preds = %70, %33
  br label %81

81:                                               ; preds = %17, %80, %26
  ret void
}

declare dso_local i64 @unique_section_p(i32*) #1

declare dso_local %struct.TYPE_12__* @wild_sort(%struct.TYPE_11__*, %struct.wildcard_list*, i32*, i32*) #1

declare dso_local i32 @lang_add_section(%struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32 @lang_list_init(%struct.TYPE_13__*) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
