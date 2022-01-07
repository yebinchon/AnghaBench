; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_bin_to_res_group_icon.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resbin.c_bin_to_res_group_icon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__*, i8*, i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [18 x i8] c"group icon header\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"unexpected group icon type %d\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"group icon\00", align 1
@RES_TYPE_GROUP_ICON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32*, i32*, i32)* @bin_to_res_group_icon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @bin_to_res_group_icon(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.TYPE_7__**, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 6
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 @toosmall(i32 %17)
  br label %19

19:                                               ; preds = %16, %3
  %20 = load i32*, i32** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = call i8* @windres_get_16(i32* %20, i32* %22, i32 2)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @fatal(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %19
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  %35 = call i8* @windres_get_16(i32* %32, i32* %34, i32 2)
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %8, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 6
  store i32* %38, i32** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, 6
  store i32 %40, i32* %6, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__** %10, %struct.TYPE_7__*** %11, align 8
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %105, %31
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %108

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 14
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = call i32 @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %50 = call i32 @toosmall(i32 %49)
  br label %51

51:                                               ; preds = %48, %45
  %52 = call i64 @res_alloc(i32 64)
  %53 = inttoptr i64 %52 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %13, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = load i32*, i32** %5, align 8
  %56 = call i8* @windres_get_8(i32* %54, i32* %55, i32 1)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 7
  store i8* %56, i8** %58, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = call i8* @windres_get_8(i32* %59, i32* %61, i32 1)
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 6
  store i8* %62, i8** %64, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = call i8* @windres_get_8(i32* %65, i32* %67, i32 1)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 5
  store i8* %68, i8** %70, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  %74 = call i8* @windres_get_16(i32* %71, i32* %73, i32 2)
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 6
  %80 = call i8* @windres_get_16(i32* %77, i32* %79, i32 2)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = load i32*, i32** %4, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 8
  %86 = call i32 @windres_get_32(i32* %83, i32* %85, i32 4)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 12
  %92 = call i8* @windres_get_16(i32* %89, i32* %91, i32 2)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %96, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %98 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %11, align 8
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %98, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store %struct.TYPE_7__** %100, %struct.TYPE_7__*** %11, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 14
  store i32* %102, i32** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sub nsw i32 %103, 14
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %51
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %41

108:                                              ; preds = %41
  %109 = call i64 @res_alloc(i32 16)
  %110 = inttoptr i64 %109 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %110, %struct.TYPE_6__** %12, align 8
  %111 = load i32, i32* @RES_TYPE_GROUP_ICON, align 4
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  store %struct.TYPE_7__* %114, %struct.TYPE_7__** %117, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  ret %struct.TYPE_6__* %118
}

declare dso_local i32 @toosmall(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @windres_get_16(i32*, i32*, i32) #1

declare dso_local i32 @fatal(i32, i32) #1

declare dso_local i64 @res_alloc(i32) #1

declare dso_local i8* @windres_get_8(i32*, i32*, i32) #1

declare dso_local i32 @windres_get_32(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
