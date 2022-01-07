; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bfdio.c_bfd_bread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_bfdio.c_bfd_bread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__*, %struct.bfd_in_memory*, i32* }
%struct.TYPE_5__ = type { i64 (%struct.TYPE_6__*, i8*, i64)* }
%struct.bfd_in_memory = type { i64, i64 }
%struct.areltdata = type { i64 }

@BFD_IN_MEMORY = common dso_local global i32 0, align 4
@bfd_error_file_truncated = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bfd_bread(i8* %0, i64 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bfd_in_memory*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = bitcast i32* %19 to %struct.areltdata*
  %21 = getelementptr inbounds %struct.areltdata, %struct.areltdata* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i64, i64* %9, align 8
  store i64 %27, i64* %6, align 8
  br label %28

28:                                               ; preds = %26, %16
  br label %29

29:                                               ; preds = %28, %3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @BFD_IN_MEMORY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %87

36:                                               ; preds = %29
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %38, align 8
  store %struct.bfd_in_memory* %39, %struct.bfd_in_memory** %10, align 8
  %40 = load i64, i64* %6, align 8
  store i64 %40, i64* %11, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %43, %44
  %46 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %10, align 8
  %47 = getelementptr inbounds %struct.bfd_in_memory, %struct.bfd_in_memory* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ugt i64 %45, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %36
  %51 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %10, align 8
  %52 = getelementptr inbounds %struct.bfd_in_memory, %struct.bfd_in_memory* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i64 0, i64* %11, align 8
  br label %67

59:                                               ; preds = %50
  %60 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %10, align 8
  %61 = getelementptr inbounds %struct.bfd_in_memory, %struct.bfd_in_memory* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sub i64 %62, %65
  store i64 %66, i64* %11, align 8
  br label %67

67:                                               ; preds = %59, %58
  %68 = load i32, i32* @bfd_error_file_truncated, align 4
  %69 = call i32 @bfd_set_error(i32 %68)
  br label %70

70:                                               ; preds = %67, %36
  %71 = load i8*, i8** %5, align 8
  %72 = load %struct.bfd_in_memory*, %struct.bfd_in_memory** %10, align 8
  %73 = getelementptr inbounds %struct.bfd_in_memory, %struct.bfd_in_memory* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %74, %77
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @memcpy(i8* %71, i64 %78, i64 %79)
  %81 = load i64, i64* %11, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %84, %81
  store i64 %85, i64* %83, align 8
  %86 = load i64, i64* %11, align 8
  store i64 %86, i64* %4, align 8
  br label %114

87:                                               ; preds = %29
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = icmp ne %struct.TYPE_5__* %90, null
  br i1 %91, label %92, label %102

92:                                               ; preds = %87
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64 (%struct.TYPE_6__*, i8*, i64)*, i64 (%struct.TYPE_6__*, i8*, i64)** %96, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = load i64, i64* %6, align 8
  %101 = call i64 %97(%struct.TYPE_6__* %98, i8* %99, i64 %100)
  store i64 %101, i64* %8, align 8
  br label %103

102:                                              ; preds = %87
  store i64 0, i64* %8, align 8
  br label %103

103:                                              ; preds = %102, %92
  %104 = load i64, i64* %8, align 8
  %105 = icmp ne i64 %104, -1
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load i64, i64* %8, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %110, %107
  store i64 %111, i64* %109, align 8
  br label %112

112:                                              ; preds = %106, %103
  %113 = load i64, i64* %8, align 8
  store i64 %113, i64* %4, align 8
  br label %114

114:                                              ; preds = %112, %70
  %115 = load i64, i64* %4, align 8
  ret i64 %115
}

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
