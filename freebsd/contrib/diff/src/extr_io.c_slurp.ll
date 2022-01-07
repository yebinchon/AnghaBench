; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_io.c_slurp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_io.c_slurp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_data = type { i64, i64, i64, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@PTRDIFF_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_data*)* @slurp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slurp(%struct.file_data* %0) #0 {
  %2 = alloca %struct.file_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.file_data* %0, %struct.file_data** %2, align 8
  %5 = load %struct.file_data*, %struct.file_data** %2, align 8
  %6 = getelementptr inbounds %struct.file_data, %struct.file_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %159

10:                                               ; preds = %1
  %11 = load %struct.file_data*, %struct.file_data** %2, align 8
  %12 = getelementptr inbounds %struct.file_data, %struct.file_data* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @S_ISREG(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %83

17:                                               ; preds = %10
  %18 = load %struct.file_data*, %struct.file_data** %2, align 8
  %19 = getelementptr inbounds %struct.file_data, %struct.file_data* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = add i64 %22, 8
  %24 = load i64, i64* %4, align 8
  %25 = urem i64 %24, 4
  %26 = sub i64 %23, %25
  store i64 %26, i64* %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.file_data*, %struct.file_data** %2, align 8
  %29 = getelementptr inbounds %struct.file_data, %struct.file_data* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %27, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %17
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* @PTRDIFF_MAX, align 8
  %39 = load i64, i64* %3, align 8
  %40 = icmp ule i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37, %33, %17
  %42 = call i32 (...) @xalloc_die()
  br label %43

43:                                               ; preds = %41, %37
  %44 = load %struct.file_data*, %struct.file_data** %2, align 8
  %45 = getelementptr inbounds %struct.file_data, %struct.file_data* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %3, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %43
  %50 = load i64, i64* %3, align 8
  %51 = load %struct.file_data*, %struct.file_data** %2, align 8
  %52 = getelementptr inbounds %struct.file_data, %struct.file_data* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.file_data*, %struct.file_data** %2, align 8
  %54 = getelementptr inbounds %struct.file_data, %struct.file_data* %53, i32 0, i32 3
  %55 = load i8*, i8** %54, align 8
  %56 = load i64, i64* %3, align 8
  %57 = call i8* @xrealloc(i8* %55, i64 %56)
  %58 = load %struct.file_data*, %struct.file_data** %2, align 8
  %59 = getelementptr inbounds %struct.file_data, %struct.file_data* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %49, %43
  %61 = load %struct.file_data*, %struct.file_data** %2, align 8
  %62 = getelementptr inbounds %struct.file_data, %struct.file_data* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %4, align 8
  %65 = icmp ule i64 %63, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %60
  %67 = load %struct.file_data*, %struct.file_data** %2, align 8
  %68 = load i64, i64* %4, align 8
  %69 = add i64 %68, 1
  %70 = load %struct.file_data*, %struct.file_data** %2, align 8
  %71 = getelementptr inbounds %struct.file_data, %struct.file_data* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = sub i64 %69, %72
  %74 = call i32 @file_block_read(%struct.file_data* %67, i64 %73)
  %75 = load %struct.file_data*, %struct.file_data** %2, align 8
  %76 = getelementptr inbounds %struct.file_data, %struct.file_data* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %4, align 8
  %79 = icmp ule i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %66
  br label %159

81:                                               ; preds = %66
  br label %82

82:                                               ; preds = %81, %60
  br label %83

83:                                               ; preds = %82, %10
  %84 = load %struct.file_data*, %struct.file_data** %2, align 8
  %85 = load %struct.file_data*, %struct.file_data** %2, align 8
  %86 = getelementptr inbounds %struct.file_data, %struct.file_data* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.file_data*, %struct.file_data** %2, align 8
  %89 = getelementptr inbounds %struct.file_data, %struct.file_data* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = sub i64 %87, %90
  %92 = call i32 @file_block_read(%struct.file_data* %84, i64 %91)
  %93 = load %struct.file_data*, %struct.file_data** %2, align 8
  %94 = getelementptr inbounds %struct.file_data, %struct.file_data* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %159

97:                                               ; preds = %83
  br label %98

98:                                               ; preds = %116, %97
  %99 = load %struct.file_data*, %struct.file_data** %2, align 8
  %100 = getelementptr inbounds %struct.file_data, %struct.file_data* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.file_data*, %struct.file_data** %2, align 8
  %103 = getelementptr inbounds %struct.file_data, %struct.file_data* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %101, %104
  br i1 %105, label %106, label %139

106:                                              ; preds = %98
  %107 = load i64, i64* @PTRDIFF_MAX, align 8
  %108 = udiv i64 %107, 2
  %109 = sub i64 %108, 4
  %110 = load %struct.file_data*, %struct.file_data** %2, align 8
  %111 = getelementptr inbounds %struct.file_data, %struct.file_data* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ult i64 %109, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = call i32 (...) @xalloc_die()
  br label %116

116:                                              ; preds = %114, %106
  %117 = load %struct.file_data*, %struct.file_data** %2, align 8
  %118 = getelementptr inbounds %struct.file_data, %struct.file_data* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = mul i64 %119, 2
  store i64 %120, i64* %118, align 8
  %121 = load %struct.file_data*, %struct.file_data** %2, align 8
  %122 = getelementptr inbounds %struct.file_data, %struct.file_data* %121, i32 0, i32 3
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.file_data*, %struct.file_data** %2, align 8
  %125 = getelementptr inbounds %struct.file_data, %struct.file_data* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = call i8* @xrealloc(i8* %123, i64 %126)
  %128 = load %struct.file_data*, %struct.file_data** %2, align 8
  %129 = getelementptr inbounds %struct.file_data, %struct.file_data* %128, i32 0, i32 3
  store i8* %127, i8** %129, align 8
  %130 = load %struct.file_data*, %struct.file_data** %2, align 8
  %131 = load %struct.file_data*, %struct.file_data** %2, align 8
  %132 = getelementptr inbounds %struct.file_data, %struct.file_data* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.file_data*, %struct.file_data** %2, align 8
  %135 = getelementptr inbounds %struct.file_data, %struct.file_data* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = sub i64 %133, %136
  %138 = call i32 @file_block_read(%struct.file_data* %130, i64 %137)
  br label %98

139:                                              ; preds = %98
  %140 = load %struct.file_data*, %struct.file_data** %2, align 8
  %141 = getelementptr inbounds %struct.file_data, %struct.file_data* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = add i64 %142, 8
  store i64 %143, i64* %3, align 8
  %144 = load i64, i64* %3, align 8
  %145 = load i64, i64* %3, align 8
  %146 = urem i64 %145, 4
  %147 = sub i64 %144, %146
  %148 = load %struct.file_data*, %struct.file_data** %2, align 8
  %149 = getelementptr inbounds %struct.file_data, %struct.file_data* %148, i32 0, i32 1
  store i64 %147, i64* %149, align 8
  %150 = load %struct.file_data*, %struct.file_data** %2, align 8
  %151 = getelementptr inbounds %struct.file_data, %struct.file_data* %150, i32 0, i32 3
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.file_data*, %struct.file_data** %2, align 8
  %154 = getelementptr inbounds %struct.file_data, %struct.file_data* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = call i8* @xrealloc(i8* %152, i64 %155)
  %157 = load %struct.file_data*, %struct.file_data** %2, align 8
  %158 = getelementptr inbounds %struct.file_data, %struct.file_data* %157, i32 0, i32 3
  store i8* %156, i8** %158, align 8
  br label %159

159:                                              ; preds = %9, %80, %139, %83
  ret void
}

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @xalloc_die(...) #1

declare dso_local i8* @xrealloc(i8*, i64) #1

declare dso_local i32 @file_block_read(%struct.file_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
