; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_add_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_ieee.c_ieee_add_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_handle = type { %struct.ieee_range*, %struct.ieee_range* }
%struct.ieee_range = type { i64, i64, %struct.ieee_range* }

@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ieee_handle*, i64, i64, i64)* @ieee_add_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ieee_add_range(%struct.ieee_handle* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ieee_handle*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ieee_range**, align 8
  %11 = alloca %struct.ieee_range*, align 8
  %12 = alloca %struct.ieee_range**, align 8
  %13 = alloca %struct.ieee_range*, align 8
  store %struct.ieee_handle* %0, %struct.ieee_handle** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp eq i64 %14, -1
  br i1 %15, label %23, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  %18 = icmp eq i64 %17, -1
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %16, %4
  %24 = load i64, i64* @TRUE, align 8
  store i64 %24, i64* %5, align 8
  br label %160

25:                                               ; preds = %19
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %30 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %29, i32 0, i32 1
  store %struct.ieee_range** %30, %struct.ieee_range*** %10, align 8
  br label %34

31:                                               ; preds = %25
  %32 = load %struct.ieee_handle*, %struct.ieee_handle** %6, align 8
  %33 = getelementptr inbounds %struct.ieee_handle, %struct.ieee_handle* %32, i32 0, i32 0
  store %struct.ieee_range** %33, %struct.ieee_range*** %10, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.ieee_range**, %struct.ieee_range*** %10, align 8
  %36 = load %struct.ieee_range*, %struct.ieee_range** %35, align 8
  store %struct.ieee_range* %36, %struct.ieee_range** %11, align 8
  br label %37

37:                                               ; preds = %119, %34
  %38 = load %struct.ieee_range*, %struct.ieee_range** %11, align 8
  %39 = icmp ne %struct.ieee_range* %38, null
  br i1 %39, label %40, label %123

40:                                               ; preds = %37
  %41 = load i64, i64* %9, align 8
  %42 = load %struct.ieee_range*, %struct.ieee_range** %11, align 8
  %43 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sge i64 %41, %44
  br i1 %45, label %46, label %118

46:                                               ; preds = %40
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.ieee_range*, %struct.ieee_range** %11, align 8
  %49 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sle i64 %47, %50
  br i1 %51, label %52, label %118

52:                                               ; preds = %46
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.ieee_range*, %struct.ieee_range** %11, align 8
  %55 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.ieee_range*, %struct.ieee_range** %11, align 8
  %61 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %52
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.ieee_range*, %struct.ieee_range** %11, align 8
  %65 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %63, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.ieee_range*, %struct.ieee_range** %11, align 8
  %71 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %68, %62
  %73 = load %struct.ieee_range*, %struct.ieee_range** %11, align 8
  %74 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %73, i32 0, i32 2
  store %struct.ieee_range** %74, %struct.ieee_range*** %12, align 8
  br label %75

75:                                               ; preds = %106, %72
  %76 = load %struct.ieee_range**, %struct.ieee_range*** %12, align 8
  %77 = load %struct.ieee_range*, %struct.ieee_range** %76, align 8
  %78 = icmp ne %struct.ieee_range* %77, null
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load %struct.ieee_range**, %struct.ieee_range*** %12, align 8
  %81 = load %struct.ieee_range*, %struct.ieee_range** %80, align 8
  %82 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.ieee_range*, %struct.ieee_range** %11, align 8
  %85 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp sle i64 %83, %86
  br label %88

88:                                               ; preds = %79, %75
  %89 = phi i1 [ false, %75 ], [ %87, %79 ]
  br i1 %89, label %90, label %116

90:                                               ; preds = %88
  %91 = load %struct.ieee_range**, %struct.ieee_range*** %12, align 8
  %92 = load %struct.ieee_range*, %struct.ieee_range** %91, align 8
  %93 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.ieee_range*, %struct.ieee_range** %11, align 8
  %96 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp sgt i64 %94, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %90
  %100 = load %struct.ieee_range**, %struct.ieee_range*** %12, align 8
  %101 = load %struct.ieee_range*, %struct.ieee_range** %100, align 8
  %102 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.ieee_range*, %struct.ieee_range** %11, align 8
  %105 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %104, i32 0, i32 1
  store i64 %103, i64* %105, align 8
  br label %106

106:                                              ; preds = %99, %90
  %107 = load %struct.ieee_range**, %struct.ieee_range*** %12, align 8
  %108 = load %struct.ieee_range*, %struct.ieee_range** %107, align 8
  %109 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %108, i32 0, i32 2
  %110 = load %struct.ieee_range*, %struct.ieee_range** %109, align 8
  store %struct.ieee_range* %110, %struct.ieee_range** %13, align 8
  %111 = load %struct.ieee_range**, %struct.ieee_range*** %12, align 8
  %112 = load %struct.ieee_range*, %struct.ieee_range** %111, align 8
  %113 = call i32 @free(%struct.ieee_range* %112)
  %114 = load %struct.ieee_range*, %struct.ieee_range** %13, align 8
  %115 = load %struct.ieee_range**, %struct.ieee_range*** %12, align 8
  store %struct.ieee_range* %114, %struct.ieee_range** %115, align 8
  br label %75

116:                                              ; preds = %88
  %117 = load i64, i64* @TRUE, align 8
  store i64 %117, i64* %5, align 8
  br label %160

118:                                              ; preds = %46, %40
  br label %119

119:                                              ; preds = %118
  %120 = load %struct.ieee_range*, %struct.ieee_range** %11, align 8
  %121 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %120, i32 0, i32 2
  %122 = load %struct.ieee_range*, %struct.ieee_range** %121, align 8
  store %struct.ieee_range* %122, %struct.ieee_range** %11, align 8
  br label %37

123:                                              ; preds = %37
  %124 = call i64 @xmalloc(i32 24)
  %125 = inttoptr i64 %124 to %struct.ieee_range*
  store %struct.ieee_range* %125, %struct.ieee_range** %11, align 8
  %126 = load %struct.ieee_range*, %struct.ieee_range** %11, align 8
  %127 = call i32 @memset(%struct.ieee_range* %126, i32 0, i32 24)
  %128 = load i64, i64* %8, align 8
  %129 = load %struct.ieee_range*, %struct.ieee_range** %11, align 8
  %130 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load i64, i64* %9, align 8
  %132 = load %struct.ieee_range*, %struct.ieee_range** %11, align 8
  %133 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  %134 = load %struct.ieee_range**, %struct.ieee_range*** %10, align 8
  store %struct.ieee_range** %134, %struct.ieee_range*** %12, align 8
  br label %135

135:                                              ; preds = %148, %123
  %136 = load %struct.ieee_range**, %struct.ieee_range*** %12, align 8
  %137 = load %struct.ieee_range*, %struct.ieee_range** %136, align 8
  %138 = icmp ne %struct.ieee_range* %137, null
  br i1 %138, label %139, label %152

139:                                              ; preds = %135
  %140 = load %struct.ieee_range**, %struct.ieee_range*** %12, align 8
  %141 = load %struct.ieee_range*, %struct.ieee_range** %140, align 8
  %142 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %9, align 8
  %145 = icmp sgt i64 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  br label %152

147:                                              ; preds = %139
  br label %148

148:                                              ; preds = %147
  %149 = load %struct.ieee_range**, %struct.ieee_range*** %12, align 8
  %150 = load %struct.ieee_range*, %struct.ieee_range** %149, align 8
  %151 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %150, i32 0, i32 2
  store %struct.ieee_range** %151, %struct.ieee_range*** %12, align 8
  br label %135

152:                                              ; preds = %146, %135
  %153 = load %struct.ieee_range**, %struct.ieee_range*** %12, align 8
  %154 = load %struct.ieee_range*, %struct.ieee_range** %153, align 8
  %155 = load %struct.ieee_range*, %struct.ieee_range** %11, align 8
  %156 = getelementptr inbounds %struct.ieee_range, %struct.ieee_range* %155, i32 0, i32 2
  store %struct.ieee_range* %154, %struct.ieee_range** %156, align 8
  %157 = load %struct.ieee_range*, %struct.ieee_range** %11, align 8
  %158 = load %struct.ieee_range**, %struct.ieee_range*** %12, align 8
  store %struct.ieee_range* %157, %struct.ieee_range** %158, align 8
  %159 = load i64, i64* @TRUE, align 8
  store i64 %159, i64* %5, align 8
  br label %160

160:                                              ; preds = %152, %116, %23
  %161 = load i64, i64* %5, align 8
  ret i64 %161
}

declare dso_local i32 @free(%struct.ieee_range*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.ieee_range*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
