; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_mark_template_parm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_mark_template_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.template_parm_data = type { i32, i32*, i32*, i64 }

@TEMPLATE_PARM_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mark_template_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mark_template_parm(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.template_parm_data*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.template_parm_data*
  store %struct.template_parm_data* %9, %struct.template_parm_data** %7, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @TREE_CODE(i32 %10)
  %12 = load i64, i64* @TEMPLATE_PARM_INDEX, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @TEMPLATE_PARM_LEVEL(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @TEMPLATE_PARM_IDX(i32 %17)
  store i32 %18, i32* %6, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @TEMPLATE_TYPE_LEVEL(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @TEMPLATE_TYPE_IDX(i32 %22)
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.template_parm_data*, %struct.template_parm_data** %7, align 8
  %27 = getelementptr inbounds %struct.template_parm_data, %struct.template_parm_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load %struct.template_parm_data*, %struct.template_parm_data** %7, align 8
  %32 = getelementptr inbounds %struct.template_parm_data, %struct.template_parm_data* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 1, i32* %36, align 4
  %37 = load %struct.template_parm_data*, %struct.template_parm_data** %7, align 8
  %38 = getelementptr inbounds %struct.template_parm_data, %struct.template_parm_data* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.template_parm_data*, %struct.template_parm_data** %7, align 8
  %41 = getelementptr inbounds %struct.template_parm_data, %struct.template_parm_data* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  store i32 1, i32* %43, align 4
  br label %44

44:                                               ; preds = %30, %24
  ret i32 0
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TEMPLATE_PARM_LEVEL(i32) #1

declare dso_local i32 @TEMPLATE_PARM_IDX(i32) #1

declare dso_local i32 @TEMPLATE_TYPE_LEVEL(i32) #1

declare dso_local i32 @TEMPLATE_TYPE_IDX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
