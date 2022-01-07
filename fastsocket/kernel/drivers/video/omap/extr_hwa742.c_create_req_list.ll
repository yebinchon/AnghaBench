; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_hwa742.c_create_req_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_hwa742.c_create_req_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.omapfb_update_window = type { i32, i32, i32, i32, i32 }
%struct.list_head = type { i32 }
%struct.hwa742_request = type { i32 }

@OMAPFB_FORMAT_MASK = common dso_local global i32 0, align 4
@OMAPFB_FORMAT_FLAG_TEARSYNC = common dso_local global i32 0, align 4
@hwa742 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omapfb_update_window*, %struct.list_head*)* @create_req_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_req_list(%struct.omapfb_update_window* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.omapfb_update_window*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.hwa742_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.omapfb_update_window* %0, %struct.omapfb_update_window** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %15 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %3, align 8
  %16 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %3, align 8
  %19 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %3, align 8
  %22 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %3, align 8
  %25 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %3, align 8
  %28 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @OMAPFB_FORMAT_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  store i32 %32, i32* %11, align 4
  %33 = load %struct.omapfb_update_window*, %struct.omapfb_update_window** %3, align 8
  %34 = getelementptr inbounds %struct.omapfb_update_window, %struct.omapfb_update_window* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @OMAPFB_FORMAT_MASK, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %2
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @ADD_PREQ(i32 %42, i32 %43, i32 1, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* @OMAPFB_FORMAT_FLAG_TEARSYNC, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %11, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %41, %2
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, -2
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %105

58:                                               ; preds = %54
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, -2
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %9, align 4
  %65 = mul i32 %63, %64
  %66 = mul i32 %65, 2
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwa742, i32 0, i32 0), align 4
  %68 = icmp ugt i32 %66, %67
  br i1 %68, label %69, label %89

69:                                               ; preds = %58
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hwa742, i32 0, i32 0), align 4
  %71 = load i32, i32* %12, align 4
  %72 = mul i32 %71, 2
  %73 = udiv i32 %70, %72
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @ADD_PREQ(i32 %74, i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %13, align 4
  %81 = add i32 %80, %79
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %14, align 4
  %84 = sub i32 %82, %83
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* @OMAPFB_FORMAT_FLAG_TEARSYNC, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %11, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %69, %58
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @ADD_PREQ(i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %6, align 4
  %97 = add i32 %96, %95
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %8, align 4
  %100 = sub i32 %99, %98
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* @OMAPFB_FORMAT_FLAG_TEARSYNC, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %11, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %89, %54
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @ADD_PREQ(i32 %109, i32 %110, i32 1, i32 %111)
  br label %113

113:                                              ; preds = %108, %105
  ret void
}

declare dso_local i32 @ADD_PREQ(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
