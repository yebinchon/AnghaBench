; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_c_expand_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_c_expand_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 (i32, i32)*, i32 (i32, i32)* }

@error_mark_node = common dso_local global i64 0, align 8
@targetm = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@DEFAULT_INIT_PRIORITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_expand_body(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i64 @DECL_INITIAL(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @DECL_INITIAL(i32 %7)
  %9 = load i64, i64* @error_mark_node, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  br label %42

12:                                               ; preds = %6
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @tree_rest_of_compilation(i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @DECL_STATIC_CONSTRUCTOR(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 1), align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 1), align 8
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @DECL_RTL(i32 %23)
  %25 = call i32 @XEXP(i32 %24, i32 0)
  %26 = load i32, i32* @DEFAULT_INIT_PRIORITY, align 4
  %27 = call i32 %22(i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %21, %18, %12
  %29 = load i32, i32* %2, align 4
  %30 = call i64 @DECL_STATIC_DESTRUCTOR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 1), align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32 (i32, i32)*, i32 (i32, i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @targetm, i32 0, i32 0, i32 0), align 8
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @DECL_RTL(i32 %37)
  %39 = call i32 @XEXP(i32 %38, i32 0)
  %40 = load i32, i32* @DEFAULT_INIT_PRIORITY, align 4
  %41 = call i32 %36(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %11, %35, %32, %28
  ret void
}

declare dso_local i64 @DECL_INITIAL(i32) #1

declare dso_local i32 @tree_rest_of_compilation(i32) #1

declare dso_local i64 @DECL_STATIC_CONSTRUCTOR(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @DECL_RTL(i32) #1

declare dso_local i64 @DECL_STATIC_DESTRUCTOR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
