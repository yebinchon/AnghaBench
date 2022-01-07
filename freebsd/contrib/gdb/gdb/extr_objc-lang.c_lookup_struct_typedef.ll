; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objc-lang.c_lookup_struct_typedef.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_objc-lang.c_lookup_struct_typedef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.block = type { i32 }
%struct.symtab = type { i32 }

@STRUCT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"No struct type named %s.\00", align 1
@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"This context has class, union or enum %s, not a struct.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol* @lookup_struct_typedef(i8* %0, %struct.block* %1, i32 %2) #0 {
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.symbol*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.block* %1, %struct.block** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.block*, %struct.block** %6, align 8
  %11 = load i32, i32* @STRUCT_DOMAIN, align 4
  %12 = call %struct.symbol* @lookup_symbol(i8* %9, %struct.block* %10, i32 %11, i32 0, %struct.symtab** null)
  store %struct.symbol* %12, %struct.symbol** %8, align 8
  %13 = load %struct.symbol*, %struct.symbol** %8, align 8
  %14 = icmp eq %struct.symbol* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store %struct.symbol* null, %struct.symbol** %4, align 8
  br label %39

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %19
  br label %23

23:                                               ; preds = %22, %3
  %24 = load %struct.symbol*, %struct.symbol** %8, align 8
  %25 = call i32 @SYMBOL_TYPE(%struct.symbol* %24)
  %26 = call i64 @TYPE_CODE(i32 %25)
  %27 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store %struct.symbol* null, %struct.symbol** %4, align 8
  br label %39

33:                                               ; preds = %29
  %34 = load i8*, i8** %5, align 8
  %35 = call i32 @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %36, %23
  %38 = load %struct.symbol*, %struct.symbol** %8, align 8
  store %struct.symbol* %38, %struct.symbol** %4, align 8
  br label %39

39:                                               ; preds = %37, %32, %18
  %40 = load %struct.symbol*, %struct.symbol** %4, align 8
  ret %struct.symbol* %40
}

declare dso_local %struct.symbol* @lookup_symbol(i8*, %struct.block*, i32, i32, %struct.symtab**) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i64 @TYPE_CODE(i32) #1

declare dso_local i32 @SYMBOL_TYPE(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
