; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_write_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_write_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_handle = type { i32 }
%struct.debug_write_fns = type { i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)*, i32 (i8*, i32, i32, i32)*, i32 (i8*, i32)*, i32 (i8*, i32)* }
%struct.debug_name = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.debug_handle*, %struct.debug_write_fns*, i8*, %struct.debug_name*)* @debug_write_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_write_name(%struct.debug_handle* %0, %struct.debug_write_fns* %1, i8* %2, %struct.debug_name* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.debug_handle*, align 8
  %7 = alloca %struct.debug_write_fns*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.debug_name*, align 8
  store %struct.debug_handle* %0, %struct.debug_handle** %6, align 8
  store %struct.debug_write_fns* %1, %struct.debug_write_fns** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.debug_name* %3, %struct.debug_name** %9, align 8
  %10 = load %struct.debug_name*, %struct.debug_name** %9, align 8
  %11 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %165 [
    i32 130, label %13
    i32 131, label %38
    i32 128, label %60
    i32 133, label %95
    i32 132, label %110
    i32 134, label %123
    i32 129, label %136
  ]

13:                                               ; preds = %4
  %14 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %15 = load %struct.debug_write_fns*, %struct.debug_write_fns** %7, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load %struct.debug_name*, %struct.debug_name** %9, align 8
  %18 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.debug_name*, %struct.debug_name** %9, align 8
  %22 = call i32 @debug_write_type(%struct.debug_handle* %14, %struct.debug_write_fns* %15, i8* %16, i32 %20, %struct.debug_name* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %13
  %25 = load %struct.debug_write_fns*, %struct.debug_write_fns** %7, align 8
  %26 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %25, i32 0, i32 5
  %27 = load i32 (i8*, i32)*, i32 (i8*, i32)** %26, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.debug_name*, %struct.debug_name** %9, align 8
  %30 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %27(i8* %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %24, %13
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %5, align 4
  br label %167

36:                                               ; preds = %24
  %37 = load i32, i32* @TRUE, align 4
  store i32 %37, i32* %5, align 4
  br label %167

38:                                               ; preds = %4
  %39 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %40 = load %struct.debug_write_fns*, %struct.debug_write_fns** %7, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load %struct.debug_name*, %struct.debug_name** %9, align 8
  %43 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.debug_name*, %struct.debug_name** %9, align 8
  %47 = call i32 @debug_write_type(%struct.debug_handle* %39, %struct.debug_write_fns* %40, i8* %41, i32 %45, %struct.debug_name* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %38
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %5, align 4
  br label %167

51:                                               ; preds = %38
  %52 = load %struct.debug_write_fns*, %struct.debug_write_fns** %7, align 8
  %53 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %52, i32 0, i32 4
  %54 = load i32 (i8*, i32)*, i32 (i8*, i32)** %53, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load %struct.debug_name*, %struct.debug_name** %9, align 8
  %57 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 %54(i8* %55, i32 %58)
  store i32 %59, i32* %5, align 4
  br label %167

60:                                               ; preds = %4
  %61 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %62 = load %struct.debug_write_fns*, %struct.debug_write_fns** %7, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load %struct.debug_name*, %struct.debug_name** %9, align 8
  %65 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @debug_write_type(%struct.debug_handle* %61, %struct.debug_write_fns* %62, i8* %63, i32 %69, %struct.debug_name* null)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %60
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %5, align 4
  br label %167

74:                                               ; preds = %60
  %75 = load %struct.debug_write_fns*, %struct.debug_write_fns** %7, align 8
  %76 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %75, i32 0, i32 3
  %77 = load i32 (i8*, i32, i32, i32)*, i32 (i8*, i32, i32, i32)** %76, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load %struct.debug_name*, %struct.debug_name** %9, align 8
  %80 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.debug_name*, %struct.debug_name** %9, align 8
  %83 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.debug_name*, %struct.debug_name** %9, align 8
  %89 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 %77(i8* %78, i32 %81, i32 %87, i32 %93)
  store i32 %94, i32* %5, align 4
  br label %167

95:                                               ; preds = %4
  %96 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %97 = load %struct.debug_write_fns*, %struct.debug_write_fns** %7, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load %struct.debug_name*, %struct.debug_name** %9, align 8
  %100 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.debug_name*, %struct.debug_name** %9, align 8
  %103 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.debug_name*, %struct.debug_name** %9, align 8
  %106 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @debug_write_function(%struct.debug_handle* %96, %struct.debug_write_fns* %97, i8* %98, i32 %101, i32 %104, i32 %108)
  store i32 %109, i32* %5, align 4
  br label %167

110:                                              ; preds = %4
  %111 = load %struct.debug_write_fns*, %struct.debug_write_fns** %7, align 8
  %112 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %111, i32 0, i32 2
  %113 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %112, align 8
  %114 = load i8*, i8** %8, align 8
  %115 = load %struct.debug_name*, %struct.debug_name** %9, align 8
  %116 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.debug_name*, %struct.debug_name** %9, align 8
  %119 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 %113(i8* %114, i32 %117, i32 %121)
  store i32 %122, i32* %5, align 4
  br label %167

123:                                              ; preds = %4
  %124 = load %struct.debug_write_fns*, %struct.debug_write_fns** %7, align 8
  %125 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %124, i32 0, i32 1
  %126 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %125, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = load %struct.debug_name*, %struct.debug_name** %9, align 8
  %129 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.debug_name*, %struct.debug_name** %9, align 8
  %132 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 %126(i8* %127, i32 %130, i32 %134)
  store i32 %135, i32* %5, align 4
  br label %167

136:                                              ; preds = %4
  %137 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %138 = load %struct.debug_write_fns*, %struct.debug_write_fns** %7, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = load %struct.debug_name*, %struct.debug_name** %9, align 8
  %141 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @debug_write_type(%struct.debug_handle* %137, %struct.debug_write_fns* %138, i8* %139, i32 %145, %struct.debug_name* null)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %136
  %149 = load i32, i32* @FALSE, align 4
  store i32 %149, i32* %5, align 4
  br label %167

150:                                              ; preds = %136
  %151 = load %struct.debug_write_fns*, %struct.debug_write_fns** %7, align 8
  %152 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %151, i32 0, i32 0
  %153 = load i32 (i8*, i32, i32)*, i32 (i8*, i32, i32)** %152, align 8
  %154 = load i8*, i8** %8, align 8
  %155 = load %struct.debug_name*, %struct.debug_name** %9, align 8
  %156 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.debug_name*, %struct.debug_name** %9, align 8
  %159 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 %153(i8* %154, i32 %157, i32 %163)
  store i32 %164, i32* %5, align 4
  br label %167

165:                                              ; preds = %4
  %166 = call i32 (...) @abort() #3
  unreachable

167:                                              ; preds = %150, %148, %123, %110, %95, %74, %72, %51, %49, %36, %34
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i32 @debug_write_type(%struct.debug_handle*, %struct.debug_write_fns*, i8*, i32, %struct.debug_name*) #1

declare dso_local i32 @debug_write_function(%struct.debug_handle*, %struct.debug_write_fns*, i8*, i32, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
