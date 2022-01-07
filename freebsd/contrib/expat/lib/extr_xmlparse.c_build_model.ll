; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_build_model.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_build_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*)* @build_model to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @build_model(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %4, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = add i64 %16, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @MALLOC(%struct.TYPE_6__* %24, i32 %25)
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %44

31:                                               ; preds = %1
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  store i32* %37, i32** %7, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32* %39, i32** %6, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @build_node(%struct.TYPE_6__* %40, i32 0, i32* %41, i32** %6, i32** %7)
  %43 = load i32*, i32** %5, align 8
  store i32* %43, i32** %2, align 8
  br label %44

44:                                               ; preds = %31, %30
  %45 = load i32*, i32** %2, align 8
  ret i32* %45
}

declare dso_local i64 @MALLOC(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @build_node(%struct.TYPE_6__*, i32, i32*, i32**, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
