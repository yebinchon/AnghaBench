; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_init.c_mark_named_operators.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_init.c_mark_named_operators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.builtin = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i64, i32 }

@operator_array = common dso_local global %struct.builtin* null, align 8
@NODE_OPERATOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @mark_named_operators to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_named_operators(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.builtin*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load %struct.builtin*, %struct.builtin** @operator_array, align 8
  store %struct.builtin* %5, %struct.builtin** %3, align 8
  br label %6

6:                                                ; preds = %35, %1
  %7 = load %struct.builtin*, %struct.builtin** %3, align 8
  %8 = load %struct.builtin*, %struct.builtin** @operator_array, align 8
  %9 = load %struct.builtin*, %struct.builtin** @operator_array, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.builtin* %9)
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.builtin, %struct.builtin* %8, i64 %11
  %13 = icmp ult %struct.builtin* %7, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %6
  %15 = load i32*, i32** %2, align 8
  %16 = load %struct.builtin*, %struct.builtin** %3, align 8
  %17 = getelementptr inbounds %struct.builtin, %struct.builtin* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.builtin*, %struct.builtin** %3, align 8
  %20 = getelementptr inbounds %struct.builtin, %struct.builtin* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.TYPE_3__* @cpp_lookup(i32* %15, i32 %18, i32 %21)
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %4, align 8
  %23 = load i32, i32* @NODE_OPERATOR, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.builtin*, %struct.builtin** %3, align 8
  %31 = getelementptr inbounds %struct.builtin, %struct.builtin* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %14
  %36 = load %struct.builtin*, %struct.builtin** %3, align 8
  %37 = getelementptr inbounds %struct.builtin, %struct.builtin* %36, i32 1
  store %struct.builtin* %37, %struct.builtin** %3, align 8
  br label %6

38:                                               ; preds = %6
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.builtin*) #1

declare dso_local %struct.TYPE_3__* @cpp_lookup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
