; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_get_namewidth.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_get_namewidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_namewidth(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32* @zpool_get_config(i32* %10, i32* null)
  store i32* %11, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %2
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %16 = call i64 @nvlist_lookup_nvlist(i32* %14, i32 %15, i32** %7)
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @verify(i32 %18)
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %13
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @zpool_get_name(i32* %25)
  %27 = call i32 @strlen(i32 %26)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %39

30:                                               ; preds = %13
  %31 = load i32*, i32** %3, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @max_width(i32* %31, i32* %32, i32 0, i32 %35)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %30, %24
  br label %40

40:                                               ; preds = %39, %2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 10
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 10, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %51, 38
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 38, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %48
  ret i32 0
}

declare dso_local i32* @zpool_get_config(i32*, i32*) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @zpool_get_name(i32*) #1

declare dso_local i32 @max_width(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
