; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_reshape_init_vector.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_decl.c_reshape_init_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }

@NULL_TREE = common dso_local global i8* null, align 8
@VECTOR_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"invalid type %qT as initializer for a vector of type %qT\00", align 1
@error_mark_node = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.TYPE_6__*)* @reshape_init_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @reshape_init_vector(i8* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %9 = load i8*, i8** @NULL_TREE, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @TREE_CODE(i8* %10)
  %12 = load i64, i64* @VECTOR_TYPE, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @gcc_assert(i32 %14)
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i64 @COMPOUND_LITERAL_P(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @TREE_TYPE(i8* %29)
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @same_type_p(i32 %30, i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %23
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @TREE_TYPE(i8* %39)
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %40, i8* %41)
  %43 = load i8*, i8** @error_mark_node, align 8
  store i8* %43, i8** %8, align 8
  br label %44

44:                                               ; preds = %34, %23
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 1
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %46, align 8
  %49 = load i8*, i8** %8, align 8
  store i8* %49, i8** %3, align 8
  br label %72

50:                                               ; preds = %2
  %51 = load i8*, i8** %4, align 8
  %52 = call i8* @TYPE_DEBUG_REPRESENTATION_TYPE(i8* %51)
  store i8* %52, i8** %7, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load i8*, i8** %7, align 8
  %57 = call i8* @TYPE_FIELDS(i8* %56)
  %58 = call i32 @TREE_TYPE(i8* %57)
  %59 = call i64 @TYPE_DOMAIN(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load i8*, i8** %7, align 8
  %63 = call i8* @TYPE_FIELDS(i8* %62)
  %64 = call i32 @TREE_TYPE(i8* %63)
  %65 = call i8* @array_type_nelts(i32 %64)
  store i8* %65, i8** %6, align 8
  br label %66

66:                                               ; preds = %61, %55, %50
  %67 = load i8*, i8** %4, align 8
  %68 = call i32 @TREE_TYPE(i8* %67)
  %69 = load i8*, i8** %6, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = call i8* @reshape_init_array_1(i32 %68, i8* %69, %struct.TYPE_6__* %70)
  store i8* %71, i8** %3, align 8
  br label %72

72:                                               ; preds = %66, %44
  %73 = load i8*, i8** %3, align 8
  ret i8* %73
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i8*) #1

declare dso_local i64 @COMPOUND_LITERAL_P(i8*) #1

declare dso_local i32 @same_type_p(i32, i8*) #1

declare dso_local i32 @TREE_TYPE(i8*) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local i8* @TYPE_DEBUG_REPRESENTATION_TYPE(i8*) #1

declare dso_local i64 @TYPE_DOMAIN(i32) #1

declare dso_local i8* @TYPE_FIELDS(i8*) #1

declare dso_local i8* @array_type_nelts(i32) #1

declare dso_local i8* @reshape_init_array_1(i32, i8*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
