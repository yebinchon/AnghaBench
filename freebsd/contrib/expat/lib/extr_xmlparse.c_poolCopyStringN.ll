; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_poolCopyStringN.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_poolCopyStringN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i32*, i32)* @poolCopyStringN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @poolCopyStringN(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = call i32 @poolGrow(%struct.TYPE_6__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store i32* null, i32** %4, align 8
  br label %41

17:                                               ; preds = %12, %3
  br label %18

18:                                               ; preds = %29, %17
  %19 = load i32, i32* %7, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @poolAppendChar(%struct.TYPE_6__* %22, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32* null, i32** %4, align 8
  br label %41

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %7, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %6, align 8
  br label %18

34:                                               ; preds = %18
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %6, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = call i32 @poolFinish(%struct.TYPE_6__* %38)
  %40 = load i32*, i32** %6, align 8
  store i32* %40, i32** %4, align 8
  br label %41

41:                                               ; preds = %34, %27, %16
  %42 = load i32*, i32** %4, align 8
  ret i32* %42
}

declare dso_local i32 @poolGrow(%struct.TYPE_6__*) #1

declare dso_local i32 @poolAppendChar(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @poolFinish(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
