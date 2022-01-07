; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_arg_assoc_template_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_arg_assoc_template_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_lookup = type { i32 }

@TEMPLATE_TEMPLATE_PARM = common dso_local global i64 0, align 8
@UNBOUND_CLASS_TEMPLATE = common dso_local global i64 0, align 8
@TEMPLATE_DECL = common dso_local global i64 0, align 8
@NAMESPACE_DECL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arg_lookup*, i32)* @arg_assoc_template_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arg_assoc_template_arg(%struct.arg_lookup* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.arg_lookup*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.arg_lookup* %0, %struct.arg_lookup** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @TREE_CODE(i32 %7)
  %9 = load i64, i64* @TEMPLATE_TEMPLATE_PARM, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @TREE_CODE(i32 %12)
  %14 = load i64, i64* @UNBOUND_CLASS_TEMPLATE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %46

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @TREE_CODE(i32 %18)
  %20 = load i64, i64* @TEMPLATE_DECL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @CP_DECL_CONTEXT(i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @TREE_CODE(i32 %25)
  %27 = load i64, i64* @NAMESPACE_DECL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @arg_assoc_namespace(%struct.arg_lookup* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %46

33:                                               ; preds = %22
  %34 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @arg_assoc_class(%struct.arg_lookup* %34, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %46

37:                                               ; preds = %17
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @TYPE_P(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load %struct.arg_lookup*, %struct.arg_lookup** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @arg_assoc_type(%struct.arg_lookup* %42, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %46

45:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %41, %33, %29, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @CP_DECL_CONTEXT(i32) #1

declare dso_local i32 @arg_assoc_namespace(%struct.arg_lookup*, i32) #1

declare dso_local i32 @arg_assoc_class(%struct.arg_lookup*, i32) #1

declare dso_local i64 @TYPE_P(i32) #1

declare dso_local i32 @arg_assoc_type(%struct.arg_lookup*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
