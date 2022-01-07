; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dma/extr_spool.c_delqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dma/extr_spool.c_delqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qitem = type { i32*, i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delqueue(%struct.qitem* %0) #0 {
  %2 = alloca %struct.qitem*, align 8
  store %struct.qitem* %0, %struct.qitem** %2, align 8
  %3 = load %struct.qitem*, %struct.qitem** %2, align 8
  %4 = getelementptr inbounds %struct.qitem, %struct.qitem* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @unlink(i32 %5)
  %7 = load %struct.qitem*, %struct.qitem** %2, align 8
  %8 = getelementptr inbounds %struct.qitem, %struct.qitem* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @unlink(i32 %9)
  %11 = load %struct.qitem*, %struct.qitem** %2, align 8
  %12 = getelementptr inbounds %struct.qitem, %struct.qitem* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.qitem*, %struct.qitem** %2, align 8
  %17 = getelementptr inbounds %struct.qitem, %struct.qitem* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @fclose(i32* %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.qitem*, %struct.qitem** %2, align 8
  %22 = getelementptr inbounds %struct.qitem, %struct.qitem* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.qitem*, %struct.qitem** %2, align 8
  %27 = getelementptr inbounds %struct.qitem, %struct.qitem* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @fclose(i32* %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.qitem*, %struct.qitem** %2, align 8
  %32 = call i32 @free(%struct.qitem* %31)
  ret void
}

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @free(%struct.qitem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
