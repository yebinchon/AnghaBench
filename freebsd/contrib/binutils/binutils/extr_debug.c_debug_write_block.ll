; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_write_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_write_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_handle = type { i32 }
%struct.debug_write_fns = type { i32 (i8*, i32)*, i32 (i8*, i32)* }
%struct.debug_block = type { i32, i32*, %struct.TYPE_2__*, %struct.debug_block*, %struct.debug_block*, i32 }
%struct.TYPE_2__ = type { %struct.debug_name* }
%struct.debug_name = type { %struct.debug_name* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.debug_handle*, %struct.debug_write_fns*, i8*, %struct.debug_block*)* @debug_write_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_write_block(%struct.debug_handle* %0, %struct.debug_write_fns* %1, i8* %2, %struct.debug_block* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.debug_handle*, align 8
  %7 = alloca %struct.debug_write_fns*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.debug_block*, align 8
  %10 = alloca %struct.debug_name*, align 8
  %11 = alloca %struct.debug_block*, align 8
  store %struct.debug_handle* %0, %struct.debug_handle** %6, align 8
  store %struct.debug_write_fns* %1, %struct.debug_write_fns** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.debug_block* %3, %struct.debug_block** %9, align 8
  %12 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %13 = load %struct.debug_write_fns*, %struct.debug_write_fns** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load %struct.debug_block*, %struct.debug_block** %9, align 8
  %16 = getelementptr inbounds %struct.debug_block, %struct.debug_block* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @debug_write_linenos(%struct.debug_handle* %12, %struct.debug_write_fns* %13, i8* %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %5, align 4
  br label %131

22:                                               ; preds = %4
  %23 = load %struct.debug_block*, %struct.debug_block** %9, align 8
  %24 = getelementptr inbounds %struct.debug_block, %struct.debug_block* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = icmp ne %struct.TYPE_2__* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.debug_block*, %struct.debug_block** %9, align 8
  %29 = getelementptr inbounds %struct.debug_block, %struct.debug_block* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %27, %22
  %33 = load %struct.debug_write_fns*, %struct.debug_write_fns** %7, align 8
  %34 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %33, i32 0, i32 1
  %35 = load i32 (i8*, i32)*, i32 (i8*, i32)** %34, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.debug_block*, %struct.debug_block** %9, align 8
  %38 = getelementptr inbounds %struct.debug_block, %struct.debug_block* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = call i32 %35(i8* %36, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %5, align 4
  br label %131

44:                                               ; preds = %32
  br label %45

45:                                               ; preds = %44, %27
  %46 = load %struct.debug_block*, %struct.debug_block** %9, align 8
  %47 = getelementptr inbounds %struct.debug_block, %struct.debug_block* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = icmp ne %struct.TYPE_2__* %48, null
  br i1 %49, label %50, label %74

50:                                               ; preds = %45
  %51 = load %struct.debug_block*, %struct.debug_block** %9, align 8
  %52 = getelementptr inbounds %struct.debug_block, %struct.debug_block* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.debug_name*, %struct.debug_name** %54, align 8
  store %struct.debug_name* %55, %struct.debug_name** %10, align 8
  br label %56

56:                                               ; preds = %69, %50
  %57 = load %struct.debug_name*, %struct.debug_name** %10, align 8
  %58 = icmp ne %struct.debug_name* %57, null
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %61 = load %struct.debug_write_fns*, %struct.debug_write_fns** %7, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load %struct.debug_name*, %struct.debug_name** %10, align 8
  %64 = call i32 @debug_write_name(%struct.debug_handle* %60, %struct.debug_write_fns* %61, i8* %62, %struct.debug_name* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* %5, align 4
  br label %131

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.debug_name*, %struct.debug_name** %10, align 8
  %71 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %70, i32 0, i32 0
  %72 = load %struct.debug_name*, %struct.debug_name** %71, align 8
  store %struct.debug_name* %72, %struct.debug_name** %10, align 8
  br label %56

73:                                               ; preds = %56
  br label %74

74:                                               ; preds = %73, %45
  %75 = load %struct.debug_block*, %struct.debug_block** %9, align 8
  %76 = getelementptr inbounds %struct.debug_block, %struct.debug_block* %75, i32 0, i32 4
  %77 = load %struct.debug_block*, %struct.debug_block** %76, align 8
  store %struct.debug_block* %77, %struct.debug_block** %11, align 8
  br label %78

78:                                               ; preds = %91, %74
  %79 = load %struct.debug_block*, %struct.debug_block** %11, align 8
  %80 = icmp ne %struct.debug_block* %79, null
  br i1 %80, label %81, label %95

81:                                               ; preds = %78
  %82 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %83 = load %struct.debug_write_fns*, %struct.debug_write_fns** %7, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = load %struct.debug_block*, %struct.debug_block** %11, align 8
  %86 = call i32 @debug_write_block(%struct.debug_handle* %82, %struct.debug_write_fns* %83, i8* %84, %struct.debug_block* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %81
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %5, align 4
  br label %131

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.debug_block*, %struct.debug_block** %11, align 8
  %93 = getelementptr inbounds %struct.debug_block, %struct.debug_block* %92, i32 0, i32 3
  %94 = load %struct.debug_block*, %struct.debug_block** %93, align 8
  store %struct.debug_block* %94, %struct.debug_block** %11, align 8
  br label %78

95:                                               ; preds = %78
  %96 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %97 = load %struct.debug_write_fns*, %struct.debug_write_fns** %7, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load %struct.debug_block*, %struct.debug_block** %9, align 8
  %100 = getelementptr inbounds %struct.debug_block, %struct.debug_block* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @debug_write_linenos(%struct.debug_handle* %96, %struct.debug_write_fns* %97, i8* %98, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %95
  %105 = load i32, i32* @FALSE, align 4
  store i32 %105, i32* %5, align 4
  br label %131

106:                                              ; preds = %95
  %107 = load %struct.debug_block*, %struct.debug_block** %9, align 8
  %108 = getelementptr inbounds %struct.debug_block, %struct.debug_block* %107, i32 0, i32 2
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = icmp ne %struct.TYPE_2__* %109, null
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = load %struct.debug_block*, %struct.debug_block** %9, align 8
  %113 = getelementptr inbounds %struct.debug_block, %struct.debug_block* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %129

116:                                              ; preds = %111, %106
  %117 = load %struct.debug_write_fns*, %struct.debug_write_fns** %7, align 8
  %118 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %117, i32 0, i32 0
  %119 = load i32 (i8*, i32)*, i32 (i8*, i32)** %118, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = load %struct.debug_block*, %struct.debug_block** %9, align 8
  %122 = getelementptr inbounds %struct.debug_block, %struct.debug_block* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 %119(i8* %120, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %116
  %127 = load i32, i32* @FALSE, align 4
  store i32 %127, i32* %5, align 4
  br label %131

128:                                              ; preds = %116
  br label %129

129:                                              ; preds = %128, %111
  %130 = load i32, i32* @TRUE, align 4
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %129, %126, %104, %88, %66, %42, %20
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @debug_write_linenos(%struct.debug_handle*, %struct.debug_write_fns*, i8*, i32) #1

declare dso_local i32 @debug_write_name(%struct.debug_handle*, %struct.debug_write_fns*, i8*, %struct.debug_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
