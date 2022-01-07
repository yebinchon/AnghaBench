; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_walk_wild_section_general.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_walk_wild_section_general.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.wildcard_list* }
%struct.wildcard_list = type { %struct.wildcard_list*, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32* }
%struct.TYPE_27__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_28__* }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, %struct.TYPE_27__*, i32 (%struct.TYPE_26__*, %struct.wildcard_list*, %struct.TYPE_28__*, %struct.TYPE_27__*, i8*)*, i8*)* @walk_wild_section_general to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_wild_section_general(%struct.TYPE_26__* %0, %struct.TYPE_27__* %1, i32 (%struct.TYPE_26__*, %struct.wildcard_list*, %struct.TYPE_28__*, %struct.TYPE_27__*, i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i32 (%struct.TYPE_26__*, %struct.wildcard_list*, %struct.TYPE_28__*, %struct.TYPE_27__*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.wildcard_list*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %5, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %6, align 8
  store i32 (%struct.TYPE_26__*, %struct.wildcard_list*, %struct.TYPE_28__*, %struct.TYPE_27__*, i8*)* %2, i32 (%struct.TYPE_26__*, %struct.wildcard_list*, %struct.TYPE_28__*, %struct.TYPE_27__*, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  store %struct.TYPE_28__* %17, %struct.TYPE_28__** %9, align 8
  br label %18

18:                                               ; preds = %93, %4
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %20 = icmp ne %struct.TYPE_28__* %19, null
  br i1 %20, label %21, label %97

21:                                               ; preds = %18
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 0
  %24 = load %struct.wildcard_list*, %struct.wildcard_list** %23, align 8
  store %struct.wildcard_list* %24, %struct.wildcard_list** %10, align 8
  %25 = load %struct.wildcard_list*, %struct.wildcard_list** %10, align 8
  %26 = icmp eq %struct.wildcard_list* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load i32 (%struct.TYPE_26__*, %struct.wildcard_list*, %struct.TYPE_28__*, %struct.TYPE_27__*, i8*)*, i32 (%struct.TYPE_26__*, %struct.wildcard_list*, %struct.TYPE_28__*, %struct.TYPE_27__*, i8*)** %7, align 8
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %30 = load %struct.wildcard_list*, %struct.wildcard_list** %10, align 8
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 %28(%struct.TYPE_26__* %29, %struct.wildcard_list* %30, %struct.TYPE_28__* %31, %struct.TYPE_27__* %32, i8* %33)
  br label %35

35:                                               ; preds = %27, %21
  br label %36

36:                                               ; preds = %88, %35
  %37 = load %struct.wildcard_list*, %struct.wildcard_list** %10, align 8
  %38 = icmp ne %struct.wildcard_list* %37, null
  br i1 %38, label %39, label %92

39:                                               ; preds = %36
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %11, align 4
  %41 = load %struct.wildcard_list*, %struct.wildcard_list** %10, align 8
  %42 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %77

46:                                               ; preds = %39
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %48, align 8
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %51 = call i8* @bfd_get_section_name(%struct.TYPE_25__* %49, %struct.TYPE_28__* %50)
  store i8* %51, i8** %12, align 8
  %52 = load %struct.wildcard_list*, %struct.wildcard_list** %10, align 8
  %53 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i64 @wildcardp(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %46
  %59 = load %struct.wildcard_list*, %struct.wildcard_list** %10, align 8
  %60 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = call i64 @fnmatch(i32* %62, i8* %63, i32 0)
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %11, align 4
  br label %76

67:                                               ; preds = %46
  %68 = load %struct.wildcard_list*, %struct.wildcard_list** %10, align 8
  %69 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = call i64 @strcmp(i32* %71, i8* %72)
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %67, %58
  br label %77

77:                                               ; preds = %76, %39
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %77
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %84 = load %struct.wildcard_list*, %struct.wildcard_list** %10, align 8
  %85 = load i32 (%struct.TYPE_26__*, %struct.wildcard_list*, %struct.TYPE_28__*, %struct.TYPE_27__*, i8*)*, i32 (%struct.TYPE_26__*, %struct.wildcard_list*, %struct.TYPE_28__*, %struct.TYPE_27__*, i8*)** %7, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @walk_wild_consider_section(%struct.TYPE_26__* %81, %struct.TYPE_27__* %82, %struct.TYPE_28__* %83, %struct.wildcard_list* %84, i32 (%struct.TYPE_26__*, %struct.wildcard_list*, %struct.TYPE_28__*, %struct.TYPE_27__*, i8*)* %85, i8* %86)
  br label %88

88:                                               ; preds = %80, %77
  %89 = load %struct.wildcard_list*, %struct.wildcard_list** %10, align 8
  %90 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %89, i32 0, i32 0
  %91 = load %struct.wildcard_list*, %struct.wildcard_list** %90, align 8
  store %struct.wildcard_list* %91, %struct.wildcard_list** %10, align 8
  br label %36

92:                                               ; preds = %36
  br label %93

93:                                               ; preds = %92
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %95, align 8
  store %struct.TYPE_28__* %96, %struct.TYPE_28__** %9, align 8
  br label %18

97:                                               ; preds = %18
  ret void
}

declare dso_local i8* @bfd_get_section_name(%struct.TYPE_25__*, %struct.TYPE_28__*) #1

declare dso_local i64 @wildcardp(i32*) #1

declare dso_local i64 @fnmatch(i32*, i8*, i32) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @walk_wild_consider_section(%struct.TYPE_26__*, %struct.TYPE_27__*, %struct.TYPE_28__*, %struct.wildcard_list*, i32 (%struct.TYPE_26__*, %struct.wildcard_list*, %struct.TYPE_28__*, %struct.TYPE_27__*, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
