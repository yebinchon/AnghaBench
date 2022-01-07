; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_lookup_union.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gdbtypes.c_lookup_union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.block = type { i32 }
%struct.symbol = type { i32 }
%struct.symtab = type { i32 }

@STRUCT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"No union type named %s.\00", align 1
@TYPE_CODE_UNION = common dso_local global i64 0, align 8
@DECLARED_TYPE_UNION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"This context has class, struct or enum %s, not a union.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.type* @lookup_union(i8* %0, %struct.block* %1) #0 {
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
  %11 = call %struct.symbol* @lookup_symbol(i8* %8, %struct.block* %9, i32 %10, i32 0, %struct.symtab** null)
  store %struct.symbol* %11, %struct.symbol** %6, align 8
  %12 = load %struct.symbol*, %struct.symbol** %6, align 8
  %13 = icmp eq %struct.symbol* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.symbol*, %struct.symbol** %6, align 8
  %19 = call %struct.type* @SYMBOL_TYPE(%struct.symbol* %18)
  store %struct.type* %19, %struct.type** %7, align 8
  %20 = load %struct.type*, %struct.type** %7, align 8
  %21 = call i64 @TYPE_CODE(%struct.type* %20)
  %22 = load i64, i64* @TYPE_CODE_UNION, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load %struct.type*, %struct.type** %7, align 8
  store %struct.type* %25, %struct.type** %3, align 8
  br label %41

26:                                               ; preds = %17
  %27 = load %struct.type*, %struct.type** %7, align 8
  %28 = call i64 @HAVE_CPLUS_STRUCT(%struct.type* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load %struct.type*, %struct.type** %7, align 8
  %32 = call i64 @TYPE_DECLARED_TYPE(%struct.type* %31)
  %33 = load i64, i64* @DECLARED_TYPE_UNION, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load %struct.type*, %struct.type** %7, align 8
  store %struct.type* %36, %struct.type** %3, align 8
  br label %41

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %26
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %38, %35, %24
  %42 = load %struct.type*, %struct.type** %3, align 8
  ret %struct.type* %42
}

declare dso_local %struct.symbol* @lookup_symbol(i8*, %struct.block*, i32, i32, %struct.symtab**) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local %struct.type* @SYMBOL_TYPE(%struct.symbol*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i64 @HAVE_CPLUS_STRUCT(%struct.type*) #1

declare dso_local i64 @TYPE_DECLARED_TYPE(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
