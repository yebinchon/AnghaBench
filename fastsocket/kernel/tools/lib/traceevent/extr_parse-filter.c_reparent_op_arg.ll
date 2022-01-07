; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_reparent_op_arg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_reparent_op_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_arg = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.filter_arg*, %struct.filter_arg* }

@FILTER_ARG_OP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"can not reparent other than OP\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Error in reparent op, find other child\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Error in reparent op\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reparent_op_arg(%struct.filter_arg* %0, %struct.filter_arg* %1, %struct.filter_arg* %2) #0 {
  %4 = alloca %struct.filter_arg*, align 8
  %5 = alloca %struct.filter_arg*, align 8
  %6 = alloca %struct.filter_arg*, align 8
  %7 = alloca %struct.filter_arg*, align 8
  %8 = alloca %struct.filter_arg**, align 8
  store %struct.filter_arg* %0, %struct.filter_arg** %4, align 8
  store %struct.filter_arg* %1, %struct.filter_arg** %5, align 8
  store %struct.filter_arg* %2, %struct.filter_arg** %6, align 8
  %9 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %10 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FILTER_ARG_OP, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %16 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FILTER_ARG_OP, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call i32 @die(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %14, %3
  %23 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %24 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %struct.filter_arg*, %struct.filter_arg** %25, align 8
  %27 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %28 = icmp eq %struct.filter_arg* %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %31 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store %struct.filter_arg** %32, %struct.filter_arg*** %8, align 8
  %33 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %34 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.filter_arg*, %struct.filter_arg** %35, align 8
  store %struct.filter_arg* %36, %struct.filter_arg** %7, align 8
  br label %55

37:                                               ; preds = %22
  %38 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %39 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.filter_arg*, %struct.filter_arg** %40, align 8
  %42 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %43 = icmp eq %struct.filter_arg* %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %46 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store %struct.filter_arg** %47, %struct.filter_arg*** %8, align 8
  %48 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %49 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load %struct.filter_arg*, %struct.filter_arg** %50, align 8
  store %struct.filter_arg* %51, %struct.filter_arg** %7, align 8
  br label %54

52:                                               ; preds = %37
  %53 = call i32 @die(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %44
  br label %55

55:                                               ; preds = %54, %29
  %56 = load %struct.filter_arg**, %struct.filter_arg*** %8, align 8
  store %struct.filter_arg* null, %struct.filter_arg** %56, align 8
  %57 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %58 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %59 = icmp eq %struct.filter_arg* %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load %struct.filter_arg*, %struct.filter_arg** %7, align 8
  %62 = call i32 @free_arg(%struct.filter_arg* %61)
  %63 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %64 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %65 = bitcast %struct.filter_arg* %63 to i8*
  %66 = bitcast %struct.filter_arg* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 24, i1 false)
  %67 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %68 = call i32 @free(%struct.filter_arg* %67)
  br label %99

69:                                               ; preds = %55
  %70 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %71 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load %struct.filter_arg*, %struct.filter_arg** %72, align 8
  %74 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %75 = icmp eq %struct.filter_arg* %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %78 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store %struct.filter_arg** %79, %struct.filter_arg*** %8, align 8
  br label %94

80:                                               ; preds = %69
  %81 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %82 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load %struct.filter_arg*, %struct.filter_arg** %83, align 8
  %85 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %86 = icmp eq %struct.filter_arg* %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load %struct.filter_arg*, %struct.filter_arg** %4, align 8
  %89 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  store %struct.filter_arg** %90, %struct.filter_arg*** %8, align 8
  br label %93

91:                                               ; preds = %80
  %92 = call i32 @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %87
  br label %94

94:                                               ; preds = %93, %76
  %95 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %96 = load %struct.filter_arg**, %struct.filter_arg*** %8, align 8
  store %struct.filter_arg* %95, %struct.filter_arg** %96, align 8
  %97 = load %struct.filter_arg*, %struct.filter_arg** %5, align 8
  %98 = call i32 @free_arg(%struct.filter_arg* %97)
  br label %99

99:                                               ; preds = %94, %60
  ret void
}

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @free_arg(%struct.filter_arg*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free(%struct.filter_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
