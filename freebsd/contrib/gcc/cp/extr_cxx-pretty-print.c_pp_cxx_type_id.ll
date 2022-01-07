; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_type_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_cxx-pretty-print.c_pp_cxx_type_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@pp_c_flag_abstract = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @pp_cxx_type_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_cxx_type_id(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.TYPE_3__* @pp_c_base(i32* %6)
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @pp_c_flag_abstract, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call %struct.TYPE_3__* @pp_c_base(i32* %11)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %10
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @TREE_CODE(i32 %16)
  switch i32 %17, label %22 [
    i32 130, label %18
    i32 128, label %18
    i32 138, label %18
    i32 139, label %18
    i32 132, label %18
    i32 140, label %18
    i32 129, label %18
    i32 134, label %18
    i32 133, label %18
    i32 135, label %18
    i32 137, label %18
    i32 131, label %18
    i32 136, label %18
  ]

18:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @pp_cxx_type_specifier_seq(i32* %19, i32 %20)
  br label %27

22:                                               ; preds = %2
  %23 = load i32*, i32** %3, align 8
  %24 = call %struct.TYPE_3__* @pp_c_base(i32* %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @pp_c_type_id(%struct.TYPE_3__* %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %18
  %28 = load i32, i32* %5, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = call %struct.TYPE_3__* @pp_c_base(i32* %29)
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  ret void
}

declare dso_local %struct.TYPE_3__* @pp_c_base(i32*) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @pp_cxx_type_specifier_seq(i32*, i32) #1

declare dso_local i32 @pp_c_type_id(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
