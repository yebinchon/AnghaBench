; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_queue.c_zfQueueGetWithMac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_queue.c_zfQueueGetWithMac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zsQueue = type { i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @zfQueueGetWithMac(i32* %0, %struct.zsQueue* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.zsQueue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.zsQueue* %1, %struct.zsQueue** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* null, i32** %11, align 8
  %14 = call i32 (...) @zmw_declare_for_critical_section()
  %15 = load i32*, i32** %9, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @zmw_enter_critical_section(i32* %16)
  %18 = load %struct.zsQueue*, %struct.zsQueue** %7, align 8
  %19 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %12, align 8
  br label %21

21:                                               ; preds = %4, %121
  %22 = load i64, i64* %12, align 8
  %23 = load %struct.zsQueue*, %struct.zsQueue** %7, align 8
  %24 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %120

27:                                               ; preds = %21
  %28 = load %struct.zsQueue*, %struct.zsQueue** %7, align 8
  %29 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %28, i32 0, i32 3
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %10, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = call i64 @zfCompareDstwithBuf(i32* %35, i32* %36, i32* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %113

40:                                               ; preds = %27
  %41 = load i32*, i32** %10, align 8
  store i32* %41, i32** %11, align 8
  br label %42

42:                                               ; preds = %97, %40
  %43 = load i64, i64* %12, align 8
  %44 = add i64 %43, 1
  %45 = load %struct.zsQueue*, %struct.zsQueue** %7, align 8
  %46 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = and i64 %44, %47
  store i64 %48, i64* %13, align 8
  %49 = load %struct.zsQueue*, %struct.zsQueue** %7, align 8
  %50 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %99

53:                                               ; preds = %42
  %54 = load %struct.zsQueue*, %struct.zsQueue** %7, align 8
  %55 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i64, i64* %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.zsQueue*, %struct.zsQueue** %7, align 8
  %62 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i64, i64* %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32* %60, i32** %66, align 8
  %67 = load %struct.zsQueue*, %struct.zsQueue** %7, align 8
  %68 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %67, i32 0, i32 3
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i64, i64* %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.zsQueue*, %struct.zsQueue** %7, align 8
  %75 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %74, i32 0, i32 3
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i32 %73, i32* %79, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %53
  %84 = load i32*, i32** %6, align 8
  %85 = load %struct.zsQueue*, %struct.zsQueue** %7, align 8
  %86 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %85, i32 0, i32 3
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i64, i64* %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = call i64 @zfCompareDstwithBuf(i32* %84, i32* %91, i32* %92)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %83
  %96 = load i32*, i32** %9, align 8
  store i32 1, i32* %96, align 4
  br label %97

97:                                               ; preds = %95, %83, %53
  %98 = load i64, i64* %13, align 8
  store i64 %98, i64* %12, align 8
  br label %42

99:                                               ; preds = %42
  %100 = load %struct.zsQueue*, %struct.zsQueue** %7, align 8
  %101 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = sub i64 %102, 1
  %104 = load %struct.zsQueue*, %struct.zsQueue** %7, align 8
  %105 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = and i64 %103, %106
  %108 = load %struct.zsQueue*, %struct.zsQueue** %7, align 8
  %109 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  %110 = load i32*, i32** %6, align 8
  %111 = call i32 @zmw_leave_critical_section(i32* %110)
  %112 = load i32*, i32** %11, align 8
  store i32* %112, i32** %5, align 8
  br label %126

113:                                              ; preds = %27
  %114 = load i64, i64* %12, align 8
  %115 = add i64 %114, 1
  %116 = load %struct.zsQueue*, %struct.zsQueue** %7, align 8
  %117 = getelementptr inbounds %struct.zsQueue, %struct.zsQueue* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = and i64 %115, %118
  store i64 %119, i64* %12, align 8
  br label %121

120:                                              ; preds = %21
  br label %122

121:                                              ; preds = %113
  br label %21

122:                                              ; preds = %120
  %123 = load i32*, i32** %6, align 8
  %124 = call i32 @zmw_leave_critical_section(i32* %123)
  %125 = load i32*, i32** %11, align 8
  store i32* %125, i32** %5, align 8
  br label %126

126:                                              ; preds = %122, %99
  %127 = load i32*, i32** %5, align 8
  ret i32* %127
}

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i64 @zfCompareDstwithBuf(i32*, i32*, i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
