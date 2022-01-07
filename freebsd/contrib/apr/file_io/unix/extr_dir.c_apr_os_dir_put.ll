; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/file_io/unix/extr_dir.c_apr_os_dir_put.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/file_io/unix/extr_dir.c_apr_os_dir_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@APR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apr_os_dir_put(%struct.TYPE_3__** %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_3__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_3__** %0, %struct.TYPE_3__*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = icmp eq %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = load i32*, i32** %6, align 8
  %12 = call i64 @apr_pcalloc(i32* %11, i32 16)
  %13 = inttoptr i64 %12 to %struct.TYPE_3__*
  %14 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %14, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i32* %15, i32** %18, align 8
  br label %19

19:                                               ; preds = %10, %3
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %4, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32* %20, i32** %23, align 8
  %24 = load i32, i32* @APR_SUCCESS, align 4
  ret i32 %24
}

declare dso_local i64 @apr_pcalloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
