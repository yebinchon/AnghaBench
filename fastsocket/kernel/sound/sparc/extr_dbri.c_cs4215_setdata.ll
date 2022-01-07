; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/sparc/extr_dbri.c_cs4215_setdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/sparc/extr_dbri.c_cs4215_setdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dbri = type { %struct.TYPE_2__, %struct.dbri_streaminfo* }
%struct.TYPE_2__ = type { i32* }
%struct.dbri_streaminfo = type { i32, i32 }

@DBRI_PLAY = common dso_local global i64 0, align 8
@DBRI_MAX_VOLUME = common dso_local global i32 0, align 4
@DBRI_REC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_dbri*, i32)* @cs4215_setdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs4215_setdata(%struct.snd_dbri* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_dbri*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dbri_streaminfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_dbri* %0, %struct.snd_dbri** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %39

10:                                               ; preds = %2
  %11 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %12 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, 63
  store i32 %17, i32* %15, align 4
  %18 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %19 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, 63
  store i32 %24, i32* %22, align 4
  %25 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %26 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, -16
  store i32 %31, i32* %29, align 4
  %32 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %33 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, -16
  store i32 %38, i32* %36, align 4
  br label %118

39:                                               ; preds = %2
  %40 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %41 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %40, i32 0, i32 1
  %42 = load %struct.dbri_streaminfo*, %struct.dbri_streaminfo** %41, align 8
  %43 = load i64, i64* @DBRI_PLAY, align 8
  %44 = getelementptr inbounds %struct.dbri_streaminfo, %struct.dbri_streaminfo* %42, i64 %43
  store %struct.dbri_streaminfo* %44, %struct.dbri_streaminfo** %5, align 8
  %45 = load %struct.dbri_streaminfo*, %struct.dbri_streaminfo** %5, align 8
  %46 = getelementptr inbounds %struct.dbri_streaminfo, %struct.dbri_streaminfo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 63
  store i32 %48, i32* %6, align 4
  %49 = load %struct.dbri_streaminfo*, %struct.dbri_streaminfo** %5, align 8
  %50 = getelementptr inbounds %struct.dbri_streaminfo, %struct.dbri_streaminfo* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 63
  store i32 %52, i32* %7, align 4
  %53 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %54 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, -64
  store i32 %59, i32* %57, align 4
  %60 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %61 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, -64
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* @DBRI_MAX_VOLUME, align 4
  %68 = load i32, i32* %6, align 4
  %69 = sub nsw i32 %67, %68
  %70 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %71 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %69
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* @DBRI_MAX_VOLUME, align 4
  %78 = load i32, i32* %7, align 4
  %79 = sub nsw i32 %77, %78
  %80 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %81 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %79
  store i32 %86, i32* %84, align 4
  %87 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %88 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %87, i32 0, i32 1
  %89 = load %struct.dbri_streaminfo*, %struct.dbri_streaminfo** %88, align 8
  %90 = load i64, i64* @DBRI_REC, align 8
  %91 = getelementptr inbounds %struct.dbri_streaminfo, %struct.dbri_streaminfo* %89, i64 %90
  store %struct.dbri_streaminfo* %91, %struct.dbri_streaminfo** %5, align 8
  %92 = load %struct.dbri_streaminfo*, %struct.dbri_streaminfo** %5, align 8
  %93 = getelementptr inbounds %struct.dbri_streaminfo, %struct.dbri_streaminfo* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 15
  store i32 %95, i32* %6, align 4
  %96 = load %struct.dbri_streaminfo*, %struct.dbri_streaminfo** %5, align 8
  %97 = getelementptr inbounds %struct.dbri_streaminfo, %struct.dbri_streaminfo* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 15
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @CS4215_LG(i32 %100)
  %102 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %103 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %101
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @CS4215_RG(i32 %109)
  %111 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %112 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %110
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %39, %10
  %119 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %120 = load %struct.snd_dbri*, %struct.snd_dbri** %3, align 8
  %121 = getelementptr inbounds %struct.snd_dbri, %struct.snd_dbri* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @xmit_fixed(%struct.snd_dbri* %119, i32 20, i32 %124)
  ret void
}

declare dso_local i32 @CS4215_LG(i32) #1

declare dso_local i32 @CS4215_RG(i32) #1

declare dso_local i32 @xmit_fixed(%struct.snd_dbri*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
