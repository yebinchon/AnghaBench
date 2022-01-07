; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_define_user_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_define_user_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_45__ = type { i32 }
%struct.TYPE_47__ = type { %struct.TYPE_42__, i32, i32* }
%struct.TYPE_42__ = type { %struct.TYPE_41__ }
%struct.TYPE_41__ = type { i32*, i32 }
%struct.TYPE_46__ = type { i64, %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_44__ = type { %struct.TYPE_45__, %struct.TYPE_43__, i32 }
%struct.TYPE_43__ = type { %struct.TYPE_47__* }

@resources = common dso_local global i32 0, align 4
@RES_TYPE_USERDATA = common dso_local global i32 0, align 4
@RCDATA_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @define_user_data(i64 %0, i32 %1, i64 %2, i32 %3, %struct.TYPE_45__* %4, %struct.TYPE_47__* %5) #0 {
  %7 = alloca %struct.TYPE_46__, align 8
  %8 = alloca %struct.TYPE_46__, align 8
  %9 = alloca %struct.TYPE_45__*, align 8
  %10 = alloca %struct.TYPE_47__*, align 8
  %11 = alloca [3 x %struct.TYPE_46__], align 16
  %12 = alloca %struct.TYPE_44__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = bitcast %struct.TYPE_46__* %7 to { i64, i32 }*
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  store i64 %0, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  store i32 %1, i32* %17, align 8
  %18 = bitcast %struct.TYPE_46__* %8 to { i64, i32 }*
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  store i64 %2, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  store i32 %3, i32* %20, align 8
  store %struct.TYPE_45__* %4, %struct.TYPE_45__** %9, align 8
  store %struct.TYPE_47__* %5, %struct.TYPE_47__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %8, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %102

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %8, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %100 [
    i32 132, label %28
    i32 133, label %37
    i32 129, label %46
    i32 135, label %55
    i32 134, label %64
    i32 130, label %73
    i32 131, label %82
    i32 128, label %91
  ]

28:                                               ; preds = %24
  %29 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %30 = load %struct.TYPE_47__*, %struct.TYPE_47__** %10, align 8
  %31 = bitcast %struct.TYPE_46__* %7 to { i64, i32 }*
  %32 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %31, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @define_fontdir_rcdata(i64 %33, i32 %35, %struct.TYPE_45__* %29, %struct.TYPE_47__* %30)
  br label %161

37:                                               ; preds = %24
  %38 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %39 = load %struct.TYPE_47__*, %struct.TYPE_47__** %10, align 8
  %40 = bitcast %struct.TYPE_46__* %7 to { i64, i32 }*
  %41 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %40, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @define_font_rcdata(i64 %42, i32 %44, %struct.TYPE_45__* %38, %struct.TYPE_47__* %39)
  br label %161

46:                                               ; preds = %24
  %47 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %48 = load %struct.TYPE_47__*, %struct.TYPE_47__** %10, align 8
  %49 = bitcast %struct.TYPE_46__* %7 to { i64, i32 }*
  %50 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %49, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @define_icon_rcdata(i64 %51, i32 %53, %struct.TYPE_45__* %47, %struct.TYPE_47__* %48)
  br label %161

55:                                               ; preds = %24
  %56 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %57 = load %struct.TYPE_47__*, %struct.TYPE_47__** %10, align 8
  %58 = bitcast %struct.TYPE_46__* %7 to { i64, i32 }*
  %59 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %58, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @define_bitmap_rcdata(i64 %60, i32 %62, %struct.TYPE_45__* %56, %struct.TYPE_47__* %57)
  br label %161

64:                                               ; preds = %24
  %65 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %66 = load %struct.TYPE_47__*, %struct.TYPE_47__** %10, align 8
  %67 = bitcast %struct.TYPE_46__* %7 to { i64, i32 }*
  %68 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %67, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @define_cursor_rcdata(i64 %69, i32 %71, %struct.TYPE_45__* %65, %struct.TYPE_47__* %66)
  br label %161

73:                                               ; preds = %24
  %74 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %75 = load %struct.TYPE_47__*, %struct.TYPE_47__** %10, align 8
  %76 = bitcast %struct.TYPE_46__* %7 to { i64, i32 }*
  %77 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %76, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @define_group_icon_rcdata(i64 %78, i32 %80, %struct.TYPE_45__* %74, %struct.TYPE_47__* %75)
  br label %161

82:                                               ; preds = %24
  %83 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %84 = load %struct.TYPE_47__*, %struct.TYPE_47__** %10, align 8
  %85 = bitcast %struct.TYPE_46__* %7 to { i64, i32 }*
  %86 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %85, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @define_group_cursor_rcdata(i64 %87, i32 %89, %struct.TYPE_45__* %83, %struct.TYPE_47__* %84)
  br label %161

91:                                               ; preds = %24
  %92 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %93 = load %struct.TYPE_47__*, %struct.TYPE_47__** %10, align 8
  %94 = bitcast %struct.TYPE_46__* %7 to { i64, i32 }*
  %95 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %94, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @define_messagetable_rcdata(i64 %96, i32 %98, %struct.TYPE_45__* %92, %struct.TYPE_47__* %93)
  br label %161

100:                                              ; preds = %24
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101, %6
  %103 = getelementptr inbounds [3 x %struct.TYPE_46__], [3 x %struct.TYPE_46__]* %11, i64 0, i64 0
  %104 = bitcast %struct.TYPE_46__* %103 to i8*
  %105 = bitcast %struct.TYPE_46__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %104, i8* align 8 %105, i64 16, i1 false)
  %106 = getelementptr inbounds [3 x %struct.TYPE_46__], [3 x %struct.TYPE_46__]* %11, i64 0, i64 1
  %107 = bitcast %struct.TYPE_46__* %106 to i8*
  %108 = bitcast %struct.TYPE_46__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %107, i8* align 8 %108, i64 16, i1 false)
  %109 = getelementptr inbounds [3 x %struct.TYPE_46__], [3 x %struct.TYPE_46__]* %11, i64 0, i64 2
  %110 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %109, i32 0, i32 0
  store i64 0, i64* %110, align 16
  %111 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds [3 x %struct.TYPE_46__], [3 x %struct.TYPE_46__]* %11, i64 0, i64 2
  %115 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  %117 = getelementptr inbounds [3 x %struct.TYPE_46__], [3 x %struct.TYPE_46__]* %11, i64 0, i64 0
  %118 = call %struct.TYPE_44__* @define_resource(i32* @resources, i32 3, %struct.TYPE_46__* %117, i32 0)
  store %struct.TYPE_44__* %118, %struct.TYPE_44__** %12, align 8
  %119 = load i32, i32* @RES_TYPE_USERDATA, align 4
  %120 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = call i64 @res_alloc(i32 32)
  %123 = inttoptr i64 %122 to %struct.TYPE_47__*
  %124 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %125, i32 0, i32 0
  store %struct.TYPE_47__* %123, %struct.TYPE_47__** %126, align 8
  %127 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_47__*, %struct.TYPE_47__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %130, i32 0, i32 2
  store i32* null, i32** %131, align 8
  %132 = load i32, i32* @RCDATA_BUFFER, align 4
  %133 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_47__*, %struct.TYPE_47__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %136, i32 0, i32 1
  store i32 %132, i32* %137, align 8
  %138 = load %struct.TYPE_47__*, %struct.TYPE_47__** %10, align 8
  %139 = call i32* @rcdata_render_as_buffer(%struct.TYPE_47__* %138, i32* %14)
  store i32* %139, i32** %13, align 8
  %140 = load i32, i32* %14, align 4
  %141 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_47__*, %struct.TYPE_47__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %146, i32 0, i32 1
  store i32 %140, i32* %147, align 8
  %148 = load i32*, i32** %13, align 8
  %149 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_47__*, %struct.TYPE_47__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %154, i32 0, i32 0
  store i32* %148, i32** %155, align 8
  %156 = load %struct.TYPE_44__*, %struct.TYPE_44__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_45__*, %struct.TYPE_45__** %9, align 8
  %159 = bitcast %struct.TYPE_45__* %157 to i8*
  %160 = bitcast %struct.TYPE_45__* %158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %159, i8* align 4 %160, i64 4, i1 false)
  br label %161

