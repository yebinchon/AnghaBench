; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_walk_wild_section_specs3_wild2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_walk_wild_section_specs3_wild2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.wildcard_list** }
%struct.wildcard_list = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_20__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, %struct.TYPE_19__*, i32, i8*)* @walk_wild_section_specs3_wild2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_wild_section_specs3_wild2(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.wildcard_list*, align 8
  %11 = alloca %struct.wildcard_list*, align 8
  %12 = alloca %struct.wildcard_list*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_20__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %19 = load %struct.wildcard_list**, %struct.wildcard_list*** %18, align 8
  %20 = getelementptr inbounds %struct.wildcard_list*, %struct.wildcard_list** %19, i64 0
  %21 = load %struct.wildcard_list*, %struct.wildcard_list** %20, align 8
  store %struct.wildcard_list* %21, %struct.wildcard_list** %10, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load %struct.wildcard_list**, %struct.wildcard_list*** %23, align 8
  %25 = getelementptr inbounds %struct.wildcard_list*, %struct.wildcard_list** %24, i64 1
  %26 = load %struct.wildcard_list*, %struct.wildcard_list** %25, align 8
  store %struct.wildcard_list* %26, %struct.wildcard_list** %11, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load %struct.wildcard_list**, %struct.wildcard_list*** %28, align 8
  %30 = getelementptr inbounds %struct.wildcard_list*, %struct.wildcard_list** %29, i64 2
  %31 = load %struct.wildcard_list*, %struct.wildcard_list** %30, align 8
  store %struct.wildcard_list* %31, %struct.wildcard_list** %12, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %33 = load %struct.wildcard_list*, %struct.wildcard_list** %10, align 8
  %34 = call %struct.TYPE_20__* @find_section(%struct.TYPE_19__* %32, %struct.wildcard_list* %33, i32* %13)
  store %struct.TYPE_20__* %34, %struct.TYPE_20__** %14, align 8
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @walk_wild_section_general(%struct.TYPE_18__* %38, %struct.TYPE_19__* %39, i32 %40, i8* %41)
  br label %116

43:                                               ; preds = %4
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %47, align 8
  store %struct.TYPE_20__* %48, %struct.TYPE_20__** %9, align 8
  br label %49

49:                                               ; preds = %112, %43
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %51 = icmp ne %struct.TYPE_20__* %50, null
  br i1 %51, label %52, label %116

52:                                               ; preds = %49
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %14, align 8
  %55 = icmp eq %struct.TYPE_20__* %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %60 = load %struct.wildcard_list*, %struct.wildcard_list** %10, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @walk_wild_consider_section(%struct.TYPE_18__* %57, %struct.TYPE_19__* %58, %struct.TYPE_20__* %59, %struct.wildcard_list* %60, i32 %61, i8* %62)
  br label %111

64:                                               ; preds = %52
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %69 = call i8* @bfd_get_section_name(%struct.TYPE_16__* %67, %struct.TYPE_20__* %68)
  store i8* %69, i8** %15, align 8
  %70 = load %struct.wildcard_list*, %struct.wildcard_list** %11, align 8
  %71 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %15, align 8
  %75 = call i32 @match_simple_wild(i32 %73, i8* %74)
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %64
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %85 = load %struct.wildcard_list*, %struct.wildcard_list** %11, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i8*, i8** %8, align 8
  %88 = call i32 @walk_wild_consider_section(%struct.TYPE_18__* %82, %struct.TYPE_19__* %83, %struct.TYPE_20__* %84, %struct.wildcard_list* %85, i32 %86, i8* %87)
  br label %110

89:                                               ; preds = %64
  %90 = load %struct.wildcard_list*, %struct.wildcard_list** %12, align 8
  %91 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i8*, i8** %15, align 8
  %95 = call i32 @match_simple_wild(i32 %93, i8* %94)
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %89
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %105 = load %struct.wildcard_list*, %struct.wildcard_list** %12, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load i8*, i8** %8, align 8
  %108 = call i32 @walk_wild_consider_section(%struct.TYPE_18__* %102, %struct.TYPE_19__* %103, %struct.TYPE_20__* %104, %struct.wildcard_list* %105, i32 %106, i8* %107)
  br label %109

109:                                              ; preds = %101, %89
  br label %110

110:                                              ; preds = %109, %81
  br label %111

111:                                              ; preds = %110, %56
  br label %112

112:                                              ; preds = %111
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %114, align 8
  store %struct.TYPE_20__* %115, %struct.TYPE_20__** %9, align 8
  br label %49

116:                                              ; preds = %37, %49
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
