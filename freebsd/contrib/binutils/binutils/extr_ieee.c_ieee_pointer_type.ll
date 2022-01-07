; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_pointer_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_pointer_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ieee_modified_type = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ieee_pointer_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee_pointer_type(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee_modified_type*, align 8
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.ieee_handle*
  store %struct.ieee_handle* %9, %struct.ieee_handle** %4, align 8
  store %struct.ieee_modified_type* null, %struct.ieee_modified_type** %7, align 8
  %10 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %11 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %17 = call i32 @ieee_pop_type(%struct.ieee_handle* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ult i32 %18, 32
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = add i32 %22, 32
  %24 = load i32, i32* @TRUE, align 4
  %25 = load i32, i32* @FALSE, align 4
  %26 = call i32 @ieee_push_type(%struct.ieee_handle* %21, i32 %23, i32 0, i32 %24, i32 %25)
  store i32 %26, i32* %2, align 4
  br label %83

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %52, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call %struct.ieee_modified_type* @ieee_get_modified_info(i8* %31, i32 %32)
  store %struct.ieee_modified_type* %33, %struct.ieee_modified_type** %7, align 8
  %34 = load %struct.ieee_modified_type*, %struct.ieee_modified_type** %7, align 8
  %35 = icmp eq %struct.ieee_modified_type* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %2, align 4
  br label %83

38:                                               ; preds = %30
  %39 = load %struct.ieee_modified_type*, %struct.ieee_modified_type** %7, align 8
  %40 = getelementptr inbounds %struct.ieee_modified_type, %struct.ieee_modified_type* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ugt i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %45 = load %struct.ieee_modified_type*, %struct.ieee_modified_type** %7, align 8
  %46 = getelementptr inbounds %struct.ieee_modified_type, %struct.ieee_modified_type* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @TRUE, align 4
  %49 = load i32, i32* @FALSE, align 4
  %50 = call i32 @ieee_push_type(%struct.ieee_handle* %44, i32 %47, i32 4, i32 %48, i32 %49)
  store i32 %50, i32* %2, align 4
  br label %83

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51, %27
  %53 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %54 = load i32, i32* @TRUE, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @ieee_define_type(%struct.ieee_handle* %53, i32 4, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %60 = call i32 @ieee_write_number(%struct.ieee_handle* %59, i32 80)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @ieee_write_number(%struct.ieee_handle* %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %62, %58, %52
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %2, align 4
  br label %83

69:                                               ; preds = %62
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %69
  %73 = load %struct.ieee_handle*, %struct.ieee_handle** %4, align 8
  %74 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ieee_modified_type*, %struct.ieee_modified_type** %7, align 8
  %80 = getelementptr inbounds %struct.ieee_modified_type, %struct.ieee_modified_type* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %72, %69
  %82 = load i32, i32* @TRUE, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %67, %43, %36, %20
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @ieee_pop_type(%struct.ieee_handle*) #1

declare dso_local i32 @ieee_push_type(%struct.ieee_handle*, i32, i32, i32, i32) #1

declare dso_local %struct.ieee_modified_type* @ieee_get_modified_info(i8*, i32) #1

declare dso_local i32 @ieee_define_type(%struct.ieee_handle*, i32, i32, i32) #1

declare dso_local i32 @ieee_write_number(%struct.ieee_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
