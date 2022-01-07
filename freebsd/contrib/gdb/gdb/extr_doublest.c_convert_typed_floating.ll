; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_doublest.c_convert_typed_floating.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_doublest.c_convert_typed_floating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.floatformat = type { i32 }

@TYPE_CODE_FLT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Can't convert floating-point number to desired type.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @convert_typed_floating(i8* %0, %struct.type* %1, i8* %2, %struct.type* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.type*, align 8
  %9 = alloca %struct.floatformat*, align 8
  %10 = alloca %struct.floatformat*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.type* %1, %struct.type** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.type* %3, %struct.type** %8, align 8
  %12 = load %struct.type*, %struct.type** %6, align 8
  %13 = call %struct.floatformat* @floatformat_from_type(%struct.type* %12)
  store %struct.floatformat* %13, %struct.floatformat** %9, align 8
  %14 = load %struct.type*, %struct.type** %8, align 8
  %15 = call %struct.floatformat* @floatformat_from_type(%struct.type* %14)
  store %struct.floatformat* %15, %struct.floatformat** %10, align 8
  %16 = load %struct.type*, %struct.type** %6, align 8
  %17 = call i64 @TYPE_CODE(%struct.type* %16)
  %18 = load i64, i64* @TYPE_CODE_FLT, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @gdb_assert(i32 %20)
  %22 = load %struct.type*, %struct.type** %8, align 8
  %23 = call i64 @TYPE_CODE(%struct.type* %22)
  %24 = load i64, i64* @TYPE_CODE_FLT, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @gdb_assert(i32 %26)
  %28 = load %struct.floatformat*, %struct.floatformat** %9, align 8
  %29 = icmp eq %struct.floatformat* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load %struct.floatformat*, %struct.floatformat** %10, align 8
  %32 = icmp eq %struct.floatformat* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %30, %4
  %34 = call i32 @warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %35 = load i8*, i8** %7, align 8
  %36 = load %struct.type*, %struct.type** %8, align 8
  %37 = call i32 @TYPE_LENGTH(%struct.type* %36)
  %38 = call i32 @memset(i8* %35, i32 0, i32 %37)
  br label %64

39:                                               ; preds = %30
  %40 = load %struct.floatformat*, %struct.floatformat** %9, align 8
  %41 = load %struct.floatformat*, %struct.floatformat** %10, align 8
  %42 = icmp eq %struct.floatformat* %40, %41
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8
  %45 = load %struct.type*, %struct.type** %8, align 8
  %46 = call i32 @TYPE_LENGTH(%struct.type* %45)
  %47 = call i32 @memset(i8* %44, i32 0, i32 %46)
  %48 = load i8*, i8** %7, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = load %struct.type*, %struct.type** %6, align 8
  %51 = call i32 @TYPE_LENGTH(%struct.type* %50)
  %52 = load %struct.type*, %struct.type** %8, align 8
  %53 = call i32 @TYPE_LENGTH(%struct.type* %52)
  %54 = call i32 @min(i32 %51, i32 %53)
  %55 = call i32 @memcpy(i8* %48, i8* %49, i32 %54)
  br label %63

56:                                               ; preds = %39
  %57 = load %struct.floatformat*, %struct.floatformat** %9, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 @floatformat_to_doublest(%struct.floatformat* %57, i8* %58, i32* %11)
  %60 = load %struct.floatformat*, %struct.floatformat** %10, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @floatformat_from_doublest(%struct.floatformat* %60, i32* %11, i8* %61)
  br label %63

63:                                               ; preds = %56, %43
  br label %64

64:                                               ; preds = %63, %33
  ret void
}

declare dso_local %struct.floatformat* @floatformat_from_type(%struct.type*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @floatformat_to_doublest(%struct.floatformat*, i8*, i32*) #1

declare dso_local i32 @floatformat_from_doublest(%struct.floatformat*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
