; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_maybe_lookup_decl_in_outer_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_omp-low.c_maybe_lookup_decl_in_outer_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_4__*)* @maybe_lookup_decl_in_outer_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @maybe_lookup_decl_in_outer_ctx(i32* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  store i32* null, i32** %5, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %6, align 8
  store i32* null, i32** %5, align 8
  br label %15

15:                                               ; preds = %27, %11
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32*, i32** %5, align 8
  %20 = icmp eq i32* %19, null
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i1 [ false, %15 ], [ %20, %18 ]
  br i1 %22, label %23, label %31

23:                                               ; preds = %21
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %26 = call i32* @maybe_lookup_decl(i32* %24, %struct.TYPE_4__* %25)
  store i32* %26, i32** %5, align 8
  br label %27

27:                                               ; preds = %23
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %6, align 8
  br label %15

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i32*, i32** %5, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32*, i32** %5, align 8
  br label %39

37:                                               ; preds = %32
  %38 = load i32*, i32** %3, align 8
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32* [ %36, %35 ], [ %38, %37 ]
  ret i32* %40
}

declare dso_local i32* @maybe_lookup_decl(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
