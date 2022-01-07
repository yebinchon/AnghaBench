; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_viafb_fill_var_timing_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/via/extr_hw.c_viafb_fill_var_timing_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VideoModeTable = type { i32, %struct.crt_mode_table* }
%struct.crt_mode_table = type { i32, %struct.display_timing }
%struct.display_timing = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fb_var_screeninfo = type { i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@CLE266Modes = common dso_local global %struct.VideoModeTable* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_fill_var_timing_info(%struct.fb_var_screeninfo* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.VideoModeTable*, align 8
  %8 = alloca %struct.crt_mode_table*, align 8
  %9 = alloca %struct.display_timing, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.VideoModeTable* null, %struct.VideoModeTable** %7, align 8
  store %struct.crt_mode_table* null, %struct.crt_mode_table** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.VideoModeTable*, %struct.VideoModeTable** @CLE266Modes, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @search_mode_setting(i32 %13)
  %15 = getelementptr inbounds %struct.VideoModeTable, %struct.VideoModeTable* %12, i64 %14
  store %struct.VideoModeTable* %15, %struct.VideoModeTable** %7, align 8
  %16 = load %struct.VideoModeTable*, %struct.VideoModeTable** %7, align 8
  %17 = getelementptr inbounds %struct.VideoModeTable, %struct.VideoModeTable* %16, i32 0, i32 1
  %18 = load %struct.crt_mode_table*, %struct.crt_mode_table** %17, align 8
  store %struct.crt_mode_table* %18, %struct.crt_mode_table** %8, align 8
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %37, %3
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.VideoModeTable*, %struct.VideoModeTable** %7, align 8
  %22 = getelementptr inbounds %struct.VideoModeTable, %struct.VideoModeTable* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.crt_mode_table*, %struct.crt_mode_table** %8, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.crt_mode_table, %struct.crt_mode_table* %27, i64 %29
  %31 = getelementptr inbounds %struct.crt_mode_table, %struct.crt_mode_table* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %40

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %19

40:                                               ; preds = %35, %19
  %41 = load %struct.crt_mode_table*, %struct.crt_mode_table** %8, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.crt_mode_table, %struct.crt_mode_table* %41, i64 %43
  %45 = getelementptr inbounds %struct.crt_mode_table, %struct.crt_mode_table* %44, i32 0, i32 1
  %46 = bitcast %struct.display_timing* %9 to i8*
  %47 = bitcast %struct.display_timing* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %46, i8* align 8 %47, i64 64, i1 false)
  %48 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %49 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %108 [
    i32 8, label %51
    i32 16, label %70
    i32 32, label %89
  ]

51:                                               ; preds = %40
  %52 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %53 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %52, i32 0, i32 12
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 4
  %55 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %56 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %55, i32 0, i32 11
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 0, i32* %57, align 4
  %58 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %59 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %58, i32 0, i32 10
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %62 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %61, i32 0, i32 12
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i32 6, i32* %63, align 4
  %64 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %65 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %64, i32 0, i32 11
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  store i32 6, i32* %66, align 4
  %67 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %68 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %67, i32 0, i32 10
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 6, i32* %69, align 4
  br label %109

70:                                               ; preds = %40
  %71 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %72 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %71, i32 0, i32 12
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 11, i32* %73, align 4
  %74 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %75 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %74, i32 0, i32 11
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 5, i32* %76, align 4
  %77 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %78 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %77, i32 0, i32 10
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store i32 0, i32* %79, align 4
  %80 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %81 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %80, i32 0, i32 12
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  store i32 5, i32* %82, align 4
  %83 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %84 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %83, i32 0, i32 11
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i32 6, i32* %85, align 4
  %86 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %87 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %86, i32 0, i32 10
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  store i32 5, i32* %88, align 4
  br label %109

89:                                               ; preds = %40
  %90 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %91 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %90, i32 0, i32 12
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  store i32 16, i32* %92, align 4
  %93 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %94 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %93, i32 0, i32 11
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  store i32 8, i32* %95, align 4
  %96 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %97 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %96, i32 0, i32 10
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  store i32 0, i32* %98, align 4
  %99 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %100 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %99, i32 0, i32 12
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  store i32 8, i32* %101, align 4
  %102 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %103 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %102, i32 0, i32 11
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  store i32 8, i32* %104, align 4
  %105 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %106 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %105, i32 0, i32 10
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  store i32 8, i32* %107, align 4
  br label %109

108:                                              ; preds = %40
  br label %109

109:                                              ; preds = %108, %89, %70, %51
  %110 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %111 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %110, i32 0, i32 8
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %114 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @viafb_get_pixclock(i32 %112, i32 %115, i32 %116)
  %118 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %119 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %118, i32 0, i32 9
  store i32 %117, i32* %119, align 8
  %120 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %9, i32 0, i32 7
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %9, i32 0, i32 6
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %9, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %123, %125
  %127 = sub nsw i64 %121, %126
  %128 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %129 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %128, i32 0, i32 6
  store i64 %127, i64* %129, align 8
  %130 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %9, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %9, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = sub nsw i64 %131, %133
  %135 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %136 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %135, i32 0, i32 5
  store i64 %134, i64* %136, align 8
  %137 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %9, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %140 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %139, i32 0, i32 4
  store i64 %138, i64* %140, align 8
  %141 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %9, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %9, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %9, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %144, %146
  %148 = sub nsw i64 %142, %147
  %149 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %150 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %149, i32 0, i32 3
  store i64 %148, i64* %150, align 8
  %151 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %9, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %9, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = sub nsw i64 %152, %154
  %156 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %157 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %156, i32 0, i32 2
  store i64 %155, i64* %157, align 8
  %158 = getelementptr inbounds %struct.display_timing, %struct.display_timing* %9, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %161 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %160, i32 0, i32 1
  store i64 %159, i64* %161, align 8
  ret void
}

declare dso_local i64 @search_mode_setting(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @viafb_get_pixclock(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
