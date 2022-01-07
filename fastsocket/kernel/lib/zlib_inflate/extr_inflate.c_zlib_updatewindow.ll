; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/zlib_inflate/extr_inflate.c_zlib_updatewindow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/zlib_inflate/extr_inflate.c_zlib_updatewindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.inflate_state = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32)* @zlib_updatewindow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zlib_updatewindow(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inflate_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.inflate_state*
  store %struct.inflate_state* %11, %struct.inflate_state** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub i32 %12, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %19 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp uge i32 %17, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %2
  %23 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %24 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %30 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = zext i32 %31 to i64
  %33 = sub nsw i64 %28, %32
  %34 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %35 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @memcpy(i64 %25, i64 %33, i32 %36)
  %38 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %39 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %41 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %44 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  br label %132

45:                                               ; preds = %2
  %46 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %47 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %50 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sub i32 %48, %51
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ugt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %56, %45
  %59 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %60 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %63 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = zext i32 %64 to i64
  %66 = add nsw i64 %61, %65
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = zext i32 %70 to i64
  %72 = sub nsw i64 %69, %71
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @memcpy(i64 %66, i64 %72, i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = sub i32 %76, %75
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %100

80:                                               ; preds = %58
  %81 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %82 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = zext i32 %87 to i64
  %89 = sub nsw i64 %86, %88
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @memcpy(i64 %83, i64 %89, i32 %90)
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %94 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %96 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %99 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  br label %131

100:                                              ; preds = %58
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %103 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %107 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %110 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %108, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %100
  %114 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %115 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %114, i32 0, i32 1
  store i32 0, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %100
  %117 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %118 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %121 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ult i32 %119, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %116
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.inflate_state*, %struct.inflate_state** %5, align 8
  %127 = getelementptr inbounds %struct.inflate_state, %struct.inflate_state* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = add i32 %128, %125
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %124, %116
  br label %131

131:                                              ; preds = %130, %80
  br label %132

132:                                              ; preds = %131, %22
  ret void
}

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
