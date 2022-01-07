; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_doublest.c_floatformat_mantissa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_doublest.c_floatformat_mantissa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.floatformat = type { i32, i32, i32, i32 }

@floatformat_mantissa.res = internal global [50 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%08lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @floatformat_mantissa(%struct.floatformat* %0, i8* %1) #0 {
  %3 = alloca %struct.floatformat*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [9 x i8], align 1
  store %struct.floatformat* %0, %struct.floatformat** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %5, align 8
  %12 = load %struct.floatformat*, %struct.floatformat** %3, align 8
  %13 = icmp ne %struct.floatformat* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @gdb_assert(i32 %14)
  %16 = load %struct.floatformat*, %struct.floatformat** %3, align 8
  %17 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 7
  %20 = sdiv i32 %19, 8
  %21 = mul nsw i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = icmp ugt i64 50, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @gdb_assert(i32 %24)
  %26 = load %struct.floatformat*, %struct.floatformat** %3, align 8
  %27 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.floatformat*, %struct.floatformat** %3, align 8
  %30 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = srem i32 %32, 32
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i32, i32* %9, align 4
  %37 = srem i32 %36, 32
  br label %39

38:                                               ; preds = %2
  br label %39

39:                                               ; preds = %38, %35
  %40 = phi i32 [ %37, %35 ], [ 32, %38 ]
  store i32 %40, i32* %7, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = load %struct.floatformat*, %struct.floatformat** %3, align 8
  %43 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.floatformat*, %struct.floatformat** %3, align 8
  %46 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @get_field(i8* %41, i32 %44, i32 %47, i32 %48, i32 %49)
  store i64 %50, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @sprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @floatformat_mantissa.res, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = add i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %9, align 4
  %58 = sub i32 %57, %56
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %62, %39
  %60 = load i32, i32* %9, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %59
  %63 = load i8*, i8** %5, align 8
  %64 = load %struct.floatformat*, %struct.floatformat** %3, align 8
  %65 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.floatformat*, %struct.floatformat** %3, align 8
  %68 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i64 @get_field(i8* %63, i32 %66, i32 %69, i32 %70, i32 32)
  store i64 %71, i64* %6, align 8
  %72 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 0
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @sprintf(i8* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  %75 = getelementptr inbounds [9 x i8], [9 x i8]* %10, i64 0, i64 0
  %76 = call i32 @strcat(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @floatformat_mantissa.res, i64 0, i64 0), i8* %75)
  %77 = load i32, i32* %8, align 4
  %78 = add i32 %77, 32
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = sub nsw i32 %79, 32
  store i32 %80, i32* %9, align 4
  br label %59

81:                                               ; preds = %59
  ret i8* getelementptr inbounds ([50 x i8], [50 x i8]* @floatformat_mantissa.res, i64 0, i64 0)
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i64 @get_field(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
