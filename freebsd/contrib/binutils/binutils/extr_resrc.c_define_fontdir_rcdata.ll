; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_define_fontdir_rcdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_define_fontdir_rcdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__*, i64, i32*, i8* }
%struct.bin_fontdir_item = type { i64, i32* }

@resources = common dso_local global i32 0, align 4
@RT_FONTDIR = common dso_local global i32 0, align 4
@wrtarget = common dso_local global i32 0, align 4
@RES_TYPE_FONTDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @define_fontdir_rcdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @define_fontdir_rcdata(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.bin_fontdir_item*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %10, align 8
  %18 = load i32, i32* @RT_FONTDIR, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.TYPE_6__* @define_standard_resource(i32* @resources, i32 %18, i32 %19, i32 1033, i32 0)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %7, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32* @rcdata_render_as_buffer(i32* %21, i64* %11)
  store i32* %22, i32** %12, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %99

25:                                               ; preds = %3
  store i64 2, i64* %14, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = load i64, i64* %11, align 8
  %28 = call i8* @windres_get_16(i32* @wrtarget, i32* %26, i64 %27)
  %29 = ptrtoint i8* %28 to i64
  store i64 %29, i64* %13, align 8
  br label %30

30:                                               ; preds = %95, %25
  %31 = load i64, i64* %13, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %98

33:                                               ; preds = %30
  %34 = load i64, i64* %14, align 8
  store i64 %34, i64* %16, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = bitcast i32* %35 to %struct.bin_fontdir_item*
  %37 = load i64, i64* %14, align 8
  %38 = getelementptr inbounds %struct.bin_fontdir_item, %struct.bin_fontdir_item* %36, i64 %37
  store %struct.bin_fontdir_item* %38, %struct.bin_fontdir_item** %17, align 8
  %39 = call i64 @res_alloc(i32 32)
  %40 = inttoptr i64 %39 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %40, %struct.TYPE_7__** %8, align 8
  %41 = load %struct.bin_fontdir_item*, %struct.bin_fontdir_item** %17, align 8
  %42 = getelementptr inbounds %struct.bin_fontdir_item, %struct.bin_fontdir_item* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %14, align 8
  %46 = sub nsw i64 %44, %45
  %47 = call i8* @windres_get_16(i32* @wrtarget, i32* %43, i64 %46)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = load i64, i64* %14, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  store i32* %52, i32** %54, align 8
  %55 = load i64, i64* %14, align 8
  %56 = add nsw i64 %55, 56
  store i64 %56, i64* %14, align 8
  %57 = load %struct.bin_fontdir_item*, %struct.bin_fontdir_item** %17, align 8
  %58 = getelementptr inbounds %struct.bin_fontdir_item, %struct.bin_fontdir_item* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = call i32 @strlen(i8* %60)
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %15, align 8
  %64 = load i64, i64* %15, align 8
  %65 = load i64, i64* %14, align 8
  %66 = add nsw i64 %65, %64
  store i64 %66, i64* %14, align 8
  %67 = load %struct.bin_fontdir_item*, %struct.bin_fontdir_item** %17, align 8
  %68 = getelementptr inbounds %struct.bin_fontdir_item, %struct.bin_fontdir_item* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i8*
  %71 = load i64, i64* %15, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = call i32 @strlen(i8* %72)
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, 1
  %76 = load i64, i64* %14, align 8
  %77 = add nsw i64 %76, %75
  store i64 %77, i64* %14, align 8
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* %16, align 8
  %80 = sub nsw i64 %78, %79
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %84, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %86 = icmp eq %struct.TYPE_7__* %85, null
  br i1 %86, label %87, label %89

87:                                               ; preds = %33
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %88, %struct.TYPE_7__** %9, align 8
  br label %93

89:                                               ; preds = %33
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store %struct.TYPE_7__* %90, %struct.TYPE_7__** %92, align 8
  br label %93

93:                                               ; preds = %89, %87
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %94, %struct.TYPE_7__** %10, align 8
  br label %95

95:                                               ; preds = %93
  %96 = load i64, i64* %13, align 8
  %97 = add nsw i64 %96, -1
  store i64 %97, i64* %13, align 8
  br label %30

98:                                               ; preds = %30
  br label %99

99:                                               ; preds = %98, %3
  %100 = load i32, i32* @RES_TYPE_FONTDIR, align 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store %struct.TYPE_7__* %103, %struct.TYPE_7__** %106, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  ret void
}

declare dso_local %struct.TYPE_6__* @define_standard_resource(i32*, i32, i32, i32, i32) #1

declare dso_local i32* @rcdata_render_as_buffer(i32*, i64*) #1

declare dso_local i8* @windres_get_16(i32*, i32*, i64) #1

declare dso_local i64 @res_alloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
