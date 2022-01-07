; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-support.c_cp_lookup_rtti_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-support.c_cp_lookup_rtti_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.block = type { i32 }
%struct.symbol = type { i32 }

@STRUCT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"RTTI symbol not found for class '%s'\00", align 1
@LOC_TYPEDEF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"RTTI symbol for class '%s' is not a type\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"RTTI symbol for class '%s' is a namespace\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"RTTI symbol for class '%s' has bad type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.type* @cp_lookup_rtti_type(i8* %0, %struct.block* %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.block*, align 8
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca %struct.type*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.block* %1, %struct.block** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load %struct.block*, %struct.block** %5, align 8
  %10 = load i32, i32* @STRUCT_DOMAIN, align 4
  %11 = call %struct.symbol* @lookup_symbol(i8* %8, %struct.block* %9, i32 %10, i32* null, i32* null)
  store %struct.symbol* %11, %struct.symbol** %6, align 8
  %12 = load %struct.symbol*, %struct.symbol** %6, align 8
  %13 = icmp eq %struct.symbol* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %15)
  store %struct.type* null, %struct.type** %3, align 8
  br label %39

17:                                               ; preds = %2
  %18 = load %struct.symbol*, %struct.symbol** %6, align 8
  %19 = call i64 @SYMBOL_CLASS(%struct.symbol* %18)
  %20 = load i64, i64* @LOC_TYPEDEF, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  store %struct.type* null, %struct.type** %3, align 8
  br label %39

25:                                               ; preds = %17
  %26 = load %struct.symbol*, %struct.symbol** %6, align 8
  %27 = call %struct.type* @SYMBOL_TYPE(%struct.symbol* %26)
  store %struct.type* %27, %struct.type** %7, align 8
  %28 = load %struct.type*, %struct.type** %7, align 8
  %29 = call i32 @TYPE_CODE(%struct.type* %28)
  switch i32 %29, label %34 [
    i32 129, label %30
    i32 128, label %31
  ]

30:                                               ; preds = %25
  br label %37

31:                                               ; preds = %25
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %32)
  store %struct.type* null, %struct.type** %3, align 8
  br label %39

34:                                               ; preds = %25
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %35)
  store %struct.type* null, %struct.type** %3, align 8
  br label %39

37:                                               ; preds = %30
  %38 = load %struct.type*, %struct.type** %7, align 8
  store %struct.type* %38, %struct.type** %3, align 8
  br label %39

39:                                               ; preds = %37, %34, %31, %22, %14
  %40 = load %struct.type*, %struct.type** %3, align 8
  ret %struct.type* %40
}

declare dso_local %struct.symbol* @lookup_symbol(i8*, %struct.block*, i32, i32*, i32*) #1

declare dso_local i32 @warning(i8*, i8*) #1

declare dso_local i64 @SYMBOL_CLASS(%struct.symbol*) #1

declare dso_local %struct.type* @SYMBOL_TYPE(%struct.symbol*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
