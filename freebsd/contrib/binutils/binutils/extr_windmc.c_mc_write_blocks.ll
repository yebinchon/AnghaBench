; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_windmc.c_mc_write_blocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_windmc.c_mc_write_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bin_messagetable = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bin_messagetable*, %struct.TYPE_7__**, %struct.TYPE_8__*, i32)* @mc_write_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mc_write_blocks(%struct.bin_messagetable* %0, %struct.TYPE_7__** %1, %struct.TYPE_8__* %2, i32 %3) #0 {
  %5 = alloca %struct.bin_messagetable*, align 8
  %6 = alloca %struct.TYPE_7__**, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.bin_messagetable* %0, %struct.bin_messagetable** %5, align 8
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %13 = icmp ne %struct.TYPE_7__** %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  br label %121

15:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %118, %15
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %121

20:                                               ; preds = %16
  %21 = load %struct.bin_messagetable*, %struct.bin_messagetable** %5, align 8
  %22 = getelementptr inbounds %struct.bin_messagetable, %struct.bin_messagetable* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %29, i64 %31
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @target_put_32(i32 %28, i64 %35)
  %37 = load %struct.bin_messagetable*, %struct.bin_messagetable** %5, align 8
  %38 = getelementptr inbounds %struct.bin_messagetable, %struct.bin_messagetable* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %45, i64 %47
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @target_put_32(i32 %44, i64 %51)
  %53 = load %struct.bin_messagetable*, %struct.bin_messagetable** %5, align 8
  %54 = getelementptr inbounds %struct.bin_messagetable, %struct.bin_messagetable* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @target_put_32(i32 %60, i64 %66)
  %68 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %68, i64 %71
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %11, align 8
  br label %76

76:                                               ; preds = %93, %20
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %81, i64 %83
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %11, align 8
  %89 = add nsw i64 %88, 1
  %90 = icmp eq i64 %87, %89
  br label %91

91:                                               ; preds = %80, %76
  %92 = phi i1 [ false, %76 ], [ %90, %80 ]
  br i1 %92, label %93, label %118

93:                                               ; preds = %91
  %94 = load %struct.bin_messagetable*, %struct.bin_messagetable** %5, align 8
  %95 = getelementptr inbounds %struct.bin_messagetable, %struct.bin_messagetable* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %102, i64 %104
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @target_put_32(i32 %101, i64 %108)
  %110 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %6, align 8
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %110, i64 %113
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %11, align 8
  br label %76

118:                                              ; preds = %91
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %16

121:                                              ; preds = %14, %16
  ret void
}

declare dso_local i32 @target_put_32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
