; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bfd.c_bfd_preserve_restore.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bfd.c_bfd_preserve_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.bfd_preserve = type { i32*, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfd_preserve_restore(%struct.TYPE_6__* %0, %struct.bfd_preserve* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.bfd_preserve*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.bfd_preserve* %1, %struct.bfd_preserve** %4, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  %7 = call i32 @bfd_hash_table_free(i32* %6)
  %8 = load %struct.bfd_preserve*, %struct.bfd_preserve** %4, align 8
  %9 = getelementptr inbounds %struct.bfd_preserve, %struct.bfd_preserve* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 6
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 4
  %14 = load %struct.bfd_preserve*, %struct.bfd_preserve** %4, align 8
  %15 = getelementptr inbounds %struct.bfd_preserve, %struct.bfd_preserve* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 4
  %19 = load %struct.bfd_preserve*, %struct.bfd_preserve** %4, align 8
  %20 = getelementptr inbounds %struct.bfd_preserve, %struct.bfd_preserve* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load %struct.bfd_preserve*, %struct.bfd_preserve** %4, align 8
  %25 = getelementptr inbounds %struct.bfd_preserve, %struct.bfd_preserve* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.bfd_preserve*, %struct.bfd_preserve** %4, align 8
  %30 = getelementptr inbounds %struct.bfd_preserve, %struct.bfd_preserve* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.bfd_preserve*, %struct.bfd_preserve** %4, align 8
  %35 = getelementptr inbounds %struct.bfd_preserve, %struct.bfd_preserve* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.bfd_preserve*, %struct.bfd_preserve** %4, align 8
  %40 = getelementptr inbounds %struct.bfd_preserve, %struct.bfd_preserve* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.bfd_preserve*, %struct.bfd_preserve** %4, align 8
  %45 = getelementptr inbounds %struct.bfd_preserve, %struct.bfd_preserve* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %2
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = load %struct.bfd_preserve*, %struct.bfd_preserve** %4, align 8
  %51 = getelementptr inbounds %struct.bfd_preserve, %struct.bfd_preserve* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @bfd_release(%struct.TYPE_6__* %49, i32* %52)
  %54 = load %struct.bfd_preserve*, %struct.bfd_preserve** %4, align 8
  %55 = getelementptr inbounds %struct.bfd_preserve, %struct.bfd_preserve* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %48, %2
  ret void
}

declare dso_local i32 @bfd_hash_table_free(i32*) #1

declare dso_local i32 @bfd_release(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
