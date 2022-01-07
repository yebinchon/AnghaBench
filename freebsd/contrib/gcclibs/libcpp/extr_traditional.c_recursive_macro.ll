; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_traditional.c_recursive_macro.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_traditional.c_recursive_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@NODE_DISABLED = common dso_local global i32 0, align 4
@CPP_DL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"detected recursion whilst expanding macro \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_13__*)* @recursive_macro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recursive_macro(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @NODE_DISABLED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %2
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %19
  store i64 0, i64* %6, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %7, align 8
  br label %31

31:                                               ; preds = %47, %27
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %6, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %38 = icmp eq %struct.TYPE_13__* %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i64, i64* %6, align 8
  %41 = icmp ugt i64 %40, 20
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %50

43:                                               ; preds = %39, %31
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %7, align 8
  br label %47

47:                                               ; preds = %43
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %49 = icmp ne %struct.TYPE_14__* %48, null
  br i1 %49, label %31, label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %52 = icmp ne %struct.TYPE_14__* %51, null
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %50, %19, %2
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %59 = load i32, i32* @CPP_DL_ERROR, align 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %61 = call i32 @NODE_NAME(%struct.TYPE_13__* %60)
  %62 = call i32 @cpp_error(%struct.TYPE_12__* %58, i32 %59, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %57, %54
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @cpp_error(%struct.TYPE_12__*, i32, i8*, i32) #1

declare dso_local i32 @NODE_NAME(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
