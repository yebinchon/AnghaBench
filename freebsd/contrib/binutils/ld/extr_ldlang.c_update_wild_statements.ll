; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_update_wild_statements.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_update_wild_statements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_16__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_19__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_19__* }
%struct.TYPE_13__ = type { %struct.wildcard_list* }
%struct.wildcard_list = type { %struct.TYPE_14__, %struct.wildcard_list* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_19__* }

@sort_section = common dso_local global i32 0, align 4
@by_name_alignment = common dso_local global i32 0, align 4
@by_alignment_name = common dso_local global i32 0, align 4
@constructor_list = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*)* @update_wild_statements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_wild_statements(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.wildcard_list*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %4 = load i32, i32* @sort_section, align 4
  switch i32 %4, label %5 [
    i32 128, label %7
    i32 133, label %8
    i32 134, label %8
  ]

5:                                                ; preds = %1
  %6 = call i32 (...) @FAIL()
  br label %7

7:                                                ; preds = %1, %5
  br label %86

8:                                                ; preds = %1, %1
  br label %9

9:                                                ; preds = %80, %8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %11 = icmp ne %struct.TYPE_19__* %10, null
  br i1 %11, label %12, label %85

12:                                               ; preds = %9
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %17 [
    i32 129, label %18
    i32 132, label %65
    i32 130, label %67
    i32 131, label %73
  ]

17:                                               ; preds = %12
  br label %79

18:                                               ; preds = %12
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.wildcard_list*, %struct.wildcard_list** %21, align 8
  store %struct.wildcard_list* %22, %struct.wildcard_list** %3, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load %struct.wildcard_list*, %struct.wildcard_list** %25, align 8
  store %struct.wildcard_list* %26, %struct.wildcard_list** %3, align 8
  br label %27

27:                                               ; preds = %60, %18
  %28 = load %struct.wildcard_list*, %struct.wildcard_list** %3, align 8
  %29 = icmp ne %struct.wildcard_list* %28, null
  br i1 %29, label %30, label %64

30:                                               ; preds = %27
  %31 = load %struct.wildcard_list*, %struct.wildcard_list** %3, align 8
  %32 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %58 [
    i32 128, label %35
    i32 133, label %40
    i32 134, label %49
  ]

35:                                               ; preds = %30
  %36 = load i32, i32* @sort_section, align 4
  %37 = load %struct.wildcard_list*, %struct.wildcard_list** %3, align 8
  %38 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  br label %59

40:                                               ; preds = %30
  %41 = load i32, i32* @sort_section, align 4
  %42 = icmp eq i32 %41, 134
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* @by_name_alignment, align 4
  %45 = load %struct.wildcard_list*, %struct.wildcard_list** %3, align 8
  %46 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  br label %48

48:                                               ; preds = %43, %40
  br label %59

49:                                               ; preds = %30
  %50 = load i32, i32* @sort_section, align 4
  %51 = icmp eq i32 %50, 133
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i32, i32* @by_alignment_name, align 4
  %54 = load %struct.wildcard_list*, %struct.wildcard_list** %3, align 8
  %55 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  br label %57

57:                                               ; preds = %52, %49
  br label %59

58:                                               ; preds = %30
  br label %59

59:                                               ; preds = %58, %57, %48, %35
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.wildcard_list*, %struct.wildcard_list** %3, align 8
  %62 = getelementptr inbounds %struct.wildcard_list, %struct.wildcard_list* %61, i32 0, i32 1
  %63 = load %struct.wildcard_list*, %struct.wildcard_list** %62, align 8
  store %struct.wildcard_list* %63, %struct.wildcard_list** %3, align 8
  br label %27

64:                                               ; preds = %27
  br label %79

65:                                               ; preds = %12
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @constructor_list, i32 0, i32 0), align 8
  call void @update_wild_statements(%struct.TYPE_19__* %66)
  br label %79

67:                                               ; preds = %12
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %71, align 8
  call void @update_wild_statements(%struct.TYPE_19__* %72)
  br label %79

73:                                               ; preds = %12
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  call void @update_wild_statements(%struct.TYPE_19__* %78)
  br label %79

79:                                               ; preds = %73, %67, %65, %64, %17
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %83, align 8
  store %struct.TYPE_19__* %84, %struct.TYPE_19__** %2, align 8
  br label %9

85:                                               ; preds = %9
  br label %86

86:                                               ; preds = %85, %7
  ret void
}

declare dso_local i32 @FAIL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
