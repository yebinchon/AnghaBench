; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_doublest.c_floatformat_is_nan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_doublest.c_floatformat_is_nan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.floatformat = type { i64, i32, i32, i32, i32, i64, i32, i32 }

@floatformat_intbit_yes = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @floatformat_is_nan(%struct.floatformat* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.floatformat*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.floatformat* %0, %struct.floatformat** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %6, align 8
  %13 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %14 = icmp ne %struct.floatformat* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @gdb_assert(i32 %15)
  %17 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %18 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %99

22:                                               ; preds = %2
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %25 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %28 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %31 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %34 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @get_field(i8* %23, i32 %26, i32 %29, i32 %32, i32 %35)
  %37 = ptrtoint i8* %36 to i64
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %40 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %99

44:                                               ; preds = %22
  %45 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %46 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %11, align 4
  %48 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %49 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %91, %44
  %52 = load i32, i32* %11, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %98

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @min(i32 %55, i32 32)
  store i32 %56, i32* %9, align 4
  %57 = load i8*, i8** %6, align 8
  %58 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %59 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %62 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i8* @get_field(i8* %57, i32 %60, i32 %63, i32 %64, i32 %65)
  %67 = ptrtoint i8* %66 to i64
  store i64 %67, i64* %8, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %70 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %54
  %74 = load %struct.floatformat*, %struct.floatformat** %4, align 8
  %75 = getelementptr inbounds %struct.floatformat, %struct.floatformat* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @floatformat_intbit_yes, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %73
  %80 = load i32, i32* %9, align 4
  %81 = sub i32 %80, 1
  %82 = shl i32 1, %81
  %83 = xor i32 %82, -1
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %8, align 8
  %86 = and i64 %85, %84
  store i64 %86, i64* %8, align 8
  br label %87

87:                                               ; preds = %79, %73, %54
  %88 = load i64, i64* %8, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 1, i32* %3, align 4
  br label %99

91:                                               ; preds = %87
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = add i32 %93, %92
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %11, align 4
  %97 = sub i32 %96, %95
  store i32 %97, i32* %11, align 4
  br label %51

98:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %90, %43, %21
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i8* @get_field(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
