; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_rspqueue_getnext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_rspqueue_getnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slic_rspbuf = type { i32, i32 }
%struct.adapter = type { %struct.TYPE_2__*, %struct.slic_rspqueue }
%struct.TYPE_2__ = type { i32, i32 }
%struct.slic_rspqueue = type { i32, i32*, i64, i32, %struct.slic_rspbuf*, i64* }

@SLIC_RSPQ_BUFSINPAGE = common dso_local global i32 0, align 4
@DONT_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.slic_rspbuf* (%struct.adapter*)* @slic_rspqueue_getnext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.slic_rspbuf* @slic_rspqueue_getnext(%struct.adapter* %0) #0 {
  %2 = alloca %struct.slic_rspbuf*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.slic_rspqueue*, align 8
  %5 = alloca %struct.slic_rspbuf*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 1
  store %struct.slic_rspqueue* %7, %struct.slic_rspqueue** %4, align 8
  %8 = load %struct.slic_rspqueue*, %struct.slic_rspqueue** %4, align 8
  %9 = getelementptr inbounds %struct.slic_rspqueue, %struct.slic_rspqueue* %8, i32 0, i32 4
  %10 = load %struct.slic_rspbuf*, %struct.slic_rspbuf** %9, align 8
  %11 = getelementptr inbounds %struct.slic_rspbuf, %struct.slic_rspbuf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.slic_rspbuf* null, %struct.slic_rspbuf** %2, align 8
  br label %128

15:                                               ; preds = %1
  %16 = load %struct.slic_rspqueue*, %struct.slic_rspqueue** %4, align 8
  %17 = getelementptr inbounds %struct.slic_rspqueue, %struct.slic_rspqueue* %16, i32 0, i32 4
  %18 = load %struct.slic_rspbuf*, %struct.slic_rspbuf** %17, align 8
  store %struct.slic_rspbuf* %18, %struct.slic_rspbuf** %5, align 8
  %19 = load %struct.slic_rspbuf*, %struct.slic_rspbuf** %5, align 8
  %20 = getelementptr inbounds %struct.slic_rspbuf, %struct.slic_rspbuf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, -32
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.slic_rspbuf*, %struct.slic_rspbuf** %5, align 8
  %27 = getelementptr inbounds %struct.slic_rspbuf, %struct.slic_rspbuf* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load %struct.slic_rspqueue*, %struct.slic_rspqueue** %4, align 8
  %31 = getelementptr inbounds %struct.slic_rspqueue, %struct.slic_rspqueue* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load i32, i32* @SLIC_RSPQ_BUFSINPAGE, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %15
  %37 = load %struct.slic_rspqueue*, %struct.slic_rspqueue** %4, align 8
  %38 = getelementptr inbounds %struct.slic_rspqueue, %struct.slic_rspqueue* %37, i32 0, i32 4
  %39 = load %struct.slic_rspbuf*, %struct.slic_rspbuf** %38, align 8
  %40 = getelementptr inbounds %struct.slic_rspbuf, %struct.slic_rspbuf* %39, i32 1
  store %struct.slic_rspbuf* %40, %struct.slic_rspbuf** %38, align 8
  %41 = load %struct.slic_rspqueue*, %struct.slic_rspqueue** %4, align 8
  %42 = getelementptr inbounds %struct.slic_rspqueue, %struct.slic_rspqueue* %41, i32 0, i32 4
  %43 = load %struct.slic_rspbuf*, %struct.slic_rspbuf** %42, align 8
  %44 = ptrtoint %struct.slic_rspbuf* %43 to i32
  %45 = and i32 %44, -32
  %46 = load %struct.slic_rspqueue*, %struct.slic_rspqueue** %4, align 8
  %47 = getelementptr inbounds %struct.slic_rspqueue, %struct.slic_rspqueue* %46, i32 0, i32 4
  %48 = load %struct.slic_rspbuf*, %struct.slic_rspbuf** %47, align 8
  %49 = ptrtoint %struct.slic_rspbuf* %48 to i32
  %50 = icmp eq i32 %45, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  br label %118

