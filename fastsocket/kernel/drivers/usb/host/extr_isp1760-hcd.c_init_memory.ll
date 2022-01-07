; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1760-hcd.c_init_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1760-hcd.c_init_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1760_hcd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i64 }

@BLOCK_1_NUM = common dso_local global i32 0, align 4
@BLOCK_1_SIZE = common dso_local global i64 0, align 8
@BLOCK_2_NUM = common dso_local global i32 0, align 4
@BLOCK_2_SIZE = common dso_local global i64 0, align 8
@BLOCKS = common dso_local global i32 0, align 4
@BLOCK_3_SIZE = common dso_local global i64 0, align 8
@PAYLOAD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp1760_hcd*)* @init_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_memory(%struct.isp1760_hcd* %0) #0 {
  %2 = alloca %struct.isp1760_hcd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.isp1760_hcd* %0, %struct.isp1760_hcd** %2, align 8
  store i64 4096, i64* %4, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %43, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @BLOCK_1_NUM, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %46

9:                                                ; preds = %5
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %2, align 8
  %12 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i64 %10, i64* %17, align 8
  %18 = load i64, i64* @BLOCK_1_SIZE, align 8
  %19 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %2, align 8
  %20 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i64 %18, i64* %25, align 8
  %26 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %2, align 8
  %27 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 1, i32* %32, align 8
  %33 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %2, align 8
  %34 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %4, align 8
  %42 = add nsw i64 %41, %40
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %9
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %5

46:                                               ; preds = %5
  %47 = load i32, i32* @BLOCK_1_NUM, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %88, %46
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @BLOCK_1_NUM, align 4
  %51 = load i32, i32* @BLOCK_2_NUM, align 4
  %52 = add nsw i32 %50, %51
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %91

54:                                               ; preds = %48
  %55 = load i64, i64* %4, align 8
  %56 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %2, align 8
  %57 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  store i64 %55, i64* %62, align 8
  %63 = load i64, i64* @BLOCK_2_SIZE, align 8
  %64 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %2, align 8
  %65 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i64 %63, i64* %70, align 8
  %71 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %2, align 8
  %72 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 1, i32* %77, align 8
  %78 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %2, align 8
  %79 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %4, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %4, align 8
  br label %88

88:                                               ; preds = %54
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %48

91:                                               ; preds = %48
  %92 = load i32, i32* @BLOCK_1_NUM, align 4
  %93 = load i32, i32* @BLOCK_2_NUM, align 4
  %94 = add nsw i32 %92, %93
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %133, %91
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @BLOCKS, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %136

99:                                               ; preds = %95
  %100 = load i64, i64* %4, align 8
  %101 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %2, align 8
  %102 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  store i64 %100, i64* %107, align 8
  %108 = load i64, i64* @BLOCK_3_SIZE, align 8
  %109 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %2, align 8
  %110 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  store i64 %108, i64* %115, align 8
  %116 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %2, align 8
  %117 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %116, i32 0, i32 0
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  store i32 1, i32* %122, align 8
  %123 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %2, align 8
  %124 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %123, i32 0, i32 0
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %4, align 8
  %132 = add nsw i64 %131, %130
  store i64 %132, i64* %4, align 8
  br label %133

133:                                              ; preds = %99
  %134 = load i32, i32* %3, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %3, align 4
  br label %95

136:                                              ; preds = %95
  %137 = load i64, i64* %4, align 8
  %138 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %2, align 8
  %139 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %138, i32 0, i32 0
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = load i32, i32* %3, align 4
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = sub nsw i64 %137, %146
  %148 = load i64, i64* @PAYLOAD_SIZE, align 8
  %149 = icmp sgt i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @BUG_ON(i32 %150)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
