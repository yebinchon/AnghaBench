; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_get_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_get_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_4__* }

@MAXNAMELEN = common dso_local global i32 0, align 4
@ZPOOL_PROP_NAME = common dso_local global i64 0, align 8
@ZPROP_INVAL = common dso_local global i64 0, align 8
@ZPROP_SRC_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @get_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_callback(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %5, align 8
  %12 = load i32, i32* @MAXNAMELEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %9, align 8
  br label %19

19:                                               ; preds = %95, %2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %21 = icmp ne %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %99

22:                                               ; preds = %19
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ZPOOL_PROP_NAME, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = icmp eq %struct.TYPE_4__* %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %95

35:                                               ; preds = %28, %22
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ZPROP_INVAL, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %72

41:                                               ; preds = %35
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @zpool_prop_feature(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @zpool_prop_unsupported(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %47, %41
  %54 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  store i32 %54, i32* %8, align 4
  %55 = load i32*, i32** %3, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = trunc i64 %13 to i32
  %60 = call i64 @zpool_prop_get_feature(i32* %55, i32 %58, i8* %15, i32 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %53
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @zpool_get_name(i32* %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @zprop_print_one_property(i32 %64, %struct.TYPE_5__* %65, i32 %68, i8* %15, i32 %69, i32* null, i32* null)
  br label %71

71:                                               ; preds = %62, %53
  br label %94

72:                                               ; preds = %47, %35
  %73 = load i32*, i32** %3, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %13 to i32
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @zpool_get_prop(i32* %73, i64 %76, i8* %15, i32 %77, i32* %8, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  br label %95

84:                                               ; preds = %72
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @zpool_get_name(i32* %85)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @zpool_prop_to_name(i64 %90)
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @zprop_print_one_property(i32 %86, %struct.TYPE_5__* %87, i32 %91, i8* %15, i32 %92, i32* null, i32* null)
  br label %94

94:                                               ; preds = %84, %71
  br label %95

95:                                               ; preds = %94, %83, %34
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  store %struct.TYPE_4__* %98, %struct.TYPE_4__** %9, align 8
  br label %19

99:                                               ; preds = %19
  %100 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %100)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @zpool_prop_feature(i32) #2

declare dso_local i64 @zpool_prop_unsupported(i32) #2

declare dso_local i64 @zpool_prop_get_feature(i32*, i32, i8*, i32) #2

declare dso_local i32 @zprop_print_one_property(i32, %struct.TYPE_5__*, i32, i8*, i32, i32*, i32*) #2

declare dso_local i32 @zpool_get_name(i32*) #2

declare dso_local i64 @zpool_get_prop(i32*, i64, i8*, i32, i32*, i32) #2

declare dso_local i32 @zpool_prop_to_name(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
