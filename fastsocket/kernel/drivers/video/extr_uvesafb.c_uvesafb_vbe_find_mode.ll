; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_uvesafb.c_uvesafb_vbe_find_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_uvesafb.c_uvesafb_vbe_find_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvesafb_par = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@UVESAFB_EXACT_DEPTH = common dso_local global i8 0, align 1
@UVESAFB_EXACT_RES = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvesafb_par*, i32, i32, i32, i8)* @uvesafb_vbe_find_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvesafb_vbe_find_mode(%struct.uvesafb_par* %0, i32 %1, i32 %2, i32 %3, i8 zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.uvesafb_par*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.uvesafb_par* %0, %struct.uvesafb_par** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8 %4, i8* %11, align 1
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 2147483647, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %85, %5
  %17 = load i32, i32* %12, align 4
  %18 = load %struct.uvesafb_par*, %struct.uvesafb_par** %7, align 8
  %19 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %88

22:                                               ; preds = %16
  %23 = load %struct.uvesafb_par*, %struct.uvesafb_par** %7, align 8
  %24 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %30, %31
  %33 = call i32 @abs(i32 %32) #2
  %34 = load %struct.uvesafb_par*, %struct.uvesafb_par** %7, align 8
  %35 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 %41, %42
  %44 = call i32 @abs(i32 %43) #2
  %45 = add nsw i32 %33, %44
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.uvesafb_par*, %struct.uvesafb_par** %7, align 8
  %48 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %46, %54
  %56 = call i32 @abs(i32 %55) #2
  %57 = add nsw i32 %45, %56
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %22
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %6, align 4
  br label %124

62:                                               ; preds = %22
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %81, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %66
  %71 = load %struct.uvesafb_par*, %struct.uvesafb_par** %7, align 8
  %72 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %70, %62
  %82 = load i32, i32* %14, align 4
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %81, %70, %66
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  br label %16

88:                                               ; preds = %16
  store i32 1, i32* %12, align 4
  %89 = load i8, i8* %11, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8, i8* @UVESAFB_EXACT_DEPTH, align 1
  %92 = zext i8 %91 to i32
  %93 = and i32 %90, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %88
  %96 = load %struct.uvesafb_par*, %struct.uvesafb_par** %7, align 8
  %97 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %95
  store i32 0, i32* %12, align 4
  br label %107

107:                                              ; preds = %106, %95, %88
  %108 = load i8, i8* %11, align 1
  %109 = zext i8 %108 to i32
  %110 = load i8, i8* @UVESAFB_EXACT_RES, align 1
  %111 = zext i8 %110 to i32
  %112 = and i32 %109, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load i32, i32* %15, align 4
  %116 = icmp sgt i32 %115, 24
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 0, i32* %12, align 4
  br label %118

118:                                              ; preds = %117, %114, %107
  %119 = load i32, i32* %12, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load i32, i32* %13, align 4
  store i32 %122, i32* %6, align 4
  br label %124

123:                                              ; preds = %118
  store i32 -1, i32* %6, align 4
  br label %124

124:                                              ; preds = %123, %121, %60
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
