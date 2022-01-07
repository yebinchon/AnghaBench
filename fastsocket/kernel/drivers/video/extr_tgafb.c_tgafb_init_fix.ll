; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tgafb.c_tgafb_init_fix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tgafb.c_tgafb_init_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_10__, %struct.TYPE_6__, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i32, i64, i32, i32, i64, i64, i64, i32, i64, i32, i32 }
%struct.tga_par = type { i32, i32, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Digital ZLXp-E1\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Digital ZLX-E1\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Digital ZLXp-E2\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Digital ZLX-E2\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Digital ZLXp-E3\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Digital ZLX-E3\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_DIRECTCOLOR = common dso_local global i32 0, align 4
@FB_ACCEL_DEC_TGA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @tgafb_init_fix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tgafb_init_fix(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.tga_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.tga_par*
  store %struct.tga_par* %11, %struct.tga_par** %3, align 8
  %12 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %13 = getelementptr inbounds %struct.tga_par, %struct.tga_par* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @TGA_BUS_PCI(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %17 = getelementptr inbounds %struct.tga_par, %struct.tga_par* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @TGA_BUS_TC(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %21 = getelementptr inbounds %struct.tga_par, %struct.tga_par* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %51 [
    i32 128, label %24
    i32 130, label %33
    i32 129, label %42
  ]

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  br label %32

32:                                               ; preds = %31, %28
  br label %52

33:                                               ; preds = %1
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %41

41:                                               ; preds = %40, %37
  br label %52

42:                                               ; preds = %1
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %50

50:                                               ; preds = %49, %46
  br label %52

51:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %52

52:                                               ; preds = %51, %50, %41, %32
  %53 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 12
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @strlcpy(i32 %56, i8* %57, i32 4)
  %59 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %60 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %61 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 11
  store i32 %59, i32* %62, align 8
  %63 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 10
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 128
  br i1 %67, label %68, label %70

68:                                               ; preds = %52
  %69 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  br label %72

70:                                               ; preds = %52
  %71 = load i32, i32* @FB_VISUAL_DIRECTCOLOR, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  %74 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %75 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 9
  store i32 %73, i32* %76, align 8
  %77 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %78 = getelementptr inbounds %struct.tga_par, %struct.tga_par* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %81 = getelementptr inbounds %struct.tga_par, %struct.tga_par* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = ashr i32 %82, 3
  %84 = mul nsw i32 %79, %83
  %85 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %86 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  %88 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %89 = getelementptr inbounds %struct.tga_par, %struct.tga_par* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %92 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  store i64 %90, i64* %93, align 8
  %94 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %95 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %99 = getelementptr inbounds %struct.tga_par, %struct.tga_par* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %97, %100
  %102 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %103 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  store i32 %101, i32* %104, align 8
  %105 = load %struct.tga_par*, %struct.tga_par** %3, align 8
  %106 = getelementptr inbounds %struct.tga_par, %struct.tga_par* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %109 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 3
  store i64 %107, i64* %110, align 8
  %111 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %112 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 4
  store i32 512, i32* %113, align 8
  %114 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %115 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 8
  store i64 0, i64* %116, align 8
  %117 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %118 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 7
  store i64 0, i64* %119, align 8
  %120 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %121 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 6
  store i64 0, i64* %122, align 8
  %123 = load i32, i32* @FB_ACCEL_DEC_TGA, align 4
  %124 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %125 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 5
  store i32 %123, i32* %126, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 128
  br i1 %128, label %129, label %154

129:                                              ; preds = %72
  %130 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %131 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  store i32 8, i32* %133, align 8
  %134 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %135 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  store i32 8, i32* %137, align 8
  %138 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %139 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  store i32 8, i32* %141, align 8
  %142 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %143 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  store i32 16, i32* %145, align 4
  %146 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %147 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 1
  store i32 8, i32* %149, align 4
  %150 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %151 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  store i64 0, i64* %153, align 8
  br label %154

154:                                              ; preds = %129, %72
  ret void
}

declare dso_local i32 @TGA_BUS_PCI(i32) #1

declare dso_local i32 @TGA_BUS_TC(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
