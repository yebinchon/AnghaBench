; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_unique_section_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_unique_section_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.unique_sections = type { i32, %struct.unique_sections* }
%struct.TYPE_5__ = type { i8*, i32* }

@link_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@unique_section_list = common dso_local global %struct.unique_sections* null, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unique_section_p(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.unique_sections*, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @link_info, i32 0, i32 0), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %18 = call i64 @bfd_is_group_section(i32* %16, %struct.TYPE_5__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %2, align 4
  br label %59

22:                                               ; preds = %13, %8, %1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %5, align 8
  %26 = load %struct.unique_sections*, %struct.unique_sections** @unique_section_list, align 8
  store %struct.unique_sections* %26, %struct.unique_sections** %4, align 8
  br label %27

27:                                               ; preds = %53, %22
  %28 = load %struct.unique_sections*, %struct.unique_sections** %4, align 8
  %29 = icmp ne %struct.unique_sections* %28, null
  br i1 %29, label %30, label %57

30:                                               ; preds = %27
  %31 = load %struct.unique_sections*, %struct.unique_sections** %4, align 8
  %32 = getelementptr inbounds %struct.unique_sections, %struct.unique_sections* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @wildcardp(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.unique_sections*, %struct.unique_sections** %4, align 8
  %38 = getelementptr inbounds %struct.unique_sections, %struct.unique_sections* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i64 @fnmatch(i32 %39, i8* %40, i32 0)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %50, label %52

43:                                               ; preds = %30
  %44 = load %struct.unique_sections*, %struct.unique_sections** %4, align 8
  %45 = getelementptr inbounds %struct.unique_sections, %struct.unique_sections* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = call i64 @strcmp(i32 %46, i8* %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43, %36
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %2, align 4
  br label %59

52:                                               ; preds = %43, %36
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.unique_sections*, %struct.unique_sections** %4, align 8
  %55 = getelementptr inbounds %struct.unique_sections, %struct.unique_sections* %54, i32 0, i32 1
  %56 = load %struct.unique_sections*, %struct.unique_sections** %55, align 8
  store %struct.unique_sections* %56, %struct.unique_sections** %4, align 8
  br label %27

57:                                               ; preds = %27
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %50, %20
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i64 @bfd_is_group_section(i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @wildcardp(i32) #1

declare dso_local i64 @fnmatch(i32, i8*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
