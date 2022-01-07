; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_lookup_typename.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_lookup_typename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.block = type { i32 }
%struct.symbol = type { i32 }
%struct.symtab = type { i32 }

@VAR_DOMAIN = common dso_local global i32 0, align 4
@LOC_TYPEDEF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"No type named %s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.type* @lookup_typename(i8* %0, %struct.block* %1, i32 %2) #0 {
  %4 = alloca %struct.type*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.symbol*, align 8
  %9 = alloca %struct.type*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.block* %1, %struct.block** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = load %struct.block*, %struct.block** %6, align 8
  %12 = load i32, i32* @VAR_DOMAIN, align 4
  %13 = call %struct.symbol* @lookup_symbol(i8* %10, %struct.block* %11, i32 %12, i32 0, %struct.symtab** null)
  store %struct.symbol* %13, %struct.symbol** %8, align 8
  %14 = load %struct.symbol*, %struct.symbol** %8, align 8
  %15 = icmp eq %struct.symbol* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load %struct.symbol*, %struct.symbol** %8, align 8
  %18 = call i64 @SYMBOL_CLASS(%struct.symbol* %17)
  %19 = load i64, i64* @LOC_TYPEDEF, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %16, %3
  %22 = load i8*, i8** %5, align 8
  %23 = call %struct.type* @lookup_primitive_typename(i8* %22)
  store %struct.type* %23, %struct.type** %9, align 8
  %24 = load %struct.type*, %struct.type** %9, align 8
  %25 = icmp ne %struct.type* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load %struct.type*, %struct.type** %9, align 8
  store %struct.type* %27, %struct.type** %4, align 8
  br label %43

28:                                               ; preds = %21
  %29 = load %struct.type*, %struct.type** %9, align 8
  %30 = icmp ne %struct.type* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store %struct.type* null, %struct.type** %4, align 8
  br label %43

35:                                               ; preds = %31, %28
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %35
  br label %39

39:                                               ; preds = %38
  br label %40

40:                                               ; preds = %39, %16
  %41 = load %struct.symbol*, %struct.symbol** %8, align 8
  %42 = call %struct.type* @SYMBOL_TYPE(%struct.symbol* %41)
  store %struct.type* %42, %struct.type** %4, align 8
  br label %43

43:                                               ; preds = %40, %34, %26
  %44 = load %struct.type*, %struct.type** %4, align 8
  ret %struct.type* %44
}

declare dso_local %struct.symbol* @lookup_symbol(i8*, %struct.block*, i32, i32, %struct.symtab**) #1

declare dso_local i64 @SYMBOL_CLASS(%struct.symbol*) #1

declare dso_local %struct.type* @lookup_primitive_typename(i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local %struct.type* @SYMBOL_TYPE(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
