; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_find_any_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_find_any_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.symbol = type { i32 }

@VAR_DOMAIN = common dso_local global i32 0, align 4
@LOC_TYPEDEF = common dso_local global i64 0, align 8
@STRUCT_DOMAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.type* @ada_find_any_type(i8* %0) #0 {
  %2 = alloca %struct.type*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.symbol*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i32, i32* @VAR_DOMAIN, align 4
  %7 = call %struct.symbol* @standard_lookup(i8* %5, i32 %6)
  store %struct.symbol* %7, %struct.symbol** %4, align 8
  %8 = load %struct.symbol*, %struct.symbol** %4, align 8
  %9 = icmp ne %struct.symbol* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.symbol*, %struct.symbol** %4, align 8
  %12 = call i64 @SYMBOL_CLASS(%struct.symbol* %11)
  %13 = load i64, i64* @LOC_TYPEDEF, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.symbol*, %struct.symbol** %4, align 8
  %17 = call %struct.type* @SYMBOL_TYPE(%struct.symbol* %16)
  store %struct.type* %17, %struct.type** %2, align 8
  br label %28

18:                                               ; preds = %10, %1
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* @STRUCT_DOMAIN, align 4
  %21 = call %struct.symbol* @standard_lookup(i8* %19, i32 %20)
  store %struct.symbol* %21, %struct.symbol** %4, align 8
  %22 = load %struct.symbol*, %struct.symbol** %4, align 8
  %23 = icmp ne %struct.symbol* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load %struct.symbol*, %struct.symbol** %4, align 8
  %26 = call %struct.type* @SYMBOL_TYPE(%struct.symbol* %25)
  store %struct.type* %26, %struct.type** %2, align 8
  br label %28

27:                                               ; preds = %18
  store %struct.type* null, %struct.type** %2, align 8
  br label %28

28:                                               ; preds = %27, %24, %15
  %29 = load %struct.type*, %struct.type** %2, align 8
  ret %struct.type* %29
}

declare dso_local %struct.symbol* @standard_lookup(i8*, i32) #1

declare dso_local i64 @SYMBOL_CLASS(%struct.symbol*) #1

declare dso_local %struct.type* @SYMBOL_TYPE(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
