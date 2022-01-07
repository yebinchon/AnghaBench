; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_check_section_addresses.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_check_section_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_10__* }

@output_bfd = common dso_local global %struct.TYPE_11__* null, align 8
@sort_sections_by_lma = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"%X%P: section %s [%V -> %V] overlaps section %s [%V -> %V]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @lang_check_section_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lang_check_section_addresses() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_10__**, align 8
  %4 = alloca %struct.TYPE_10__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** @output_bfd, align 8
  %12 = call i32 @bfd_count_sections(%struct.TYPE_11__* %11)
  %13 = icmp sle i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  br label %124

15:                                               ; preds = %0
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** @output_bfd, align 8
  %17 = call i32 @bfd_count_sections(%struct.TYPE_11__* %16)
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call %struct.TYPE_10__** @xmalloc(i32 %21)
  store %struct.TYPE_10__** %22, %struct.TYPE_10__*** %3, align 8
  store i32 0, i32* %5, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** @output_bfd, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %1, align 8
  br label %26

26:                                               ; preds = %47, %15
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %28 = icmp ne %struct.TYPE_10__* %27, null
  br i1 %28, label %29, label %51

29:                                               ; preds = %26
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %31 = call i64 @IGNORE_SECTION(%struct.TYPE_10__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %29
  br label %47

39:                                               ; preds = %33
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %41 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %41, i64 %43
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %44, align 8
  %45 = load i32, i32* %5, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %39, %38
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  store %struct.TYPE_10__* %50, %struct.TYPE_10__** %1, align 8
  br label %26

51:                                               ; preds = %26
  %52 = load i32, i32* %5, align 4
  %53 = icmp ule i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %124

55:                                               ; preds = %51
  %56 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = zext i32 %57 to i64
  %59 = load i32, i32* @sort_sections_by_lma, align 4
  %60 = call i32 @qsort(%struct.TYPE_10__** %56, i64 %58, i32 8, i32 %59)
  %61 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  store %struct.TYPE_10__** %61, %struct.TYPE_10__*** %4, align 8
  %62 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %62, i32 1
  store %struct.TYPE_10__** %63, %struct.TYPE_10__*** %4, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %1, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** @output_bfd, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %67 = call i64 @bfd_section_lma(%struct.TYPE_11__* %65, %struct.TYPE_10__* %66)
  store i64 %67, i64* %6, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @TO_ADDR(i64 %71)
  %73 = add nsw i64 %68, %72
  %74 = sub nsw i64 %73, 1
  store i64 %74, i64* %7, align 8
  %75 = load i32, i32* %5, align 4
  %76 = add i32 %75, -1
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %118, %55
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %121

80:                                               ; preds = %77
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %2, align 8
  %82 = load i64, i64* %6, align 8
  store i64 %82, i64* %8, align 8
  %83 = load i64, i64* %7, align 8
  store i64 %83, i64* %9, align 8
  %84 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %84, i32 1
  store %struct.TYPE_10__** %85, %struct.TYPE_10__*** %4, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  store %struct.TYPE_10__* %86, %struct.TYPE_10__** %1, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** @output_bfd, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %89 = call i64 @bfd_section_lma(%struct.TYPE_11__* %87, %struct.TYPE_10__* %88)
  store i64 %89, i64* %6, align 8
  %90 = load i64, i64* %6, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i64 @TO_ADDR(i64 %93)
  %95 = add nsw i64 %90, %94
  %96 = sub nsw i64 %95, 1
  store i64 %96, i64* %7, align 8
  %97 = load i64, i64* %7, align 8
  %98 = load i64, i64* %8, align 8
  %99 = icmp sge i64 %97, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %80
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* %9, align 8
  %103 = icmp sle i64 %101, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %100
  %105 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* %7, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i64, i64* %8, align 8
  %115 = load i64, i64* %9, align 8
  %116 = call i32 @einfo(i32 %105, i32 %108, i64 %109, i64 %110, i32 %113, i64 %114, i64 %115)
  br label %117

117:                                              ; preds = %104, %100, %80
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %5, align 4
  %120 = add i32 %119, -1
  store i32 %120, i32* %5, align 4
  br label %77

121:                                              ; preds = %77
  %122 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %3, align 8
  %123 = call i32 @free(%struct.TYPE_10__** %122)
  br label %124

124:                                              ; preds = %121, %54, %14
  ret void
}

declare dso_local i32 @bfd_count_sections(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__** @xmalloc(i32) #1

declare dso_local i64 @IGNORE_SECTION(%struct.TYPE_10__*) #1

declare dso_local i32 @qsort(%struct.TYPE_10__**, i64, i32, i32) #1

declare dso_local i64 @bfd_section_lma(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i64 @TO_ADDR(i64) #1

declare dso_local i32 @einfo(i32, i32, i64, i64, i32, i64, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @free(%struct.TYPE_10__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
