; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_walk_wild_section_specs2_wild1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_walk_wild_section_specs2_wild1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.wildcard_list** }
%struct.wildcard_list = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_20__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_19__*, i32, i8*)* @walk_wild_section_specs2_wild1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_wild_section_specs2_wild1(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.wildcard_list*, align 8
  %11 = alloca %struct.wildcard_list*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %18 = load %struct.wildcard_list**, %struct.wildcard_list*** %17, align 8
  %19 = getelementptr inbounds %struct.wildcard_list*, %struct.wildcard_list** %18, i64 0
  %20 = load %struct.wildcard_list*, %struct.wildcard_list** %19, align 8
  store %struct.wildcard_list* %20, %struct.wildcard_list** %10, align 8
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 0
  %23 = load %struct.wildcard_list**, %struct.wildcard_list*** %22, align 8
  %24 = getelementptr inbounds %struct.wildcard_list*, %struct.wildcard_list** %23, i64 1
  %25 = load %struct.wildcard_list*, %struct.wildcard_list** %24, align 8
  store %struct.wildcard_list* %25, %struct.wildcard_list** %11, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %27 = load %struct.wildcard_list*, %struct.wildcard_list** %10, align 8
  %28 = call %struct.TYPE_20__* @find_section(%struct.TYPE_19__* %26, %struct.wildcard_list* %27, i32* %12)
  store %struct.TYPE_20__* %28, %struct.TYPE_20__** %13, align 8
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %4
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @walk_wild_section_general(%struct.TYPE_18__* %32, %struct.TYPE_19__* %33, i32 %34, i8* %35)
  br label %89

37:                                               ; preds = %4
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %41, align 8
  store %struct.TYPE_20__* %42, %struct.TYPE_20__** %9, align 8
  br label %43

43:                                               ; preds = %85, %37
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %45 = icmp ne %struct.TYPE_20__* %44, null
  br i1 %45, label %46, label %89

46:                                               ; preds = %43
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %49 = icmp eq %struct.TYPE_20__* %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %54 = load %struct.wildcard_list*, %struct.wildcard_list** %10, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @walk_wild_consider_section(%struct.TYPE_18__* %51, %struct.TYPE_19__* %52, %struct.TYPE_20__* %53, %struct.wildcard_list* %54, i32 %55, i8* %56)
  br label %84

58:                                               ; preds = %46
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %60, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %63 = call i8* @bfd_get_section_name(%struct.TYPE_16__* %61, %struct.TYPE_20__* %62)
  store i8* %63, i8** %14, align 8
  %64 = load %struct.wildcard_list*, %struct.wildcard_list** %11, align 8
  %65 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i8*, i8** %14, align 8
  %69 = call i32 @match_simple_wild(i32 %67, i8* %68)
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %58
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %79 = load %struct.wildcard_list*, %struct.wildcard_list** %11, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @walk_wild_consider_section(%struct.TYPE_18__* %76, %struct.TYPE_19__* %77, %struct.TYPE_20__* %78, %struct.wildcard_list* %79, i32 %80, i8* %81)
  br label %83

83:                                               ; preds = %75, %58
  br label %84

84:                                               ; preds = %83, %50
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %87, align 8
  store %struct.TYPE_20__* %88, %struct.TYPE_20__** %9, align 8
  br label %43

89:                                               ; preds = %31, %43
  ret void
}

declare dso_local %struct.TYPE_20__* @find_section(%struct.TYPE_19__*, %struct.wildcard_list*, i32*) #1

declare dso_local i32 @walk_wild_section_general(%struct.TYPE_18__*, %struct.TYPE_19__*, i32, i8*) #1

declare dso_local i32 @walk_wild_consider_section(%struct.TYPE_18__*, %struct.TYPE_19__*, %struct.TYPE_20__*, %struct.wildcard_list*, i32, i8*) #1

declare dso_local i8* @bfd_get_section_name(%struct.TYPE_16__*, %struct.TYPE_20__*) #1

declare dso_local i32 @match_simple_wild(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
