; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dtree.c_dtLinelockFreelist.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dtree.c_dtLinelockFreelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.dtslot*, %struct.TYPE_4__ }
%struct.dtslot = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dt_lock = type { i64, i64, %struct.lv* }
%struct.lv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, %struct.dt_lock**)* @dtLinelockFreelist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtLinelockFreelist(%struct.TYPE_5__* %0, i32 %1, %struct.dt_lock** %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dt_lock**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dtslot*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dt_lock*, align 8
  %11 = alloca %struct.lv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dt_lock** %2, %struct.dt_lock*** %6, align 8
  %14 = load %struct.dt_lock**, %struct.dt_lock*** %6, align 8
  %15 = load %struct.dt_lock*, %struct.dt_lock** %14, align 8
  store %struct.dt_lock* %15, %struct.dt_lock** %10, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.dt_lock*, %struct.dt_lock** %10, align 8
  %21 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.dt_lock*, %struct.dt_lock** %10, align 8
  %24 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp uge i64 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load %struct.dt_lock*, %struct.dt_lock** %10, align 8
  %29 = call i64 @txLinelock(%struct.dt_lock* %28)
  %30 = inttoptr i64 %29 to %struct.dt_lock*
  store %struct.dt_lock* %30, %struct.dt_lock** %10, align 8
  br label %31

31:                                               ; preds = %27, %3
  %32 = load %struct.dt_lock*, %struct.dt_lock** %10, align 8
  %33 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %32, i32 0, i32 2
  %34 = load %struct.lv*, %struct.lv** %33, align 8
  %35 = load %struct.dt_lock*, %struct.dt_lock** %10, align 8
  %36 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.lv, %struct.lv* %34, i64 %37
  store %struct.lv* %38, %struct.lv** %11, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.lv*, %struct.lv** %11, align 8
  %41 = getelementptr inbounds %struct.lv, %struct.lv* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  store i32 1, i32* %13, align 4
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %12, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.dtslot*, %struct.dtslot** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %45, i64 %47
  store %struct.dtslot* %48, %struct.dtslot** %8, align 8
  %49 = load %struct.dtslot*, %struct.dtslot** %8, align 8
  %50 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %96, %31
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %9, align 4
  %58 = icmp sge i32 %57, 0
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi i1 [ false, %52 ], [ %58, %56 ]
  br i1 %60, label %61, label %109

61:                                               ; preds = %59
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %96

66:                                               ; preds = %61
  %67 = load i32, i32* %13, align 4
  %68 = load %struct.lv*, %struct.lv** %11, align 8
  %69 = getelementptr inbounds %struct.lv, %struct.lv* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.dt_lock*, %struct.dt_lock** %10, align 8
  %71 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %71, align 8
  %74 = load %struct.dt_lock*, %struct.dt_lock** %10, align 8
  %75 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.dt_lock*, %struct.dt_lock** %10, align 8
  %78 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ult i64 %76, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %66
  %82 = load %struct.lv*, %struct.lv** %11, align 8
  %83 = getelementptr inbounds %struct.lv, %struct.lv* %82, i32 1
  store %struct.lv* %83, %struct.lv** %11, align 8
  br label %92

84:                                               ; preds = %66
  %85 = load %struct.dt_lock*, %struct.dt_lock** %10, align 8
  %86 = call i64 @txLinelock(%struct.dt_lock* %85)
  %87 = inttoptr i64 %86 to %struct.dt_lock*
  store %struct.dt_lock* %87, %struct.dt_lock** %10, align 8
  %88 = load %struct.dt_lock*, %struct.dt_lock** %10, align 8
  %89 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %88, i32 0, i32 2
  %90 = load %struct.lv*, %struct.lv** %89, align 8
  %91 = getelementptr inbounds %struct.lv, %struct.lv* %90, i64 0
  store %struct.lv* %91, %struct.lv** %11, align 8
  br label %92

92:                                               ; preds = %84, %81
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.lv*, %struct.lv** %11, align 8
  %95 = getelementptr inbounds %struct.lv, %struct.lv* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  store i32 0, i32* %13, align 4
  br label %96

96:                                               ; preds = %92, %61
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %12, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load %struct.dtslot*, %struct.dtslot** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %102, i64 %104
  store %struct.dtslot* %105, %struct.dtslot** %8, align 8
  %106 = load %struct.dtslot*, %struct.dtslot** %8, align 8
  %107 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %9, align 4
  br label %52

109:                                              ; preds = %59
  %110 = load i32, i32* %13, align 4
  %111 = load %struct.lv*, %struct.lv** %11, align 8
  %112 = getelementptr inbounds %struct.lv, %struct.lv* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.dt_lock*, %struct.dt_lock** %10, align 8
  %114 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %114, align 8
  %117 = load %struct.dt_lock*, %struct.dt_lock** %10, align 8
  %118 = load %struct.dt_lock**, %struct.dt_lock*** %6, align 8
  store %struct.dt_lock* %117, %struct.dt_lock** %118, align 8
  ret void
}

declare dso_local i64 @txLinelock(%struct.dt_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
