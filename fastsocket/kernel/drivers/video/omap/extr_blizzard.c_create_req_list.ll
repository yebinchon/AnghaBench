; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_create_req_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_create_req_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.omapfb_update_window = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { i32 }
%struct.blizzard_request = type { i32 }

@OMAPFB_FORMAT_MASK = common dso_local global i32 0, align 4
@blizzard = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@OMAPFB_FORMAT_FLAG_TEARSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.omapfb_update_window*, %struct.list_head*)* @create_req_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_req_list(i32 %0, %struct.omapfb_update_window* %1, %struct.list_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.omapfb_update_window*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.blizzard_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.omapfb_update_window* %1, %struct.omapfb_update_window** %5, align 8
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %23 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %5, align 8
  %24 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %5, align 8
  %27 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %5, align 8
  %30 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %5, align 8
  %33 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %5, align 8
  %36 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %12, align 4
  %38 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %5, align 8
  %39 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %13, align 4
  %41 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %5, align 8
  %42 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %14, align 4
  %44 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %5, align 8
  %45 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %19, align 4
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %20, align 4
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %21, align 4
  %50 = load i32, i32* %15, align 4
  store i32 %50, i32* %22, align 4
  %51 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %5, align 8
  %52 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @OMAPFB_FORMAT_MASK, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  store i32 %56, i32* %18, align 4
  %57 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %5, align 8
  %58 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @OMAPFB_FORMAT_MASK, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  switch i32 %62, label %72 [
    i32 128, label %63
  ]

63:                                               ; preds = %3
  store i32 12, i32* %17, align 4
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, -2
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, -2
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %11, align 4
  %69 = and i32 %68, -2
  store i32 %69, i32* %20, align 4
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %70, -4
  store i32 %71, i32* %10, align 4
  br label %79

72:                                               ; preds = %3
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 1), align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %17, align 4
  br label %79

79:                                               ; preds = %72, %63
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %17, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sdiv i32 %84, 8
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 0), align 8
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %125

88:                                               ; preds = %79
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 0), align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %17, align 4
  %92 = mul nsw i32 %90, %91
  %93 = sdiv i32 %92, 8
  %94 = sdiv i32 %89, %93
  store i32 %94, i32* %20, align 4
  %95 = load i32, i32* %20, align 4
  %96 = load i32, i32* %15, align 4
  %97 = mul i32 %95, %96
  %98 = load i32, i32* %11, align 4
  %99 = udiv i32 %97, %98
  store i32 %99, i32* %22, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %21, align 4
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %22, align 4
  %108 = call i32 @ADD_PREQ(i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 %107)
  %109 = load i32, i32* %20, align 4
  %110 = load i32, i32* %19, align 4
  %111 = add i32 %110, %109
  store i32 %111, i32* %19, align 4
  %112 = load i32, i32* %22, align 4
  %113 = load i32, i32* %21, align 4
  %114 = add i32 %113, %112
  store i32 %114, i32* %21, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %20, align 4
  %117 = sub i32 %115, %116
  store i32 %117, i32* %20, align 4
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %22, align 4
  %120 = sub i32 %118, %119
  store i32 %120, i32* %22, align 4
  %121 = load i32, i32* @OMAPFB_FORMAT_FLAG_TEARSYNC, align 4
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %18, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %18, align 4
  br label %125

125:                                              ; preds = %88, %79
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %19, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %20, align 4
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %21, align 4
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* %22, align 4
  %134 = call i32 @ADD_PREQ(i32 %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %133)
  ret void
}

declare dso_local i32 @ADD_PREQ(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
