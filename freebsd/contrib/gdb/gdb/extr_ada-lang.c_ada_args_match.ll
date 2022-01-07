; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_args_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_args_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.value = type { i32 }
%struct.type = type { i32 }

@LOC_CONST = common dso_local global i64 0, align 8
@TYPE_CODE_ENUM = common dso_local global i64 0, align 8
@TYPE_CODE_FUNC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.symbol*, %struct.value**, i32)* @ada_args_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ada_args_match(%struct.symbol* %0, %struct.value** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca %struct.value**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.type*, align 8
  %10 = alloca %struct.type*, align 8
  %11 = alloca %struct.type*, align 8
  store %struct.symbol* %0, %struct.symbol** %5, align 8
  store %struct.value** %1, %struct.value*** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.symbol*, %struct.symbol** %5, align 8
  %13 = call %struct.type* @SYMBOL_TYPE(%struct.symbol* %12)
  store %struct.type* %13, %struct.type** %9, align 8
  %14 = load %struct.symbol*, %struct.symbol** %5, align 8
  %15 = call i64 @SYMBOL_CLASS(%struct.symbol* %14)
  %16 = load i64, i64* @LOC_CONST, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.type*, %struct.type** %9, align 8
  %20 = call i64 @TYPE_CODE(%struct.type* %19)
  %21 = load i64, i64* @TYPE_CODE_ENUM, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %4, align 4
  br label %77

27:                                               ; preds = %18, %3
  %28 = load %struct.type*, %struct.type** %9, align 8
  %29 = icmp eq %struct.type* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load %struct.type*, %struct.type** %9, align 8
  %32 = call i64 @TYPE_CODE(%struct.type* %31)
  %33 = load i64, i64* @TYPE_CODE_FUNC, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %27
  store i32 0, i32* %4, align 4
  br label %77

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.type*, %struct.type** %9, align 8
  %39 = call i32 @TYPE_NFIELDS(%struct.type* %38)
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %77

43:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %73, %43
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %44
  %49 = load %struct.type*, %struct.type** %9, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @TYPE_FIELD_TYPE(%struct.type* %49, i32 %50)
  %52 = call %struct.type* @check_typedef(i32 %51)
  store %struct.type* %52, %struct.type** %10, align 8
  %53 = load %struct.value**, %struct.value*** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.value*, %struct.value** %53, i64 %55
  %57 = load %struct.value*, %struct.value** %56, align 8
  %58 = call i32 @VALUE_TYPE(%struct.value* %57)
  %59 = call %struct.type* @check_typedef(i32 %58)
  store %struct.type* %59, %struct.type** %11, align 8
  %60 = load %struct.type*, %struct.type** %9, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @TYPE_FIELD_TYPE(%struct.type* %60, i32 %61)
  %63 = load %struct.value**, %struct.value*** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.value*, %struct.value** %63, i64 %65
  %67 = load %struct.value*, %struct.value** %66, align 8
  %68 = call i32 @VALUE_TYPE(%struct.value* %67)
  %69 = call i32 @ada_type_match(i32 %62, i32 %68, i32 1)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %77

72:                                               ; preds = %48
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %44

76:                                               ; preds = %44
  store i32 1, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %71, %42, %35, %23
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.type* @SYMBOL_TYPE(%struct.symbol*) #1

declare dso_local i64 @SYMBOL_CLASS(%struct.symbol*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @ada_type_match(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
