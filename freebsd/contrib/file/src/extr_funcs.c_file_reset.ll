; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/file/src/extr_funcs.c_file_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/file/src/extr_funcs.c_file_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.magic_set = type { i32, i32, %struct.TYPE_2__, i32** }
%struct.TYPE_2__ = type { i32*, i32* }

@.str = private unnamed_addr constant [22 x i8] c"no magic files loaded\00", align 1
@EVENT_HAD_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_reset(%struct.magic_set* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.magic_set*, align 8
  %5 = alloca i32, align 4
  store %struct.magic_set* %0, %struct.magic_set** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = load %struct.magic_set*, %struct.magic_set** %4, align 8
  %10 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %9, i32 0, i32 3
  %11 = load i32**, i32*** %10, align 8
  %12 = getelementptr inbounds i32*, i32** %11, i64 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load %struct.magic_set*, %struct.magic_set** %4, align 8
  %17 = call i32 @file_error(%struct.magic_set* %16, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %57

18:                                               ; preds = %8, %2
  %19 = load %struct.magic_set*, %struct.magic_set** %4, align 8
  %20 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.magic_set*, %struct.magic_set** %4, align 8
  %26 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @free(i32* %28)
  %30 = load %struct.magic_set*, %struct.magic_set** %4, align 8
  %31 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %24, %18
  %34 = load %struct.magic_set*, %struct.magic_set** %4, align 8
  %35 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load %struct.magic_set*, %struct.magic_set** %4, align 8
  %41 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @free(i32* %43)
  %45 = load %struct.magic_set*, %struct.magic_set** %4, align 8
  %46 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %39, %33
  %49 = load i32, i32* @EVENT_HAD_ERR, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.magic_set*, %struct.magic_set** %4, align 8
  %52 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.magic_set*, %struct.magic_set** %4, align 8
  %56 = getelementptr inbounds %struct.magic_set, %struct.magic_set* %55, i32 0, i32 0
  store i32 -1, i32* %56, align 8
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %48, %15
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @file_error(%struct.magic_set*, i32, i8*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
