; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_type_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_dt_node_type_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DT_NF_USERLAND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"userland \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dt_node_type_name(%struct.TYPE_5__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = call i64 @dt_node_is_dynamic(%struct.TYPE_5__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = call %struct.TYPE_6__* @dt_ident_resolve(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @dt_idkind_name(i32 %25)
  %27 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %18, i64 %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** %6, align 8
  store i8* %28, i8** %4, align 8
  br label %72

29:                                               ; preds = %12, %3
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @DT_NF_USERLAND, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %62

36:                                               ; preds = %29
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i64 (i8*, i64, i8*, ...) @snprintf(i8* %37, i64 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = sub i64 %44, %45
  br label %48

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i64 [ %46, %43 ], [ 0, %47 ]
  store i64 %49, i64* %7, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i64, i64* %7, align 8
  %60 = call i8* @dt_type_name(i32 %52, i32 %55, i8* %58, i64 %59)
  %61 = load i8*, i8** %6, align 8
  store i8* %61, i8** %4, align 8
  br label %72

62:                                               ; preds = %29
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i8* @dt_type_name(i32 %65, i32 %68, i8* %69, i64 %70)
  store i8* %71, i8** %4, align 8
  br label %72

72:                                               ; preds = %62, %48, %17
  %73 = load i8*, i8** %4, align 8
  ret i8* %73
}

declare dso_local i64 @dt_node_is_dynamic(%struct.TYPE_5__*) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i8* @dt_idkind_name(i32) #1

declare dso_local %struct.TYPE_6__* @dt_ident_resolve(i32*) #1

declare dso_local i8* @dt_type_name(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
