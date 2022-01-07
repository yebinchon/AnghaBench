; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_opncls.c_bfd_fopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_opncls.c_bfd_fopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i32, i32, i32* }

@bfd_error_system_call = common dso_local global i32 0, align 4
@both_direction = common dso_local global i32 0, align 4
@read_direction = common dso_local global i32 0, align 4
@write_direction = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @bfd_fopen(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = call %struct.TYPE_8__* (...) @_bfd_new_bfd()
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %10, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %14 = icmp eq %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %105

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %19 = call i32* @bfd_find_target(i8* %17, %struct.TYPE_8__* %18)
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %24 = call i32 @_bfd_delete_bfd(%struct.TYPE_8__* %23)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %105

25:                                               ; preds = %16
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i32* @real_fopen(i8* %26, i8* %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load i32, i32* @bfd_error_system_call, align 4
  %37 = call i32 @bfd_set_error(i32 %36)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %39 = call i32 @_bfd_delete_bfd(%struct.TYPE_8__* %38)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %105

40:                                               ; preds = %25
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 114
  br i1 %48, label %61, label %49

49:                                               ; preds = %40
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 119
  br i1 %54, label %61, label %55

55:                                               ; preds = %49
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 97
  br i1 %60, label %61, label %71

61:                                               ; preds = %55, %49, %40
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 43
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, i32* @both_direction, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  br label %86

71:                                               ; preds = %61, %55
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 114
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i32, i32* @read_direction, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  br label %85

81:                                               ; preds = %71
  %82 = load i32, i32* @write_direction, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %77
  br label %86

86:                                               ; preds = %85, %67
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %88 = call i32 @bfd_cache_init(%struct.TYPE_8__* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %86
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %92 = call i32 @_bfd_delete_bfd(%struct.TYPE_8__* %91)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %105

93:                                               ; preds = %86
  %94 = load i32, i32* @TRUE, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %103

99:                                               ; preds = %93
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %101 = load i32, i32* @TRUE, align 4
  %102 = call i32 @bfd_set_cacheable(%struct.TYPE_8__* %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %93
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %104, %struct.TYPE_8__** %5, align 8
  br label %105

105:                                              ; preds = %103, %90, %35, %22, %15
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %106
}

declare dso_local %struct.TYPE_8__* @_bfd_new_bfd(...) #1

declare dso_local i32* @bfd_find_target(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @_bfd_delete_bfd(%struct.TYPE_8__*) #1

declare dso_local i32* @real_fopen(i8*, i8*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @bfd_cache_init(%struct.TYPE_8__*) #1

declare dso_local i32 @bfd_set_cacheable(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
