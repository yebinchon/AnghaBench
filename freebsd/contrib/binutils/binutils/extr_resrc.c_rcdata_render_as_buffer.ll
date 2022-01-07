; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_rcdata_render_as_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_resrc.c_rcdata_render_as_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i64*)* @rcdata_render_as_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rcdata_render_as_buffer(%struct.TYPE_4__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64* %1, i64** %4, align 8
  store i32* null, i32** %6, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %5, align 8
  br label %10

10:                                               ; preds = %18, %2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = call i64 @rcdata_copy(%struct.TYPE_4__* %14, i32* null)
  %16 = load i64, i64* %8, align 8
  %17 = add nsw i64 %16, %15
  store i64 %17, i64* %8, align 8
  br label %18

18:                                               ; preds = %13
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %5, align 8
  br label %10

22:                                               ; preds = %10
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %22
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @res_alloc(i64 %26)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %7, align 8
  store i32* %28, i32** %6, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %5, align 8
  br label %30

30:                                               ; preds = %39, %25
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i64 @rcdata_copy(%struct.TYPE_4__* %34, i32* %35)
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 %36
  store i32* %38, i32** %7, align 8
  br label %39

39:                                               ; preds = %33
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  store %struct.TYPE_4__* %42, %struct.TYPE_4__** %5, align 8
  br label %30

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43, %22
  %45 = load i64*, i64** %4, align 8
  %46 = icmp ne i64* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i64, i64* %8, align 8
  %49 = load i64*, i64** %4, align 8
  store i64 %48, i64* %49, align 8
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32*, i32** %6, align 8
  ret i32* %51
}

declare dso_local i64 @rcdata_copy(%struct.TYPE_4__*, i32*) #1

declare dso_local i64 @res_alloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
