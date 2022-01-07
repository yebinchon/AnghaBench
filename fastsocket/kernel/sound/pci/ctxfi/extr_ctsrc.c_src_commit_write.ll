; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctsrc.c_src_commit_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctsrc.c_src_commit_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.src = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__*, i32, %struct.hw* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)* }
%struct.hw = type { i32 (i32)*, i32 (%struct.hw*, i32, i32)*, i32 (i32, i32)* }

@conj_mask = common dso_local global i32 0, align 4
@MEMWR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.src*)* @src_commit_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @src_commit_write(%struct.src* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.src*, align 8
  %4 = alloca %struct.hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.src* %0, %struct.src** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.src*, %struct.src** %3, align 8
  %8 = getelementptr inbounds %struct.src, %struct.src* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %10 = load %struct.hw*, %struct.hw** %9, align 8
  store %struct.hw* %10, %struct.hw** %4, align 8
  %11 = load %struct.src*, %struct.src** %3, align 8
  %12 = getelementptr inbounds %struct.src, %struct.src* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %15, align 8
  %17 = load %struct.src*, %struct.src** %3, align 8
  %18 = getelementptr inbounds %struct.src, %struct.src* %17, i32 0, i32 1
  %19 = call i32 %16(%struct.TYPE_8__* %18)
  %20 = load %struct.src*, %struct.src** %3, align 8
  %21 = getelementptr inbounds %struct.src, %struct.src* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %36

25:                                               ; preds = %1
  %26 = load %struct.hw*, %struct.hw** %4, align 8
  %27 = getelementptr inbounds %struct.hw, %struct.hw* %26, i32 0, i32 0
  %28 = load i32 (i32)*, i32 (i32)** %27, align 8
  %29 = load %struct.src*, %struct.src** %3, align 8
  %30 = getelementptr inbounds %struct.src, %struct.src* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 %28(i32 %32)
  %34 = load i32, i32* @conj_mask, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %25, %1
  %37 = load %struct.hw*, %struct.hw** %4, align 8
  %38 = getelementptr inbounds %struct.hw, %struct.hw* %37, i32 0, i32 1
  %39 = load i32 (%struct.hw*, i32, i32)*, i32 (%struct.hw*, i32, i32)** %38, align 8
  %40 = load %struct.hw*, %struct.hw** %4, align 8
  %41 = load %struct.src*, %struct.src** %3, align 8
  %42 = getelementptr inbounds %struct.src, %struct.src* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %45, align 8
  %47 = load %struct.src*, %struct.src** %3, align 8
  %48 = getelementptr inbounds %struct.src, %struct.src* %47, i32 0, i32 1
  %49 = call i32 %46(%struct.TYPE_8__* %48)
  %50 = load %struct.src*, %struct.src** %3, align 8
  %51 = getelementptr inbounds %struct.src, %struct.src* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 %39(%struct.hw* %40, i32 %49, i32 %53)
  %55 = load i64, i64* @MEMWR, align 8
  %56 = load %struct.src*, %struct.src** %3, align 8
  %57 = getelementptr inbounds %struct.src, %struct.src* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %119

61:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %62

62:                                               ; preds = %106, %61
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.src*, %struct.src** %3, align 8
  %65 = getelementptr inbounds %struct.src, %struct.src* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %63, %67
  br i1 %68, label %69, label %109

69:                                               ; preds = %62
  %70 = load %struct.src*, %struct.src** %3, align 8
  %71 = getelementptr inbounds %struct.src, %struct.src* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %74, align 8
  %76 = load %struct.src*, %struct.src** %3, align 8
  %77 = getelementptr inbounds %struct.src, %struct.src* %76, i32 0, i32 1
  %78 = call i32 %75(%struct.TYPE_8__* %77)
  %79 = load %struct.hw*, %struct.hw** %4, align 8
  %80 = getelementptr inbounds %struct.hw, %struct.hw* %79, i32 0, i32 2
  %81 = load i32 (i32, i32)*, i32 (i32, i32)** %80, align 8
  %82 = load %struct.src*, %struct.src** %3, align 8
  %83 = getelementptr inbounds %struct.src, %struct.src* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 %81(i32 %85, i32 %86)
  %88 = load %struct.hw*, %struct.hw** %4, align 8
  %89 = getelementptr inbounds %struct.hw, %struct.hw* %88, i32 0, i32 1
  %90 = load i32 (%struct.hw*, i32, i32)*, i32 (%struct.hw*, i32, i32)** %89, align 8
  %91 = load %struct.hw*, %struct.hw** %4, align 8
  %92 = load %struct.src*, %struct.src** %3, align 8
  %93 = getelementptr inbounds %struct.src, %struct.src* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %96, align 8
  %98 = load %struct.src*, %struct.src** %3, align 8
  %99 = getelementptr inbounds %struct.src, %struct.src* %98, i32 0, i32 1
  %100 = call i32 %97(%struct.TYPE_8__* %99)
  %101 = load %struct.src*, %struct.src** %3, align 8
  %102 = getelementptr inbounds %struct.src, %struct.src* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 %90(%struct.hw* %91, i32 %100, i32 %104)
  br label %106

106:                                              ; preds = %69
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %62

109:                                              ; preds = %62
  %110 = load %struct.src*, %struct.src** %3, align 8
  %111 = getelementptr inbounds %struct.src, %struct.src* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %114, align 8
  %116 = load %struct.src*, %struct.src** %3, align 8
  %117 = getelementptr inbounds %struct.src, %struct.src* %116, i32 0, i32 1
  %118 = call i32 %115(%struct.TYPE_8__* %117)
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %109, %60
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
