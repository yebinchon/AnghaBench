; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_define_group_icon_rcdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_define_group_icon_rcdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_10__*, i8*, i32, i8*, i8*, i8*, i8*, i8* }

@wrtarget = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unexpected group icon type %d\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"too small group icon rcdata\00", align 1
@resources = common dso_local global i32 0, align 4
@RT_GROUP_ICON = common dso_local global i32 0, align 4
@RES_TYPE_GROUP_ICON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_9__*, i32*)* @define_group_icon_rcdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @define_group_icon_rcdata(i32 %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i8** @rcdata_render_as_buffer(i32* %16, i32* %11)
  store i8** %17, i8*** %12, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %9, align 8
  br label %18

18:                                               ; preds = %123, %3
  %19 = load i32, i32* %11, align 4
  %20 = icmp sge i32 %19, 6
  br i1 %20, label %21, label %124

21:                                               ; preds = %18
  %22 = load i8**, i8*** %12, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 2
  %24 = load i32, i32* %11, align 4
  %25 = sub nsw i32 %24, 2
  %26 = call i8* @windres_get_16(i32* @wrtarget, i8** %23, i32 %25)
  %27 = ptrtoint i8* %26 to i16
  store i16 %27, i16* %15, align 2
  %28 = load i16, i16* %15, align 2
  %29 = zext i16 %28 to i32
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %38

31:                                               ; preds = %21
  %32 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = load i16, i16* %15, align 2
  %36 = zext i16 %35 to i32
  %37 = call i32 (i8*, ...) @fatal(i8* %34, i32 %36)
  br label %38

38:                                               ; preds = %31, %21
  %39 = load i8**, i8*** %12, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 4
  %41 = load i32, i32* %11, align 4
  %42 = sub nsw i32 %41, 4
  %43 = call i8* @windres_get_16(i32* @wrtarget, i8** %40, i32 %42)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %11, align 4
  %46 = sub nsw i32 %45, 6
  store i32 %46, i32* %11, align 4
  %47 = load i8**, i8*** %12, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 6
  store i8** %48, i8*** %12, align 8
  store i32 0, i32* %14, align 4
  br label %49

49:                                               ; preds = %120, %38
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %123

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 14
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %53
  %59 = call i64 @res_alloc(i32 64)
  %60 = inttoptr i64 %59 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %8, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %62, align 8
  %63 = load i8**, i8*** %12, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 7
  store i8* %65, i8** %67, align 8
  %68 = load i8**, i8*** %12, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 1
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 6
  store i8* %70, i8** %72, align 8
  %73 = load i8**, i8*** %12, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 2
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  %78 = load i8**, i8*** %12, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 4
  %80 = load i32, i32* %11, align 4
  %81 = sub nsw i32 %80, 4
  %82 = call i8* @windres_get_16(i32* @wrtarget, i8** %79, i32 %81)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 4
  store i8* %82, i8** %84, align 8
  %85 = load i8**, i8*** %12, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 6
  %87 = load i32, i32* %11, align 4
  %88 = sub nsw i32 %87, 6
  %89 = call i8* @windres_get_16(i32* @wrtarget, i8** %86, i32 %88)
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  %92 = load i8**, i8*** %12, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 8
  %94 = load i32, i32* %11, align 4
  %95 = sub nsw i32 %94, 8
  %96 = call i32 @windres_get_32(i32* @wrtarget, i8** %93, i32 %95)
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load i8**, i8*** %12, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 12
  %101 = load i32, i32* %11, align 4
  %102 = sub nsw i32 %101, 12
  %103 = call i8* @windres_get_16(i32* @wrtarget, i8** %100, i32 %102)
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %107 = icmp ne %struct.TYPE_10__* %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %58
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %109, %struct.TYPE_10__** %9, align 8
  br label %114

110:                                              ; preds = %58
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  store %struct.TYPE_10__* %111, %struct.TYPE_10__** %113, align 8
  br label %114

114:                                              ; preds = %110, %108
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %115, %struct.TYPE_10__** %10, align 8
  %116 = load i8**, i8*** %12, align 8
  %117 = getelementptr inbounds i8*, i8** %116, i64 14
  store i8** %117, i8*** %12, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sub nsw i32 %118, 14
  store i32 %119, i32* %11, align 4
  br label %120

120:                                              ; preds = %114
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %14, align 4
  br label %49

123:                                              ; preds = %49
  br label %18

124:                                              ; preds = %18
  %125 = load i32, i32* @RT_GROUP_ICON, align 4
  %126 = load i32, i32* %4, align 4
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call %struct.TYPE_8__* @define_standard_resource(i32* @resources, i32 %125, i32 %126, i32 %129, i32 0)
  store %struct.TYPE_8__* %130, %struct.TYPE_8__** %7, align 8
  %131 = load i32, i32* @RES_TYPE_GROUP_ICON, align 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  store %struct.TYPE_10__* %134, %struct.TYPE_10__** %137, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %141 = bitcast %struct.TYPE_9__* %139 to i8*
  %142 = bitcast %struct.TYPE_9__* %140 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %141, i8* align 4 %142, i64 4, i1 false)
  ret void
}

declare dso_local i8** @rcdata_render_as_buffer(i32*, i32*) #1

declare dso_local i8* @windres_get_16(i32*, i8**, i32) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @res_alloc(i32) #1

declare dso_local i32 @windres_get_32(i32*, i8**, i32) #1

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
