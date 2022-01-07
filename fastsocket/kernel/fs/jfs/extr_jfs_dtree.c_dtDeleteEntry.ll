; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dtree.c_dtDeleteEntry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dtree.c_dtDeleteEntry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.dtslot* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.dtslot = type { i32, i32 }
%struct.dt_lock = type { i64, i64, %struct.lv* }
%struct.lv = type { i32, i32 }
%struct.ldtentry = type { i32 }
%struct.idtentry = type { i32 }

@BT_LEAF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, %struct.dt_lock**)* @dtDeleteEntry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtDeleteEntry(%struct.TYPE_6__* %0, i32 %1, %struct.dt_lock** %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dt_lock**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dtslot*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dt_lock*, align 8
  %13 = alloca %struct.lv*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dt_lock** %2, %struct.dt_lock*** %6, align 8
  %16 = load %struct.dt_lock**, %struct.dt_lock*** %6, align 8
  %17 = load %struct.dt_lock*, %struct.dt_lock** %16, align 8
  store %struct.dt_lock* %17, %struct.dt_lock** %12, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = call i32* @DT_GETSTBL(%struct.TYPE_6__* %18)
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.dt_lock*, %struct.dt_lock** %12, align 8
  %26 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.dt_lock*, %struct.dt_lock** %12, align 8
  %29 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp uge i64 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load %struct.dt_lock*, %struct.dt_lock** %12, align 8
  %34 = call i64 @txLinelock(%struct.dt_lock* %33)
  %35 = inttoptr i64 %34 to %struct.dt_lock*
  store %struct.dt_lock* %35, %struct.dt_lock** %12, align 8
  br label %36

36:                                               ; preds = %32, %3
  %37 = load %struct.dt_lock*, %struct.dt_lock** %12, align 8
  %38 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %37, i32 0, i32 2
  %39 = load %struct.lv*, %struct.lv** %38, align 8
  %40 = load %struct.dt_lock*, %struct.dt_lock** %12, align 8
  %41 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.lv, %struct.lv* %39, i64 %42
  store %struct.lv* %43, %struct.lv** %13, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.lv*, %struct.lv** %13, align 8
  %46 = getelementptr inbounds %struct.lv, %struct.lv* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load %struct.dtslot*, %struct.dtslot** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %49, i64 %51
  store %struct.dtslot* %52, %struct.dtslot** %9, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @BT_LEAF, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %36
  %61 = load %struct.dtslot*, %struct.dtslot** %9, align 8
  %62 = bitcast %struct.dtslot* %61 to %struct.ldtentry*
  %63 = getelementptr inbounds %struct.ldtentry, %struct.ldtentry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %10, align 4
  br label %70

65:                                               ; preds = %36
  %66 = load %struct.dtslot*, %struct.dtslot** %9, align 8
  %67 = bitcast %struct.dtslot* %66 to %struct.idtentry*
  %68 = getelementptr inbounds %struct.idtentry, %struct.idtentry* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %65, %60
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.dtslot*, %struct.dtslot** %9, align 8
  %73 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.dtslot*, %struct.dtslot** %9, align 8
  %75 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %74, i32 0, i32 1
  store i32 1, i32* %75, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %15, align 4
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %115, %70
  %78 = load i32, i32* %10, align 4
  %79 = icmp sge i32 %78, 0
  br i1 %79, label %80, label %132

80:                                               ; preds = %77
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %82, 1
  %84 = icmp ne i32 %81, %83
  br i1 %84, label %85, label %115

85:                                               ; preds = %80
  %86 = load i32, i32* %15, align 4
  %87 = load %struct.lv*, %struct.lv** %13, align 8
  %88 = getelementptr inbounds %struct.lv, %struct.lv* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.dt_lock*, %struct.dt_lock** %12, align 8
  %90 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %90, align 8
  %93 = load %struct.dt_lock*, %struct.dt_lock** %12, align 8
  %94 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.dt_lock*, %struct.dt_lock** %12, align 8
  %97 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ult i64 %95, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %85
  %101 = load %struct.lv*, %struct.lv** %13, align 8
  %102 = getelementptr inbounds %struct.lv, %struct.lv* %101, i32 1
  store %struct.lv* %102, %struct.lv** %13, align 8
  br label %111

103:                                              ; preds = %85
  %104 = load %struct.dt_lock*, %struct.dt_lock** %12, align 8
  %105 = call i64 @txLinelock(%struct.dt_lock* %104)
  %106 = inttoptr i64 %105 to %struct.dt_lock*
  store %struct.dt_lock* %106, %struct.dt_lock** %12, align 8
  %107 = load %struct.dt_lock*, %struct.dt_lock** %12, align 8
  %108 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %107, i32 0, i32 2
  %109 = load %struct.lv*, %struct.lv** %108, align 8
  %110 = getelementptr inbounds %struct.lv, %struct.lv* %109, i64 0
  store %struct.lv* %110, %struct.lv** %13, align 8
  br label %111

111:                                              ; preds = %103, %100
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.lv*, %struct.lv** %13, align 8
  %114 = getelementptr inbounds %struct.lv, %struct.lv* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  store i32 0, i32* %15, align 4
  br label %115

115:                                              ; preds = %111, %80
  %116 = load i32, i32* %15, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %11, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load %struct.dtslot*, %struct.dtslot** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %123, i64 %125
  store %struct.dtslot* %126, %struct.dtslot** %9, align 8
  %127 = load %struct.dtslot*, %struct.dtslot** %9, align 8
  %128 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %127, i32 0, i32 1
  store i32 1, i32* %128, align 4
  %129 = load %struct.dtslot*, %struct.dtslot** %9, align 8
  %130 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %10, align 4
  br label %77

132:                                              ; preds = %77
  %133 = load i32, i32* %15, align 4
  %134 = load %struct.lv*, %struct.lv** %13, align 8
  %135 = getelementptr inbounds %struct.lv, %struct.lv* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.dt_lock*, %struct.dt_lock** %12, align 8
  %137 = getelementptr inbounds %struct.dt_lock, %struct.dt_lock* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %137, align 8
  %140 = load %struct.dt_lock*, %struct.dt_lock** %12, align 8
  %141 = load %struct.dt_lock**, %struct.dt_lock*** %6, align 8
  store %struct.dt_lock* %140, %struct.dt_lock** %141, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.dtslot*, %struct.dtslot** %9, align 8
  %147 = getelementptr inbounds %struct.dtslot, %struct.dtslot* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* %7, align 4
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  store i32 %148, i32* %151, align 4
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, %152
  store i32 %157, i32* %155, align 8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* %10, align 4
  %164 = sub nsw i32 %163, 1
  %165 = icmp slt i32 %162, %164
  br i1 %165, label %166, label %181

166:                                              ; preds = %132
  %167 = load i32*, i32** %8, align 8
  %168 = load i32, i32* %5, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32*, i32** %8, align 8
  %172 = load i32, i32* %5, align 4
  %173 = add nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %5, align 4
  %178 = sub nsw i32 %176, %177
  %179 = sub nsw i32 %178, 1
  %180 = call i32 @memmove(i32* %170, i32* %175, i32 %179)
  br label %181

181:                                              ; preds = %166, %132
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %184, align 4
  ret void
}

declare dso_local i32* @DT_GETSTBL(%struct.TYPE_6__*) #1

declare dso_local i64 @txLinelock(%struct.dt_lock*) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
