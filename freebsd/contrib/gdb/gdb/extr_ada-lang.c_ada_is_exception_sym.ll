; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_is_exception_sym.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_is_exception_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }

@LOC_TYPEDEF = common dso_local global i64 0, align 8
@LOC_BLOCK = common dso_local global i64 0, align 8
@LOC_CONST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"exception\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ada_is_exception_sym(%struct.symbol* %0) #0 {
  %2 = alloca %struct.symbol*, align 8
  %3 = alloca i8*, align 8
  store %struct.symbol* %0, %struct.symbol** %2, align 8
  %4 = load %struct.symbol*, %struct.symbol** %2, align 8
  %5 = call i32 @SYMBOL_TYPE(%struct.symbol* %4)
  %6 = call i8* @type_name_no_tag(i32 %5)
  store i8* %6, i8** %3, align 8
  %7 = load %struct.symbol*, %struct.symbol** %2, align 8
  %8 = call i64 @SYMBOL_CLASS(%struct.symbol* %7)
  %9 = load i64, i64* @LOC_TYPEDEF, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load %struct.symbol*, %struct.symbol** %2, align 8
  %13 = call i64 @SYMBOL_CLASS(%struct.symbol* %12)
  %14 = load i64, i64* @LOC_BLOCK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = load %struct.symbol*, %struct.symbol** %2, align 8
  %18 = call i64 @SYMBOL_CLASS(%struct.symbol* %17)
  %19 = load i64, i64* @LOC_CONST, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i8*, i8** %3, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i8*, i8** %3, align 8
  %26 = call i64 @DEPRECATED_STREQ(i8* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %24, %21, %16, %11, %1
  %29 = phi i1 [ false, %21 ], [ false, %16 ], [ false, %11 ], [ false, %1 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

declare dso_local i8* @type_name_no_tag(i32) #1

declare dso_local i32 @SYMBOL_TYPE(%struct.symbol*) #1

declare dso_local i64 @SYMBOL_CLASS(%struct.symbol*) #1

declare dso_local i64 @DEPRECATED_STREQ(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
