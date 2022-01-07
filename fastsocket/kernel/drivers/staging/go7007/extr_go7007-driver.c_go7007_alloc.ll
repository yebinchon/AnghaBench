; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-driver.c_go7007_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-driver.c_go7007_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32, i32, i32, i32, i32, i32, i32, i64, i32*, i64*, %struct.TYPE_2__*, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, i64, i64, i64, i32, i32, i32, i64, i64, i32, i64, i64, i32, i32, i64, i32*, i32, i32, i32, i64*, i64, i64, %struct.go7007_board_info*, %struct.device* }
%struct.TYPE_2__ = type { i64 }
%struct.go7007_board_info = type { i32, i32, i32, i32, i32, i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@STATUS_INIT = common dso_local global i32 0, align 4
@GO7007_SENSOR_TV = common dso_local global i32 0, align 4
@GO7007_STD_NTSC = common dso_local global i32 0, align 4
@GO7007_STD_OTHER = common dso_local global i32 0, align 4
@GO7007_FORMAT_MJPEG = common dso_local global i32 0, align 4
@GO7007_RATIO_1_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.go7007* @go7007_alloc(%struct.go7007_board_info* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.go7007*, align 8
  %4 = alloca %struct.go7007_board_info*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.go7007*, align 8
  %7 = alloca i32, align 4
  store %struct.go7007_board_info* %0, %struct.go7007_board_info** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.go7007* @kmalloc(i32 320, i32 %8)
  store %struct.go7007* %9, %struct.go7007** %6, align 8
  %10 = load %struct.go7007*, %struct.go7007** %6, align 8
  %11 = icmp eq %struct.go7007* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.go7007* null, %struct.go7007** %3, align 8
  br label %179

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = load %struct.go7007*, %struct.go7007** %6, align 8
  %16 = getelementptr inbounds %struct.go7007, %struct.go7007* %15, i32 0, i32 45
  store %struct.device* %14, %struct.device** %16, align 8
  %17 = load %struct.go7007_board_info*, %struct.go7007_board_info** %4, align 8
  %18 = load %struct.go7007*, %struct.go7007** %6, align 8
  %19 = getelementptr inbounds %struct.go7007, %struct.go7007* %18, i32 0, i32 44
  store %struct.go7007_board_info* %17, %struct.go7007_board_info** %19, align 8
  %20 = load %struct.go7007*, %struct.go7007** %6, align 8
  %21 = getelementptr inbounds %struct.go7007, %struct.go7007* %20, i32 0, i32 43
  store i64 0, i64* %21, align 8
  %22 = load %struct.go7007*, %struct.go7007** %6, align 8
  %23 = getelementptr inbounds %struct.go7007, %struct.go7007* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  %24 = load %struct.go7007*, %struct.go7007** %6, align 8
  %25 = getelementptr inbounds %struct.go7007, %struct.go7007* %24, i32 0, i32 42
  store i64 0, i64* %25, align 8
  %26 = load %struct.go7007*, %struct.go7007** %6, align 8
  %27 = getelementptr inbounds %struct.go7007, %struct.go7007* %26, i32 0, i32 41
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.go7007*, %struct.go7007** %6, align 8
  %31 = getelementptr inbounds %struct.go7007, %struct.go7007* %30, i32 0, i32 40
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.go7007*, %struct.go7007** %6, align 8
  %34 = getelementptr inbounds %struct.go7007, %struct.go7007* %33, i32 0, i32 39
  %35 = call i32 @init_waitqueue_head(i32* %34)
  %36 = load %struct.go7007*, %struct.go7007** %6, align 8
  %37 = getelementptr inbounds %struct.go7007, %struct.go7007* %36, i32 0, i32 38
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.go7007*, %struct.go7007** %6, align 8
  %40 = getelementptr inbounds %struct.go7007, %struct.go7007* %39, i32 0, i32 37
  store i32* null, i32** %40, align 8
  %41 = load %struct.go7007*, %struct.go7007** %6, align 8
  %42 = getelementptr inbounds %struct.go7007, %struct.go7007* %41, i32 0, i32 36
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @STATUS_INIT, align 4
  %44 = load %struct.go7007*, %struct.go7007** %6, align 8
  %45 = getelementptr inbounds %struct.go7007, %struct.go7007* %44, i32 0, i32 35
  store i32 %43, i32* %45, align 4
  %46 = load %struct.go7007*, %struct.go7007** %6, align 8
  %47 = getelementptr inbounds %struct.go7007, %struct.go7007* %46, i32 0, i32 34
  %48 = call i32 @memset(i32* %47, i32 0, i32 4)
  %49 = load %struct.go7007*, %struct.go7007** %6, align 8
  %50 = getelementptr inbounds %struct.go7007, %struct.go7007* %49, i32 0, i32 33
  store i64 0, i64* %50, align 8
  %51 = load %struct.go7007*, %struct.go7007** %6, align 8
  %52 = getelementptr inbounds %struct.go7007, %struct.go7007* %51, i32 0, i32 32
  store i64 0, i64* %52, align 8
  %53 = load %struct.go7007*, %struct.go7007** %6, align 8
  %54 = getelementptr inbounds %struct.go7007, %struct.go7007* %53, i32 0, i32 31
  %55 = call i32 @init_waitqueue_head(i32* %54)
  %56 = load %struct.go7007*, %struct.go7007** %6, align 8
  %57 = getelementptr inbounds %struct.go7007, %struct.go7007* %56, i32 0, i32 30
  store i64 0, i64* %57, align 8
  %58 = load %struct.go7007*, %struct.go7007** %6, align 8
  %59 = getelementptr inbounds %struct.go7007, %struct.go7007* %58, i32 0, i32 29
  store i64 0, i64* %59, align 8
  %60 = load %struct.go7007_board_info*, %struct.go7007_board_info** %4, align 8
  %61 = getelementptr inbounds %struct.go7007_board_info, %struct.go7007_board_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @GO7007_SENSOR_TV, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %13
  %67 = load i32, i32* @GO7007_STD_NTSC, align 4
  %68 = load %struct.go7007*, %struct.go7007** %6, align 8
  %69 = getelementptr inbounds %struct.go7007, %struct.go7007* %68, i32 0, i32 28
  store i32 %67, i32* %69, align 8
  %70 = load %struct.go7007*, %struct.go7007** %6, align 8
  %71 = getelementptr inbounds %struct.go7007, %struct.go7007* %70, i32 0, i32 1
  store i32 720, i32* %71, align 4
  %72 = load %struct.go7007*, %struct.go7007** %6, align 8
  %73 = getelementptr inbounds %struct.go7007, %struct.go7007* %72, i32 0, i32 2
  store i32 480, i32* %73, align 8
  %74 = load %struct.go7007*, %struct.go7007** %6, align 8
  %75 = getelementptr inbounds %struct.go7007, %struct.go7007* %74, i32 0, i32 3
  store i32 30000, i32* %75, align 4
  br label %95

76:                                               ; preds = %13
  %77 = load i32, i32* @GO7007_STD_OTHER, align 4
  %78 = load %struct.go7007*, %struct.go7007** %6, align 8
  %79 = getelementptr inbounds %struct.go7007, %struct.go7007* %78, i32 0, i32 28
  store i32 %77, i32* %79, align 8
  %80 = load %struct.go7007_board_info*, %struct.go7007_board_info** %4, align 8
  %81 = getelementptr inbounds %struct.go7007_board_info, %struct.go7007_board_info* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.go7007*, %struct.go7007** %6, align 8
  %84 = getelementptr inbounds %struct.go7007, %struct.go7007* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.go7007_board_info*, %struct.go7007_board_info** %4, align 8
  %86 = getelementptr inbounds %struct.go7007_board_info, %struct.go7007_board_info* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.go7007*, %struct.go7007** %6, align 8
  %89 = getelementptr inbounds %struct.go7007, %struct.go7007* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.go7007_board_info*, %struct.go7007_board_info** %4, align 8
  %91 = getelementptr inbounds %struct.go7007_board_info, %struct.go7007_board_info* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.go7007*, %struct.go7007** %6, align 8
  %94 = getelementptr inbounds %struct.go7007, %struct.go7007* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %76, %66
  %96 = load %struct.go7007_board_info*, %struct.go7007_board_info** %4, align 8
  %97 = getelementptr inbounds %struct.go7007_board_info, %struct.go7007_board_info* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.go7007*, %struct.go7007** %6, align 8
  %100 = getelementptr inbounds %struct.go7007, %struct.go7007* %99, i32 0, i32 27
  store i32 %98, i32* %100, align 4
  %101 = load %struct.go7007_board_info*, %struct.go7007_board_info** %4, align 8
  %102 = getelementptr inbounds %struct.go7007_board_info, %struct.go7007_board_info* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.go7007*, %struct.go7007** %6, align 8
  %105 = getelementptr inbounds %struct.go7007, %struct.go7007* %104, i32 0, i32 26
  store i32 %103, i32* %105, align 8
  %106 = load %struct.go7007*, %struct.go7007** %6, align 8
  %107 = getelementptr inbounds %struct.go7007, %struct.go7007* %106, i32 0, i32 25
  store i64 0, i64* %107, align 8
  %108 = load %struct.go7007*, %struct.go7007** %6, align 8
  %109 = getelementptr inbounds %struct.go7007, %struct.go7007* %108, i32 0, i32 24
  store i64 0, i64* %109, align 8
  %110 = load %struct.go7007*, %struct.go7007** %6, align 8
  %111 = getelementptr inbounds %struct.go7007, %struct.go7007* %110, i32 0, i32 23
  store i64 0, i64* %111, align 8
  %112 = load %struct.go7007*, %struct.go7007** %6, align 8
  %113 = getelementptr inbounds %struct.go7007, %struct.go7007* %112, i32 0, i32 22
  store i64 0, i64* %113, align 8
  %114 = load i32, i32* @GO7007_FORMAT_MJPEG, align 4
  %115 = load %struct.go7007*, %struct.go7007** %6, align 8
  %116 = getelementptr inbounds %struct.go7007, %struct.go7007* %115, i32 0, i32 21
  store i32 %114, i32* %116, align 8
  %117 = load %struct.go7007*, %struct.go7007** %6, align 8
  %118 = getelementptr inbounds %struct.go7007, %struct.go7007* %117, i32 0, i32 4
  store i32 1500000, i32* %118, align 8
  %119 = load %struct.go7007*, %struct.go7007** %6, align 8
  %120 = getelementptr inbounds %struct.go7007, %struct.go7007* %119, i32 0, i32 5
  store i32 1, i32* %120, align 4
  %121 = load %struct.go7007*, %struct.go7007** %6, align 8
  %122 = getelementptr inbounds %struct.go7007, %struct.go7007* %121, i32 0, i32 20
  store i64 0, i64* %122, align 8
  %123 = load i32, i32* @GO7007_RATIO_1_1, align 4
  %124 = load %struct.go7007*, %struct.go7007** %6, align 8
  %125 = getelementptr inbounds %struct.go7007, %struct.go7007* %124, i32 0, i32 19
  store i32 %123, i32* %125, align 8
  %126 = load %struct.go7007*, %struct.go7007** %6, align 8
  %127 = getelementptr inbounds %struct.go7007, %struct.go7007* %126, i32 0, i32 18
  store i64 0, i64* %127, align 8
  %128 = load %struct.go7007*, %struct.go7007** %6, align 8
  %129 = getelementptr inbounds %struct.go7007, %struct.go7007* %128, i32 0, i32 17
  store i64 0, i64* %129, align 8
  %130 = load %struct.go7007*, %struct.go7007** %6, align 8
  %131 = getelementptr inbounds %struct.go7007, %struct.go7007* %130, i32 0, i32 16
  store i64 0, i64* %131, align 8
  %132 = load %struct.go7007*, %struct.go7007** %6, align 8
  %133 = getelementptr inbounds %struct.go7007, %struct.go7007* %132, i32 0, i32 15
  store i64 0, i64* %133, align 8
  %134 = load %struct.go7007*, %struct.go7007** %6, align 8
  %135 = getelementptr inbounds %struct.go7007, %struct.go7007* %134, i32 0, i32 14
  store i64 0, i64* %135, align 8
  %136 = load %struct.go7007*, %struct.go7007** %6, align 8
  %137 = getelementptr inbounds %struct.go7007, %struct.go7007* %136, i32 0, i32 13
  store i64 0, i64* %137, align 8
  %138 = load %struct.go7007*, %struct.go7007** %6, align 8
  %139 = getelementptr inbounds %struct.go7007, %struct.go7007* %138, i32 0, i32 12
  store i64 0, i64* %139, align 8
  %140 = load %struct.go7007*, %struct.go7007** %6, align 8
  %141 = getelementptr inbounds %struct.go7007, %struct.go7007* %140, i32 0, i32 11
  store i64 0, i64* %141, align 8
  store i32 0, i32* %7, align 4
  br label %142

142:                                              ; preds = %153, %95
  %143 = load i32, i32* %7, align 4
  %144 = icmp slt i32 %143, 4
  br i1 %144, label %145, label %156

145:                                              ; preds = %142
  %146 = load %struct.go7007*, %struct.go7007** %6, align 8
  %147 = getelementptr inbounds %struct.go7007, %struct.go7007* %146, i32 0, i32 10
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  store i64 0, i64* %152, align 8
  br label %153

153:                                              ; preds = %145
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %7, align 4
  br label %142

156:                                              ; preds = %142
  store i32 0, i32* %7, align 4
  br label %157

157:                                              ; preds = %167, %156
  %158 = load i32, i32* %7, align 4
  %159 = icmp slt i32 %158, 1624
  br i1 %159, label %160, label %170

160:                                              ; preds = %157
  %161 = load %struct.go7007*, %struct.go7007** %6, align 8
  %162 = getelementptr inbounds %struct.go7007, %struct.go7007* %161, i32 0, i32 9
  %163 = load i64*, i64** %162, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  store i64 0, i64* %166, align 8
  br label %167

167:                                              ; preds = %160
  %168 = load i32, i32* %7, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %7, align 4
  br label %157

170:                                              ; preds = %157
  %171 = load %struct.go7007*, %struct.go7007** %6, align 8
  %172 = getelementptr inbounds %struct.go7007, %struct.go7007* %171, i32 0, i32 8
  store i32* null, i32** %172, align 8
  %173 = load %struct.go7007*, %struct.go7007** %6, align 8
  %174 = getelementptr inbounds %struct.go7007, %struct.go7007* %173, i32 0, i32 7
  store i64 0, i64* %174, align 8
  %175 = load %struct.go7007*, %struct.go7007** %6, align 8
  %176 = getelementptr inbounds %struct.go7007, %struct.go7007* %175, i32 0, i32 6
  %177 = call i32 @INIT_LIST_HEAD(i32* %176)
  %178 = load %struct.go7007*, %struct.go7007** %6, align 8
  store %struct.go7007* %178, %struct.go7007** %3, align 8
  br label %179

179:                                              ; preds = %170, %12
  %180 = load %struct.go7007*, %struct.go7007** %3, align 8
  ret %struct.go7007* %180
}

declare dso_local %struct.go7007* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
