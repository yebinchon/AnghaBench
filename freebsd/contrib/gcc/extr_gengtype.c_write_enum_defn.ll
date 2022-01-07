; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_write_enum_defn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_write_enum_defn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@header_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"\0A/* Enumeration of types known.  */\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"enum gt_types_enum {\0A\00", align 1
@GC_POINTED_TO = common dso_local global i64 0, align 8
@GC_MAYBE_POINTED_TO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c" gt_ggc_e_\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c", \0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" gt_e_\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c" gt_types_enum_last\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, %struct.TYPE_11__*)* @write_enum_defn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_enum_defn(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %6 = load i32, i32* @header_file, align 4
  %7 = call i32 @oprintf(i32 %6, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @header_file, align 4
  %9 = call i32 @oprintf(i32 %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %5, align 8
  br label %11

11:                                               ; preds = %50, %2
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = icmp ne %struct.TYPE_11__* %12, null
  br i1 %13, label %14, label %54

14:                                               ; preds = %11
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @GC_POINTED_TO, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @GC_MAYBE_POINTED_TO, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %49

26:                                               ; preds = %20, %14
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @GC_MAYBE_POINTED_TO, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %50

41:                                               ; preds = %32, %26
  %42 = load i32, i32* @header_file, align 4
  %43 = call i32 @oprintf(i32 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @header_file, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = call i32 @output_mangled_typename(i32 %44, %struct.TYPE_11__* %45)
  %47 = load i32, i32* @header_file, align 4
  %48 = call i32 @oprintf(i32 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %41, %20
  br label %50

50:                                               ; preds = %49, %40
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  store %struct.TYPE_11__* %53, %struct.TYPE_11__** %5, align 8
  br label %11

54:                                               ; preds = %11
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %55, %struct.TYPE_11__** %5, align 8
  br label %56

56:                                               ; preds = %74, %54
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %58 = icmp ne %struct.TYPE_11__* %57, null
  br i1 %58, label %59, label %78

59:                                               ; preds = %56
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @GC_POINTED_TO, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load i32, i32* @header_file, align 4
  %67 = call i32 @oprintf(i32 %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %68 = load i32, i32* @header_file, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %70 = call i32 @output_mangled_typename(i32 %68, %struct.TYPE_11__* %69)
  %71 = load i32, i32* @header_file, align 4
  %72 = call i32 @oprintf(i32 %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %73

73:                                               ; preds = %65, %59
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  store %struct.TYPE_11__* %77, %struct.TYPE_11__** %5, align 8
  br label %56

78:                                               ; preds = %56
  %79 = load i32, i32* @header_file, align 4
  %80 = call i32 @oprintf(i32 %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %81 = load i32, i32* @header_file, align 4
  %82 = call i32 @oprintf(i32 %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @oprintf(i32, i8*) #1

declare dso_local i32 @output_mangled_typename(i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
