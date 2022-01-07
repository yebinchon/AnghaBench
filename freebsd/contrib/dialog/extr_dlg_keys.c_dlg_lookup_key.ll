; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_dlg_keys.c_dlg_lookup_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_dlg_keys.c_dlg_lookup_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, %struct.TYPE_5__*, i32*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@KEY_MAX = common dso_local global i32 0, align 4
@WILDNAME = common dso_local global i8* null, align 8
@all_bindings = common dso_local global %struct.TYPE_4__* null, align 8
@KEY_MOUSE = common dso_local global i32 0, align 4
@KEY_RESIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlg_lookup_key(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @KEY_MAX, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %138

19:                                               ; preds = %15, %3
  %20 = load i8*, i8** @WILDNAME, align 8
  store i8* %20, i8** %10, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %19
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @all_bindings, align 8
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %8, align 8
  br label %25

25:                                               ; preds = %39, %23
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = icmp eq i32* %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %10, align 8
  br label %43

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %8, align 8
  br label %25

43:                                               ; preds = %34, %25
  br label %44

44:                                               ; preds = %43, %19
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @all_bindings, align 8
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %8, align 8
  br label %46

46:                                               ; preds = %133, %44
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %137

49:                                               ; preds = %46
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = icmp eq i32* %52, %53
  br i1 %54, label %74, label %55

55:                                               ; preds = %49
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %132

60:                                               ; preds = %55
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 @strcmp(i8* %63, i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** @WILDNAME, align 8
  %72 = call i32 @strcmp(i8* %70, i8* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %132, label %74

74:                                               ; preds = %67, %60, %49
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %11, align 4
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  store %struct.TYPE_5__* %81, %struct.TYPE_5__** %9, align 8
  br label %82

82:                                               ; preds = %128, %74
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %131

87:                                               ; preds = %82
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %87
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %108, label %95

95:                                               ; preds = %92
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i64 @dlg_toupper(i32 %99)
  %101 = trunc i64 %100 to i32
  %102 = icmp eq i32 %98, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %95
  %104 = load i32*, i32** %7, align 8
  store i32 0, i32* %104, align 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %4, align 4
  br label %140

108:                                              ; preds = %95, %92, %87
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %108
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32*, i32** %7, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i32*, i32** %7, align 8
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %4, align 4
  br label %140

127:                                              ; preds = %114, %108
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 1
  store %struct.TYPE_5__* %130, %struct.TYPE_5__** %9, align 8
  br label %82

131:                                              ; preds = %82
  br label %132

132:                                              ; preds = %131, %67, %55
  br label %133

133:                                              ; preds = %132
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  store %struct.TYPE_4__* %136, %struct.TYPE_4__** %8, align 8
  br label %46

137:                                              ; preds = %46
  br label %138

138:                                              ; preds = %137, %15
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %138, %120, %103
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @dlg_toupper(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
