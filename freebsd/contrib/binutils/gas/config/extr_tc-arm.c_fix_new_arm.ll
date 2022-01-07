; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_fix_new_arm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_fix_new_arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@thumb_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i16, %struct.TYPE_9__*, i32, i32)* @fix_new_arm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_new_arm(i32* %0, i32 %1, i16 signext %2, %struct.TYPE_9__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i16 %2, i16* %9, align 2
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %25 [
    i32 130, label %17
    i32 128, label %17
    i32 131, label %17
    i32 129, label %17
  ]

17:                                               ; preds = %6, %6, %6, %6
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i16, i16* %9, align 2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call %struct.TYPE_8__* @fix_new_exp(i32* %18, i32 %19, i16 signext %20, %struct.TYPE_9__* %21, i32 %22, i32 %23)
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %13, align 8
  br label %34

25:                                               ; preds = %6
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i16, i16* %9, align 2
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %30 = call i32 @make_expr_symbol(%struct.TYPE_9__* %29)
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call %struct.TYPE_8__* @fix_new(i32* %26, i32 %27, i16 signext %28, i32 %30, i32 0, i32 %31, i32 %32)
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %13, align 8
  br label %34

34:                                               ; preds = %25, %17
  %35 = load i32, i32* @thumb_mode, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  ret void
}

declare dso_local %struct.TYPE_8__* @fix_new_exp(i32*, i32, i16 signext, %struct.TYPE_9__*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @fix_new(i32*, i32, i16 signext, i32, i32, i32, i32) #1

declare dso_local i32 @make_expr_symbol(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
