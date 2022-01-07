; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_generic.c_amfs_generic_lookup_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_generic.c_amfs_generic_lookup_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32**, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"in amfs_generic_lookup_child\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @amfs_generic_lookup_child(%struct.TYPE_12__* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = call i32 @dlog(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %8, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call %struct.TYPE_12__* @amfs_lookup_node(%struct.TYPE_12__* %15, i8* %16, i32* %17)
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %10, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %20 = icmp ne %struct.TYPE_12__* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** %5, align 8
  br label %76

27:                                               ; preds = %21
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @FSRV_ISUP(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %5, align 8
  br label %76

43:                                               ; preds = %31, %27
  %44 = load i32, i32* %9, align 4
  switch i32 %44, label %50 [
    i32 129, label %45
    i32 128, label %48
  ]

45:                                               ; preds = %43
  %46 = load i32, i32* @ENOENT, align 4
  %47 = call i32 @ereturn(i32 %46)
  br label %48

48:                                               ; preds = %43, %45
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %49, %struct.TYPE_12__** %5, align 8
  br label %76

50:                                               ; preds = %43
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %12, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i32** @amfs_lookup_loc(%struct.TYPE_12__* %53, i32* %54)
  store i32** %55, i32*** %11, align 8
  %56 = load i32**, i32*** %11, align 8
  %57 = icmp ne i32** %56, null
  br i1 %57, label %71, label %58

58:                                               ; preds = %50
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  store i32 %60, i32* %66, align 4
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  store i32 %60, i32* %68, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %70 = call i32 @free_map(%struct.TYPE_12__* %69)
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  br label %76

71:                                               ; preds = %50
  %72 = load i32**, i32*** %11, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  store i32** %72, i32*** %74, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %75, %struct.TYPE_12__** %5, align 8
  br label %76

76:                                               ; preds = %71, %58, %48, %41, %25
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  ret %struct.TYPE_12__* %77
}

declare dso_local i32 @dlog(i8*) #1

declare dso_local %struct.TYPE_12__* @amfs_lookup_node(%struct.TYPE_12__*, i8*, i32*) #1

declare dso_local i64 @FSRV_ISUP(i32) #1

declare dso_local i32 @ereturn(i32) #1

declare dso_local i32** @amfs_lookup_loc(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @free_map(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
