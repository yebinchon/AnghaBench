; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init.c_SiS_SearchModeID.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init.c_SiS_SearchModeID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i8, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i16 }
%struct.TYPE_3__ = type { i16 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SiS_SearchModeID(%struct.SiS_Private* %0, i16* %1, i16* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.SiS_Private*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i8, align 1
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16* %1, i16** %6, align 8
  store i16* %2, i16** %7, align 8
  %9 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %10 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %9, i32 0, i32 0
  %11 = load i8, i8* %10, align 8
  store i8 %11, i8* %8, align 1
  %12 = load i16*, i16** %6, align 8
  %13 = load i16, i16* %12, align 2
  %14 = zext i16 %13 to i32
  %15 = icmp sle i32 %14, 19
  br i1 %15, label %16, label %103

16:                                               ; preds = %3
  %17 = load i16*, i16** %6, align 8
  %18 = load i16, i16* %17, align 2
  %19 = zext i16 %18 to i32
  %20 = icmp sle i32 %19, 5
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i16*, i16** %6, align 8
  %23 = load i16, i16* %22, align 2
  %24 = zext i16 %23 to i32
  %25 = or i32 %24, 1
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %22, align 2
  br label %27

27:                                               ; preds = %21, %16
  %28 = load i16*, i16** %7, align 8
  store i16 0, i16* %28, align 2
  br label %29

29:                                               ; preds = %59, %27
  %30 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %31 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i16*, i16** %7, align 8
  %34 = load i16, i16* %33, align 2
  %35 = zext i16 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i16, i16* %37, align 2
  %39 = zext i16 %38 to i32
  %40 = load i16*, i16** %6, align 8
  %41 = load i16, i16* %40, align 2
  %42 = zext i16 %41 to i32
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %29
  br label %63

45:                                               ; preds = %29
  %46 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %47 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i16*, i16** %7, align 8
  %50 = load i16, i16* %49, align 2
  %51 = zext i16 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i16, i16* %53, align 2
  %55 = zext i16 %54 to i32
  %56 = icmp eq i32 %55, 255
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %141

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58
  %60 = load i16*, i16** %7, align 8
  %61 = load i16, i16* %60, align 2
  %62 = add i16 %61, 1
  store i16 %62, i16* %60, align 2
  br label %29

63:                                               ; preds = %44
  %64 = load i16*, i16** %6, align 8
  %65 = load i16, i16* %64, align 2
  %66 = zext i16 %65 to i32
  %67 = icmp eq i32 %66, 7
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load i8, i8* %8, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %70, 16
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i16*, i16** %7, align 8
  %75 = load i16, i16* %74, align 2
  %76 = add i16 %75, 1
  store i16 %76, i16* %74, align 2
  br label %77

77:                                               ; preds = %73, %68
  br label %78

78:                                               ; preds = %77, %63
  %79 = load i16*, i16** %6, align 8
  %80 = load i16, i16* %79, align 2
  %81 = zext i16 %80 to i32
  %82 = icmp sle i32 %81, 3
  br i1 %82, label %83, label %102

83:                                               ; preds = %78
  %84 = load i8, i8* %8, align 1
  %85 = zext i8 %84 to i32
  %86 = and i32 %85, 128
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %83
  %89 = load i16*, i16** %7, align 8
  %90 = load i16, i16* %89, align 2
  %91 = add i16 %90, 1
  store i16 %91, i16* %89, align 2
  br label %92

92:                                               ; preds = %88, %83
  %93 = load i8, i8* %8, align 1
  %94 = zext i8 %93 to i32
  %95 = and i32 %94, 16
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i16*, i16** %7, align 8
  %99 = load i16, i16* %98, align 2
  %100 = add i16 %99, 1
  store i16 %100, i16* %98, align 2
  br label %101

101:                                              ; preds = %97, %92
  br label %102

102:                                              ; preds = %101, %78
  br label %140

103:                                              ; preds = %3
  %104 = load i16*, i16** %7, align 8
  store i16 0, i16* %104, align 2
  br label %105

105:                                              ; preds = %135, %103
  %106 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %107 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i16*, i16** %7, align 8
  %110 = load i16, i16* %109, align 2
  %111 = zext i16 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i16, i16* %113, align 2
  %115 = zext i16 %114 to i32
  %116 = load i16*, i16** %6, align 8
  %117 = load i16, i16* %116, align 2
  %118 = zext i16 %117 to i32
  %119 = icmp eq i32 %115, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %105
  br label %139

121:                                              ; preds = %105
  %122 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %123 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %122, i32 0, i32 1
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load i16*, i16** %7, align 8
  %126 = load i16, i16* %125, align 2
  %127 = zext i16 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i16, i16* %129, align 2
  %131 = zext i16 %130 to i32
  %132 = icmp eq i32 %131, 255
  br i1 %132, label %133, label %134

133:                                              ; preds = %121
  store i32 0, i32* %4, align 4
  br label %141

134:                                              ; preds = %121
  br label %135

135:                                              ; preds = %134
  %136 = load i16*, i16** %7, align 8
  %137 = load i16, i16* %136, align 2
  %138 = add i16 %137, 1
  store i16 %138, i16* %136, align 2
  br label %105

139:                                              ; preds = %120
  br label %140

140:                                              ; preds = %139, %102
  store i32 1, i32* %4, align 4
  br label %141

141:                                              ; preds = %140, %133, %57
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
