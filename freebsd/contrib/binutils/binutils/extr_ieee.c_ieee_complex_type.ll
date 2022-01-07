; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_complex_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_complex_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"IEEE unsupported complex type size %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @ieee_complex_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_complex_type(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee_handle*, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.ieee_handle*
  store %struct.ieee_handle* %9, %struct.ieee_handle** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %43 [
    i32 4, label %11
    i32 12, label %27
    i32 16, label %27
    i32 8, label %27
  ]

11:                                               ; preds = %2
  %12 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %13 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %11
  %17 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %18 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %19 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = mul i32 %21, 2
  %23 = load i32, i32* @FALSE, align 4
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32 @ieee_push_type(%struct.ieee_handle* %17, i32 %20, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %91

26:                                               ; preds = %11
  store i8 99, i8* %7, align 1
  br label %49

27:                                               ; preds = %2, %2, %2
  %28 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %29 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %34 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %35 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = mul i32 %37, 2
  %39 = load i32, i32* @FALSE, align 4
  %40 = load i32, i32* @FALSE, align 4
  %41 = call i32 @ieee_push_type(%struct.ieee_handle* %33, i32 %36, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %91

42:                                               ; preds = %27
  store i8 100, i8* %7, align 1
  br label %49

43:                                               ; preds = %2
  %44 = load i32, i32* @stderr, align 4
  %45 = call i8* @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @fprintf(i32 %44, i8* %45, i32 %46)
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %3, align 4
  br label %91

49:                                               ; preds = %42, %26
  %50 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %51 = load i32, i32* %5, align 4
  %52 = mul i32 %51, 2
  %53 = load i32, i32* @FALSE, align 4
  %54 = load i32, i32* @FALSE, align 4
  %55 = call i32 @ieee_define_type(%struct.ieee_handle* %50, i32 %52, i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %49
  %58 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %59 = load i8, i8* %7, align 1
  %60 = call i32 @ieee_write_number(%struct.ieee_handle* %58, i8 signext %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %64 = call i32 @ieee_write_id(%struct.ieee_handle* %63, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %62, %57, %49
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* %3, align 4
  br label %91

68:                                               ; preds = %62
  %69 = load i32, i32* %5, align 4
  %70 = icmp eq i32 %69, 4
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %73 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %79 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  br label %89

80:                                               ; preds = %68
  %81 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %82 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %88 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %80, %71
  %90 = load i32, i32* @TRUE, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %66, %43, %32, %16
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @ieee_push_type(%struct.ieee_handle*, i32, i32, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @ieee_define_type(%struct.ieee_handle*, i32, i32, i32) #1

declare dso_local i32 @ieee_write_number(%struct.ieee_handle*, i8 signext) #1

declare dso_local i32 @ieee_write_id(%struct.ieee_handle*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
