; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_sb.c_sb_build.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_sb.c_sb_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i64, i32 }

@sb_max_power_two = common dso_local global i32 0, align 4
@free_list = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@string_count = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @sb_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sb_build(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @sb_max_power_two, align 4
  %8 = icmp slt i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_5__**, %struct.TYPE_5__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @free_list, i32 0, i32 0), align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %11, i64 %13
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %5, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %48, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = shl i32 1, %19
  %21 = sext i32 %20 to i64
  %22 = add i64 16, %21
  %23 = trunc i64 %22 to i32
  %24 = call i64 @xmalloc(i32 %23)
  %25 = inttoptr i64 %24 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %5, align 8
  %26 = load %struct.TYPE_5__**, %struct.TYPE_5__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @free_list, i32 0, i32 0), align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %26, i64 %28
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = shl i32 1, %33
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = load %struct.TYPE_5__**, %struct.TYPE_5__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @free_list, i32 0, i32 0), align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %38, i64 %40
  store %struct.TYPE_5__* %37, %struct.TYPE_5__** %41, align 8
  %42 = load i32*, i32** @string_count, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %18, %2
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load %struct.TYPE_5__**, %struct.TYPE_5__*** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @free_list, i32 0, i32 0), align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %52, i64 %54
  store %struct.TYPE_5__* %51, %struct.TYPE_5__** %55, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  store %struct.TYPE_5__* %66, %struct.TYPE_5__** %68, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
