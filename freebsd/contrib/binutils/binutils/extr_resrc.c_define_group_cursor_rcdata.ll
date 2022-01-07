; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_define_group_cursor_rcdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_define_group_cursor_rcdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_10__*, i8*, i32, i8*, i8*, i8*, i8* }

@wrtarget = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unexpected group cursor type %d\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"too small group icon rcdata\00", align 1
@resources = common dso_local global i32 0, align 4
@RT_GROUP_ICON = common dso_local global i32 0, align 4
@RES_TYPE_GROUP_CURSOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_9__*, i32*)* @define_group_cursor_rcdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @define_group_cursor_rcdata(i32 %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32* @rcdata_render_as_buffer(i32* %16, i32* %11)
  store i32* %17, i32** %12, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %9, align 8
  br label %18

18:                                               ; preds = %120, %3
  %19 = load i32, i32* %11, align 4
  %20 = icmp sge i32 %19, 6
  br i1 %20, label %21, label %121

21:                                               ; preds = %18
  %22 = load i32*, i32** %12, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %11, align 4
  %25 = sub nsw i32 %24, 2
  %26 = call i8* @windres_get_16(i32* @wrtarget, i32* %23, i32 %25)
  %27 = ptrtoint i8* %26 to i16
  store i16 %27, i16* %15, align 2
  %28 = load i16, i16* %15, align 2
  %29 = zext i16 %28 to i32
  %30 = icmp ne i32 %29, 2
  br i1 %30, label %31, label %38

31:                                               ; preds = %21
  %32 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = load i16, i16* %15, align 2
  %36 = zext i16 %35 to i32
  %37 = call i32 (i8*, ...) @fatal(i8* %34, i32 %36)
  br label %38

38:                                               ; preds = %31, %21
  %39 = load i32*, i32** %12, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = load i32, i32* %11, align 4
  %42 = sub nsw i32 %41, 4
  %43 = call i8* @windres_get_16(i32* @wrtarget, i32* %40, i32 %42)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %11, align 4
  %46 = sub nsw i32 %45, 6
  store i32 %46, i32* %11, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 6
  store i32* %48, i32** %12, align 8
  store i32 0, i32* %14, align 4
  br label %49

49:                                               ; preds = %117, %38
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %120

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 14
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %53
  %59 = call i64 @res_alloc(i32 56)
  %60 = inttoptr i64 %59 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %8, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %62, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i8* @windres_get_16(i32* @wrtarget, i32* %63, i32 %64)
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 6
  store i8* %65, i8** %67, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32, i32* %11, align 4
  %71 = sub nsw i32 %70, 2
  %72 = call i8* @windres_get_16(i32* @wrtarget, i32* %69, i32 %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 5
  store i8* %72, i8** %74, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  %77 = load i32, i32* %11, align 4
  %78 = sub nsw i32 %77, 4
  %79 = call i8* @windres_get_16(i32* @wrtarget, i32* %76, i32 %78)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 4
  store i8* %79, i8** %81, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 6
  %84 = load i32, i32* %11, align 4
  %85 = sub nsw i32 %84, 6
  %86 = call i8* @windres_get_16(i32* @wrtarget, i32* %83, i32 %85)
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 3
  store i8* %86, i8** %88, align 8
  %89 = load i32*, i32** %12, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 8
  %91 = load i32, i32* %11, align 4
  %92 = sub nsw i32 %91, 8
  %93 = call i32 @windres_get_32(i32* @wrtarget, i32* %90, i32 %92)
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 12
  %98 = load i32, i32* %11, align 4
  %99 = sub nsw i32 %98, 12
  %100 = call i8* @windres_get_16(i32* @wrtarget, i32* %97, i32 %99)
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %104 = icmp ne %struct.TYPE_10__* %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %58
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %106, %struct.TYPE_10__** %9, align 8
  br label %111

107:                                              ; preds = %58
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  store %struct.TYPE_10__* %108, %struct.TYPE_10__** %110, align 8
  br label %111

111:                                              ; preds = %107, %105
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %112, %struct.TYPE_10__** %10, align 8
  %113 = load i32*, i32** %12, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 14
  store i32* %114, i32** %12, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sub nsw i32 %115, 14
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %111
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  br label %49

120:                                              ; preds = %49
  br label %18

121:                                              ; preds = %18
  %122 = load i32, i32* @RT_GROUP_ICON, align 4
  %123 = load i32, i32* %4, align 4
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call %struct.TYPE_8__* @define_standard_resource(i32* @resources, i32 %122, i32 %123, i32 %126, i32 0)
  store %struct.TYPE_8__* %127, %struct.TYPE_8__** %7, align 8
  %128 = load i32, i32* @RES_TYPE_GROUP_CURSOR, align 4
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  store %struct.TYPE_10__* %131, %struct.TYPE_10__** %134, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %138 = bitcast %struct.TYPE_9__* %136 to i8*
  %139 = bitcast %struct.TYPE_9__* %137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %138, i8* align 4 %139, i64 4, i1 false)
  ret void
}

declare dso_local i32* @rcdata_render_as_buffer(i32*, i32*) #1

declare dso_local i8* @windres_get_16(i32*, i32*, i32) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @res_alloc(i32) #1

declare dso_local i32 @windres_get_32(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_8__* @define_standard_resource(i32*, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
