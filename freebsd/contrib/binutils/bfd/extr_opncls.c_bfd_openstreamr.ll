; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_opncls.c_bfd_openstreamr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_opncls.c_bfd_openstreamr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i32, i32* }

@read_direction = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @bfd_openstreamr(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %8, align 8
  %13 = call %struct.TYPE_7__* (...) @_bfd_new_bfd()
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %9, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %15 = icmp eq %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %44

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %20 = call i32* @bfd_find_target(i8* %18, %struct.TYPE_7__* %19)
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %25 = call i32 @_bfd_delete_bfd(%struct.TYPE_7__* %24)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %44

26:                                               ; preds = %17
  %27 = load i32*, i32** %8, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  store i32* %27, i32** %29, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* @read_direction, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %37 = call i32 @bfd_cache_init(%struct.TYPE_7__* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %26
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %41 = call i32 @_bfd_delete_bfd(%struct.TYPE_7__* %40)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %44

42:                                               ; preds = %26
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %4, align 8
  br label %44

44:                                               ; preds = %42, %39, %23, %16
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %45
}

declare dso_local %struct.TYPE_7__* @_bfd_new_bfd(...) #1

declare dso_local i32* @bfd_find_target(i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @_bfd_delete_bfd(%struct.TYPE_7__*) #1

declare dso_local i32 @bfd_cache_init(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