53:                                               ; preds = %15
  %54 = load %struct.slic_rspqueue*, %struct.slic_rspqueue** %4, align 8
  %55 = getelementptr inbounds %struct.slic_rspqueue, %struct.slic_rspqueue* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SLIC_RSPQ_BUFSINPAGE, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @ASSERT(i32 %59)
  %61 = load %struct.adapter*, %struct.adapter** %3, align 8
  %62 = load %struct.adapter*, %struct.adapter** %3, align 8
  %63 = getelementptr inbounds %struct.adapter, %struct.adapter* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load %struct.slic_rspqueue*, %struct.slic_rspqueue** %4, align 8
  %67 = getelementptr inbounds %struct.slic_rspqueue, %struct.slic_rspqueue* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.slic_rspqueue*, %struct.slic_rspqueue** %4, align 8
  %70 = getelementptr inbounds %struct.slic_rspqueue, %struct.slic_rspqueue* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SLIC_RSPQ_BUFSINPAGE, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.adapter*, %struct.adapter** %3, align 8
  %77 = getelementptr inbounds %struct.adapter, %struct.adapter* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* @DONT_FLUSH, align 4
  %81 = call i32 @slic_reg64_write(%struct.adapter* %61, i32* %65, i32 %75, i32* %79, i32 0, i32 %80)
  %82 = load %struct.slic_rspqueue*, %struct.slic_rspqueue** %4, align 8
  %83 = getelementptr inbounds %struct.slic_rspqueue, %struct.slic_rspqueue* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %83, align 8
  %86 = load %struct.slic_rspqueue*, %struct.slic_rspqueue** %4, align 8
  %87 = getelementptr inbounds %struct.slic_rspqueue, %struct.slic_rspqueue* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = urem i64 %85, %89
  %91 = load %struct.slic_rspqueue*, %struct.slic_rspqueue** %4, align 8
  %92 = getelementptr inbounds %struct.slic_rspqueue, %struct.slic_rspqueue* %91, i32 0, i32 2
  store i64 %90, i64* %92, align 8
  %93 = load %struct.slic_rspqueue*, %struct.slic_rspqueue** %4, align 8
  %94 = getelementptr inbounds %struct.slic_rspqueue, %struct.slic_rspqueue* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  %95 = load %struct.slic_rspqueue*, %struct.slic_rspqueue** %4, align 8
  %96 = getelementptr inbounds %struct.slic_rspqueue, %struct.slic_rspqueue* %95, i32 0, i32 5
  %97 = load i64*, i64** %96, align 8
  %98 = load %struct.slic_rspqueue*, %struct.slic_rspqueue** %4, align 8
  %99 = getelementptr inbounds %struct.slic_rspqueue, %struct.slic_rspqueue* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i64, i64* %97, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to %struct.slic_rspbuf*
  %104 = load %struct.slic_rspqueue*, %struct.slic_rspqueue** %4, align 8
  %105 = getelementptr inbounds %struct.slic_rspqueue, %struct.slic_rspqueue* %104, i32 0, i32 4
  store %struct.slic_rspbuf* %103, %struct.slic_rspbuf** %105, align 8
  %106 = load %struct.slic_rspqueue*, %struct.slic_rspqueue** %4, align 8
  %107 = getelementptr inbounds %struct.slic_rspqueue, %struct.slic_rspqueue* %106, i32 0, i32 4
  %108 = load %struct.slic_rspbuf*, %struct.slic_rspbuf** %107, align 8
  %109 = ptrtoint %struct.slic_rspbuf* %108 to i32
  %110 = and i32 %109, -4096
  %111 = load %struct.slic_rspqueue*, %struct.slic_rspqueue** %4, align 8
  %112 = getelementptr inbounds %struct.slic_rspqueue, %struct.slic_rspqueue* %111, i32 0, i32 4
  %113 = load %struct.slic_rspbuf*, %struct.slic_rspbuf** %112, align 8
  %114 = ptrtoint %struct.slic_rspbuf* %113 to i32
  %115 = icmp eq i32 %110, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @ASSERT(i32 %116)
  br label %118

118:                                              ; preds = %53, %36
  %119 = load %struct.slic_rspbuf*, %struct.slic_rspbuf** %5, align 8
  %120 = ptrtoint %struct.slic_rspbuf* %119 to i32
  %121 = and i32 %120, -32
  %122 = load %struct.slic_rspbuf*, %struct.slic_rspbuf** %5, align 8
  %123 = ptrtoint %struct.slic_rspbuf* %122 to i32
  %124 = icmp eq i32 %121, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 @ASSERT(i32 %125)
  %127 = load %struct.slic_rspbuf*, %struct.slic_rspbuf** %5, align 8
  store %struct.slic_rspbuf* %127, %struct.slic_rspbuf** %2, align 8
  br label %128

128:                                              ; preds = %118, %14
  %129 = load %struct.slic_rspbuf*, %struct.slic_rspbuf** %2, align 8
  ret %struct.slic_rspbuf* %129
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @slic_reg64_write(%struct.adapter*, i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
