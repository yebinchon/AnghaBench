; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_sticon.c_sticon_getxy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_sticon.c_sticon_getxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64, i64, i64, i64 }

@fg_console = common dso_local global i64 0, align 8
@softback_lines = common dso_local global i64 0, align 8
@softback_curr = common dso_local global i64 0, align 8
@softback_end = common dso_local global i64 0, align 8
@softback_buf = common dso_local global i64 0, align 8
@softback_in = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vc_data*, i64, i32*, i32*)* @sticon_getxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sticon_getxy(%struct.vc_data* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.vc_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.vc_data* %0, %struct.vc_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %16 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp uge i64 %14, %17
  br i1 %18, label %19, label %65

19:                                               ; preds = %4
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %22 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %65

25:                                               ; preds = %19
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %28 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %26, %29
  %31 = udiv i64 %30, 2
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = urem i64 %32, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load i64, i64* %12, align 8
  %39 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %40 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = udiv i64 %38, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %10, align 4
  %44 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %45 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @fg_console, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %25
  %50 = load i64, i64* @softback_lines, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %49, %25
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %58 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = sub i64 %59, %61
  %63 = mul i64 %62, 2
  %64 = add i64 %56, %63
  store i64 %64, i64* %11, align 8
  br label %130

65:                                               ; preds = %19, %4
  %66 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %67 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @fg_console, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %125

71:                                               ; preds = %65
  %72 = load i64, i64* @softback_lines, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %125

74:                                               ; preds = %71
  %75 = load i64, i64* %6, align 8
  %76 = load i64, i64* @softback_curr, align 8
  %77 = sub i64 %75, %76
  store i64 %77, i64* %13, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @softback_curr, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load i64, i64* @softback_end, align 8
  %83 = load i64, i64* @softback_buf, align 8
  %84 = sub i64 %82, %83
  %85 = load i64, i64* %13, align 8
  %86 = add i64 %85, %84
  store i64 %86, i64* %13, align 8
  br label %87

87:                                               ; preds = %81, %74
  %88 = load i64, i64* %13, align 8
  %89 = udiv i64 %88, 2
  store i64 %89, i64* %13, align 8
  %90 = load i64, i64* %13, align 8
  %91 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %92 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = urem i64 %90, %93
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %9, align 4
  %96 = load i64, i64* %13, align 8
  %97 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %98 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = udiv i64 %96, %99
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %10, align 4
  %102 = load i64, i64* %6, align 8
  %103 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %104 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = sub i64 %105, %107
  %109 = mul i64 %108, 2
  %110 = add i64 %102, %109
  store i64 %110, i64* %11, align 8
  %111 = load i64, i64* %11, align 8
  %112 = load i64, i64* @softback_end, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %87
  %115 = load i64, i64* @softback_buf, align 8
  store i64 %115, i64* %11, align 8
  br label %116

116:                                              ; preds = %114, %87
  %117 = load i64, i64* %11, align 8
  %118 = load i64, i64* @softback_in, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %122 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %11, align 8
  br label %124

124:                                              ; preds = %120, %116
  br label %129

125:                                              ; preds = %71, %65
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %126 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %127 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %11, align 8
  br label %129

129:                                              ; preds = %125, %124
  br label %130

130:                                              ; preds = %129, %55
  %131 = load i32*, i32** %7, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32, i32* %9, align 4
  %135 = load i32*, i32** %7, align 8
  store i32 %134, i32* %135, align 4
  br label %136

136:                                              ; preds = %133, %130
  %137 = load i32*, i32** %8, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* %10, align 4
  %141 = load i32*, i32** %8, align 8
  store i32 %140, i32* %141, align 4
  br label %142

142:                                              ; preds = %139, %136
  %143 = load i64, i64* %11, align 8
  ret i64 %143
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