161:                                              ; preds = %102, %91, %82, %73, %64, %55, %46, %37, %28
  ret void
}

declare dso_local i32 @define_fontdir_rcdata(i64, i32, %struct.TYPE_45__*, %struct.TYPE_47__*) #1

declare dso_local i32 @define_font_rcdata(i64, i32, %struct.TYPE_45__*, %struct.TYPE_47__*) #1

declare dso_local i32 @define_icon_rcdata(i64, i32, %struct.TYPE_45__*, %struct.TYPE_47__*) #1

declare dso_local i32 @define_bitmap_rcdata(i64, i32, %struct.TYPE_45__*, %struct.TYPE_47__*) #1

declare dso_local i32 @define_cursor_rcdata(i64, i32, %struct.TYPE_45__*, %struct.TYPE_47__*) #1

declare dso_local i32 @define_group_icon_rcdata(i64, i32, %struct.TYPE_45__*, %struct.TYPE_47__*) #1

declare dso_local i32 @define_group_cursor_rcdata(i64, i32, %struct.TYPE_45__*, %struct.TYPE_47__*) #1

declare dso_local i32 @define_messagetable_rcdata(i64, i32, %struct.TYPE_45__*, %struct.TYPE_47__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_44__* @define_resource(i32*, i32, %struct.TYPE_46__*, i32) #1

declare dso_local i64 @res_alloc(i32) #1

declare dso_local i32* @rcdata_render_as_buffer(%struct.TYPE_47__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
