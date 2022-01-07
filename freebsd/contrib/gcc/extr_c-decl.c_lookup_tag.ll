; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_lookup_tag.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-decl.c_lookup_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_binding = type { i32 }

@current_scope = common dso_local global i64 0, align 8
@file_scope = common dso_local global i64 0, align 8
@pending_invalid_xref = common dso_local global i32 0, align 4
@input_location = common dso_local global i32 0, align 4
@pending_invalid_xref_location = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @lookup_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_tag(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.c_binding*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.c_binding* @I_TAG_BINDING(i32 %10)
  store %struct.c_binding* %11, %struct.c_binding** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.c_binding*, %struct.c_binding** %8, align 8
  %13 = icmp ne %struct.c_binding* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.c_binding*, %struct.c_binding** %8, align 8
  %16 = getelementptr inbounds %struct.c_binding, %struct.c_binding* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %70

20:                                               ; preds = %14
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load %struct.c_binding*, %struct.c_binding** %8, align 8
  %25 = getelementptr inbounds %struct.c_binding, %struct.c_binding* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @TREE_CODE(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %23, %20
  %31 = load %struct.c_binding*, %struct.c_binding** %8, align 8
  %32 = call i64 @B_IN_CURRENT_SCOPE(%struct.c_binding* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* @current_scope, align 8
  %36 = load i64, i64* @file_scope, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.c_binding*, %struct.c_binding** %8, align 8
  %40 = call i64 @B_IN_EXTERNAL_SCOPE(%struct.c_binding* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %30
  store i32 1, i32* %9, align 4
  br label %43

43:                                               ; preds = %42, %38, %34
  br label %44

44:                                               ; preds = %43, %23
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %70

51:                                               ; preds = %47, %44
  %52 = load %struct.c_binding*, %struct.c_binding** %8, align 8
  %53 = getelementptr inbounds %struct.c_binding, %struct.c_binding* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @TREE_CODE(i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* @pending_invalid_xref, align 4
  %60 = load i32, i32* @input_location, align 4
  store i32 %60, i32* @pending_invalid_xref_location, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call i32 (...) @pending_xref_error()
  br label %65

65:                                               ; preds = %63, %58
  br label %66

66:                                               ; preds = %65, %51
  %67 = load %struct.c_binding*, %struct.c_binding** %8, align 8
  %68 = getelementptr inbounds %struct.c_binding, %struct.c_binding* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %66, %50, %19
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.c_binding* @I_TAG_BINDING(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i64 @B_IN_CURRENT_SCOPE(%struct.c_binding*) #1

declare dso_local i64 @B_IN_EXTERNAL_SCOPE(%struct.c_binding*) #1

declare dso_local i32 @pending_xref_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
