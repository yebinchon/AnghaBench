; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_guage.c_handle_my_getc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_guage.c_handle_my_getc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@DLG_EXIT_OK = common dso_local global i32 0, align 4
@ERR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32*)* @handle_my_getc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_my_getc(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* @TRUE, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* @DLG_EXIT_OK, align 4
  %12 = load i32*, i32** %8, align 8
  store i32 %11, i32* %12, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %38

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @ERR, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %18
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = call i32 @handle_input(%struct.TYPE_4__* %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = bitcast %struct.TYPE_4__* %25 to i32*
  %27 = call i64 @valid(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %22
  %35 = phi i1 [ false, %22 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %34, %18, %15
  br label %40

38:                                               ; preds = %4
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %38, %37
  %41 = load i32, i32* %9, align 4
  ret i32 %41
}

declare dso_local i32 @handle_input(%struct.TYPE_4__*) #1

declare dso_local i64 @valid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
