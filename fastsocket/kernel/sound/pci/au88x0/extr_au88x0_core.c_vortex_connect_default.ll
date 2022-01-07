; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_core.c_vortex_connect_default.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_core.c_vortex_connect_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8**, i32, i8**, i8** }

@VORTEX_RESOURCE_MIXOUT = common dso_local global i32 0, align 4
@VORTEX_RESOURCE_MIXIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32)* @vortex_connect_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_connect_default(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @VORTEX_RESOURCE_MIXOUT, align 4
  %11 = call i8* @vortex_adb_checkinout(%struct.TYPE_10__* %5, i32 %8, i32 %9, i32 %10)
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  %14 = load i8**, i8*** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  store i8* %11, i8** %15, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @VORTEX_RESOURCE_MIXOUT, align 4
  %22 = call i8* @vortex_adb_checkinout(%struct.TYPE_10__* %16, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 3
  %25 = load i8**, i8*** %24, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  store i8* %22, i8** %26, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = call i64 @VORTEX_IS_QUAD(%struct.TYPE_10__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %2
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @VORTEX_RESOURCE_MIXOUT, align 4
  %37 = call i8* @vortex_adb_checkinout(%struct.TYPE_10__* %31, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 2
  store i8* %37, i8** %41, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @VORTEX_RESOURCE_MIXOUT, align 4
  %48 = call i8* @vortex_adb_checkinout(%struct.TYPE_10__* %42, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 3
  %51 = load i8**, i8*** %50, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 3
  store i8* %48, i8** %52, align 8
  br label %53

53:                                               ; preds = %30, %2
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  %58 = load i8**, i8*** %57, align 8
  %59 = call i32 @vortex_connect_codecplay(%struct.TYPE_10__* %54, i32 %55, i8** %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @VORTEX_RESOURCE_MIXIN, align 4
  %66 = call i8* @vortex_adb_checkinout(%struct.TYPE_10__* %60, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  store i8* %66, i8** %70, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @VORTEX_RESOURCE_MIXIN, align 4
  %77 = call i8* @vortex_adb_checkinout(%struct.TYPE_10__* %71, i32 %74, i32 %75, i32 %76)
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 2
  %80 = load i8**, i8*** %79, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 1
  store i8* %77, i8** %81, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @MIX_CAPT(i32 0)
  %85 = call i32 @MIX_CAPT(i32 1)
  %86 = call i32 @vortex_connect_codecrec(%struct.TYPE_10__* %82, i32 %83, i32 %84, i32 %85)
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @VORTEX_RESOURCE_MIXOUT, align 4
  %93 = call i8* @vortex_adb_checkinout(%struct.TYPE_10__* %87, i32 %90, i32 %91, i32 %92)
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i8**, i8*** %95, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 0
  store i8* %93, i8** %97, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @VORTEX_RESOURCE_MIXOUT, align 4
  %104 = call i8* @vortex_adb_checkinout(%struct.TYPE_10__* %98, i32 %101, i32 %102, i32 %103)
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i8**, i8*** %106, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 1
  store i8* %104, i8** %108, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %110 = load i32, i32* %4, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i8**, i8*** %112, align 8
  %114 = getelementptr inbounds i8*, i8** %113, i64 0
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @ADB_SPDIFOUT(i32 0)
  %117 = call i32 @vortex_connection_mix_adb(%struct.TYPE_10__* %109, i32 %110, i32 20, i8* %115, i32 %116)
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %119 = load i32, i32* %4, align 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i8**, i8*** %121, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 1
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @ADB_SPDIFOUT(i32 1)
  %126 = call i32 @vortex_connection_mix_adb(%struct.TYPE_10__* %118, i32 %119, i32 20, i8* %124, i32 %125)
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %128 = load i32, i32* %4, align 4
  %129 = call i32 @vortex_wt_connect(%struct.TYPE_10__* %127, i32 %128)
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @vortex_Vort3D_connect(%struct.TYPE_10__* %130, i32 %131)
  ret void
}

declare dso_local i8* @vortex_adb_checkinout(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i64 @VORTEX_IS_QUAD(%struct.TYPE_10__*) #1

declare dso_local i32 @vortex_connect_codecplay(%struct.TYPE_10__*, i32, i8**) #1

declare dso_local i32 @vortex_connect_codecrec(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @MIX_CAPT(i32) #1

declare dso_local i32 @vortex_connection_mix_adb(%struct.TYPE_10__*, i32, i32, i8*, i32) #1

declare dso_local i32 @ADB_SPDIFOUT(i32) #1

declare dso_local i32 @vortex_wt_connect(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @vortex_Vort3D_connect(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
