; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_init.c_cpp_init_special_builtins.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_init.c_cpp_init_special_builtins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.builtin = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@builtin_array = common dso_local global %struct.builtin* null, align 8
@traditional = common dso_local global i32 0, align 4
@stdc_0_in_system_headers = common dso_local global i32 0, align 4
@std = common dso_local global i32 0, align 4
@NT_MACRO = common dso_local global i32 0, align 4
@NODE_BUILTIN = common dso_local global i32 0, align 4
@NODE_WARN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpp_init_special_builtins(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.builtin*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load %struct.builtin*, %struct.builtin** @builtin_array, align 8
  %7 = call i64 @ARRAY_SIZE(%struct.builtin* %6)
  store i64 %7, i64* %4, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* @traditional, align 4
  %10 = call i64 @CPP_OPTION(i32* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  %14 = sub i64 %13, 2
  store i64 %14, i64* %4, align 8
  br label %29

15:                                               ; preds = %1
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @stdc_0_in_system_headers, align 4
  %18 = call i64 @CPP_OPTION(i32* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32*, i32** %2, align 8
  %22 = load i32, i32* @std, align 4
  %23 = call i64 @CPP_OPTION(i32* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %15
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %26, -1
  store i64 %27, i64* %4, align 8
  br label %28

28:                                               ; preds = %25, %20
  br label %29

29:                                               ; preds = %28, %12
  %30 = load %struct.builtin*, %struct.builtin** @builtin_array, align 8
  store %struct.builtin* %30, %struct.builtin** %3, align 8
  br label %31

31:                                               ; preds = %63, %29
  %32 = load %struct.builtin*, %struct.builtin** %3, align 8
  %33 = load %struct.builtin*, %struct.builtin** @builtin_array, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds %struct.builtin, %struct.builtin* %33, i64 %34
  %36 = icmp ult %struct.builtin* %32, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %31
  %38 = load i32*, i32** %2, align 8
  %39 = load %struct.builtin*, %struct.builtin** %3, align 8
  %40 = getelementptr inbounds %struct.builtin, %struct.builtin* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.builtin*, %struct.builtin** %3, align 8
  %43 = getelementptr inbounds %struct.builtin, %struct.builtin* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.TYPE_5__* @cpp_lookup(i32* %38, i32 %41, i32 %44)
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %5, align 8
  %46 = load i32, i32* @NT_MACRO, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @NODE_BUILTIN, align 4
  %50 = load i32, i32* @NODE_WARN, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.builtin*, %struct.builtin** %3, align 8
  %57 = getelementptr inbounds %struct.builtin, %struct.builtin* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  br label %63

63:                                               ; preds = %37
  %64 = load %struct.builtin*, %struct.builtin** %3, align 8
  %65 = getelementptr inbounds %struct.builtin, %struct.builtin* %64, i32 1
  store %struct.builtin* %65, %struct.builtin** %3, align 8
  br label %31

66:                                               ; preds = %31
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.builtin*) #1

declare dso_local i64 @CPP_OPTION(i32*, i32) #1

declare dso_local %struct.TYPE_5__* @cpp_lookup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
