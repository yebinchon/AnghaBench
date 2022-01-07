; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_nested_name_specifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_nested_name_specifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*)* @pp_cxx_nested_name_specifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_cxx_nested_name_specifier(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %37

8:                                                ; preds = %2
  %9 = load i32*, i32** %4, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %9, %12
  br i1 %13, label %14, label %37

14:                                               ; preds = %8
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @TYPE_P(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32*, i32** %4, align 8
  %20 = call i32* @TYPE_CONTEXT(i32* %19)
  br label %24

21:                                               ; preds = %14
  %22 = load i32*, i32** %4, align 8
  %23 = call i32* @DECL_CONTEXT(i32* %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i32* [ %20, %18 ], [ %23, %21 ]
  store i32* %25, i32** %5, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = load i32*, i32** %5, align 8
  call void @pp_cxx_nested_name_specifier(%struct.TYPE_6__* %26, i32* %27)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @pp_cxx_template_keyword_if_needed(%struct.TYPE_6__* %28, i32* %29, i32* %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @pp_cxx_unqualified_id(%struct.TYPE_6__* %32, i32* %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = call i32 @pp_cxx_colon_colon(%struct.TYPE_6__* %35)
  br label %37

37:                                               ; preds = %24, %8, %2
  ret void
}

declare dso_local i64 @TYPE_P(i32*) #1

declare dso_local i32* @TYPE_CONTEXT(i32*) #1

declare dso_local i32* @DECL_CONTEXT(i32*) #1

declare dso_local i32 @pp_cxx_template_keyword_if_needed(%struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @pp_cxx_unqualified_id(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @pp_cxx_colon_colon(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
