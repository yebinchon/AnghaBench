; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c__Unwind_Find_FDE.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c__Unwind_Find_FDE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i8*, %struct.TYPE_8__, i32, i32, %struct.object* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.dwarf_eh_bases = type { i8*, i32, i32 }

@object_mutex = common dso_local global i32 0, align 4
@seen_objects = common dso_local global %struct.object* null, align 8
@unseen_objects = common dso_local global %struct.object* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @_Unwind_Find_FDE(i8* %0, %struct.dwarf_eh_bases* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dwarf_eh_bases*, align 8
  %5 = alloca %struct.object*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.object**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.dwarf_eh_bases* %1, %struct.dwarf_eh_bases** %4, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %6, align 8
  %10 = call i32 (...) @init_object_mutex_once()
  %11 = call i32 @__gthread_mutex_lock(i32* @object_mutex)
  %12 = load %struct.object*, %struct.object** @seen_objects, align 8
  store %struct.object* %12, %struct.object** %5, align 8
  br label %13

13:                                               ; preds = %31, %2
  %14 = load %struct.object*, %struct.object** %5, align 8
  %15 = icmp ne %struct.object* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %13
  %17 = load i8*, i8** %3, align 8
  %18 = load %struct.object*, %struct.object** %5, align 8
  %19 = getelementptr inbounds %struct.object, %struct.object* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp uge i8* %17, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load %struct.object*, %struct.object** %5, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call %struct.TYPE_9__* @search_object(%struct.object* %23, i8* %24)
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %6, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %27 = icmp ne %struct.TYPE_9__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %77

29:                                               ; preds = %22
  br label %35

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.object*, %struct.object** %5, align 8
  %33 = getelementptr inbounds %struct.object, %struct.object* %32, i32 0, i32 4
  %34 = load %struct.object*, %struct.object** %33, align 8
  store %struct.object* %34, %struct.object** %5, align 8
  br label %13

35:                                               ; preds = %29, %13
  br label %36

36:                                               ; preds = %75, %35
  %37 = load %struct.object*, %struct.object** @unseen_objects, align 8
  store %struct.object* %37, %struct.object** %5, align 8
  %38 = icmp ne %struct.object* %37, null
  br i1 %38, label %39, label %76

39:                                               ; preds = %36
  %40 = load %struct.object*, %struct.object** %5, align 8
  %41 = getelementptr inbounds %struct.object, %struct.object* %40, i32 0, i32 4
  %42 = load %struct.object*, %struct.object** %41, align 8
  store %struct.object* %42, %struct.object** @unseen_objects, align 8
  %43 = load %struct.object*, %struct.object** %5, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = call %struct.TYPE_9__* @search_object(%struct.object* %43, i8* %44)
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %6, align 8
  store %struct.object** @seen_objects, %struct.object*** %7, align 8
  br label %46

46:                                               ; preds = %61, %39
  %47 = load %struct.object**, %struct.object*** %7, align 8
  %48 = load %struct.object*, %struct.object** %47, align 8
  %49 = icmp ne %struct.object* %48, null
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load %struct.object**, %struct.object*** %7, align 8
  %52 = load %struct.object*, %struct.object** %51, align 8
  %53 = getelementptr inbounds %struct.object, %struct.object* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.object*, %struct.object** %5, align 8
  %56 = getelementptr inbounds %struct.object, %struct.object* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ult i8* %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %65

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.object**, %struct.object*** %7, align 8
  %63 = load %struct.object*, %struct.object** %62, align 8
  %64 = getelementptr inbounds %struct.object, %struct.object* %63, i32 0, i32 4
  store %struct.object** %64, %struct.object*** %7, align 8
  br label %46

65:                                               ; preds = %59, %46
  %66 = load %struct.object**, %struct.object*** %7, align 8
  %67 = load %struct.object*, %struct.object** %66, align 8
  %68 = load %struct.object*, %struct.object** %5, align 8
  %69 = getelementptr inbounds %struct.object, %struct.object* %68, i32 0, i32 4
  store %struct.object* %67, %struct.object** %69, align 8
  %70 = load %struct.object*, %struct.object** %5, align 8
  %71 = load %struct.object**, %struct.object*** %7, align 8
  store %struct.object* %70, %struct.object** %71, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %73 = icmp ne %struct.TYPE_9__* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %77

75:                                               ; preds = %65
  br label %36

76:                                               ; preds = %36
  br label %77

77:                                               ; preds = %76, %74, %28
  %78 = call i32 @__gthread_mutex_unlock(i32* @object_mutex)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = icmp ne %struct.TYPE_9__* %79, null
  br i1 %80, label %81, label %119

81:                                               ; preds = %77
  %82 = load %struct.object*, %struct.object** %5, align 8
  %83 = getelementptr inbounds %struct.object, %struct.object* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.dwarf_eh_bases*, %struct.dwarf_eh_bases** %4, align 8
  %86 = getelementptr inbounds %struct.dwarf_eh_bases, %struct.dwarf_eh_bases* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load %struct.object*, %struct.object** %5, align 8
  %88 = getelementptr inbounds %struct.object, %struct.object* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.dwarf_eh_bases*, %struct.dwarf_eh_bases** %4, align 8
  %91 = getelementptr inbounds %struct.dwarf_eh_bases, %struct.dwarf_eh_bases* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  %92 = load %struct.object*, %struct.object** %5, align 8
  %93 = getelementptr inbounds %struct.object, %struct.object* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %8, align 4
  %97 = load %struct.object*, %struct.object** %5, align 8
  %98 = getelementptr inbounds %struct.object, %struct.object* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %81
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %105 = call i32 @get_fde_encoding(%struct.TYPE_9__* %104)
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %103, %81
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.object*, %struct.object** %5, align 8
  %110 = call i32 @base_from_object(i32 %108, %struct.object* %109)
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @read_encoded_value_with_base(i32 %107, i32 %110, i32 %113, i64* %9)
  %115 = load i64, i64* %9, align 8
  %116 = inttoptr i64 %115 to i8*
  %117 = load %struct.dwarf_eh_bases*, %struct.dwarf_eh_bases** %4, align 8
  %118 = getelementptr inbounds %struct.dwarf_eh_bases, %struct.dwarf_eh_bases* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  br label %119

119:                                              ; preds = %106, %77
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  ret %struct.TYPE_9__* %120
}

declare dso_local i32 @init_object_mutex_once(...) #1

declare dso_local i32 @__gthread_mutex_lock(i32*) #1

declare dso_local %struct.TYPE_9__* @search_object(%struct.object*, i8*) #1

declare dso_local i32 @__gthread_mutex_unlock(i32*) #1

declare dso_local i32 @get_fde_encoding(%struct.TYPE_9__*) #1

declare dso_local i32 @read_encoded_value_with_base(i32, i32, i32, i64*) #1

declare dso_local i32 @base_from_object(i32, %struct.object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
