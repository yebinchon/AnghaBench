; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tgafb.c_tgafb_copyarea.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tgafb.c_tgafb_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.fb_copyarea = type { i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_copyarea*)* @tgafb_copyarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tgafb_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %15 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %16 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  %18 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %19 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %6, align 8
  %21 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %22 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %25 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  %27 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %28 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %9, align 8
  %30 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %31 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %10, align 8
  %33 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %11, align 8
  %37 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %12, align 8
  %41 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %42 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %11, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %60, label %48

48:                                               ; preds = %2
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %11, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %12, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %12, align 8
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %52, %48, %2
  br label %167

61:                                               ; preds = %56
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %7, align 8
  %64 = add i64 %62, %63
  %65 = load i64, i64* %11, align 8
  %66 = icmp ugt i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* %5, align 8
  %70 = sub i64 %68, %69
  store i64 %70, i64* %7, align 8
  br label %71

71:                                               ; preds = %67, %61
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %72, %73
  %75 = load i64, i64* %12, align 8
  %76 = icmp ugt i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %6, align 8
  %80 = sub i64 %78, %79
  store i64 %80, i64* %8, align 8
  br label %81

81:                                               ; preds = %77, %71
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %7, align 8
  %84 = add i64 %82, %83
  %85 = load i64, i64* %11, align 8
  %86 = icmp ugt i64 %84, %85
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* %8, align 8
  %90 = add i64 %88, %89
  %91 = load i64, i64* %12, align 8
  %92 = icmp ugt i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %87, %81
  br label %167

94:                                               ; preds = %87
  %95 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %96 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %14, align 8
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* %14, align 8
  %101 = lshr i64 %100, 3
  %102 = mul i64 %99, %101
  %103 = load i64, i64* %13, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %123

105:                                              ; preds = %94
  %106 = load i64, i64* %14, align 8
  %107 = icmp eq i64 %106, 8
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* %10, align 8
  %112 = load i64, i64* %8, align 8
  %113 = load i64, i64* %7, align 8
  %114 = call i32 @copyarea_line_8bpp(%struct.fb_info* %109, i64 %110, i64 %111, i64 %112, i64 %113)
  br label %122

115:                                              ; preds = %105
  %116 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* %10, align 8
  %119 = load i64, i64* %8, align 8
  %120 = load i64, i64* %7, align 8
  %121 = call i32 @copyarea_line_32bpp(%struct.fb_info* %116, i64 %117, i64 %118, i64 %119, i64 %120)
  br label %122

122:                                              ; preds = %115, %108
  br label %167

123:                                              ; preds = %94
  %124 = load i64, i64* %14, align 8
  %125 = icmp eq i64 %124, 32
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %128 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %129 = call i32 @cfb_copyarea(%struct.fb_info* %127, %struct.fb_copyarea* %128)
  br label %166

130:                                              ; preds = %123
  %131 = load i64, i64* %6, align 8
  %132 = load i64, i64* %10, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %155

134:                                              ; preds = %130
  %135 = load i64, i64* %5, align 8
  %136 = load i64, i64* %9, align 8
  %137 = icmp ugt i64 %135, %136
  br i1 %137, label %138, label %155

138:                                              ; preds = %134
  %139 = load i64, i64* %5, align 8
  %140 = load i64, i64* %9, align 8
  %141 = load i64, i64* %7, align 8
  %142 = add i64 %140, %141
  %143 = icmp ult i64 %139, %142
  br i1 %143, label %144, label %155

144:                                              ; preds = %138
  %145 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %146 = load i64, i64* %5, align 8
  %147 = load i64, i64* %6, align 8
  %148 = load i64, i64* %9, align 8
  %149 = load i64, i64* %10, align 8
  %150 = load i64, i64* %8, align 8
  %151 = load i64, i64* %7, align 8
  %152 = load i64, i64* %13, align 8
  %153 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %154 = call i32 @copyarea_backward_8bpp(%struct.fb_info* %145, i64 %146, i64 %147, i64 %148, i64 %149, i64 %150, i64 %151, i64 %152, %struct.fb_copyarea* %153)
  br label %165

155:                                              ; preds = %138, %134, %130
  %156 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %157 = load i64, i64* %5, align 8
  %158 = load i64, i64* %6, align 8
  %159 = load i64, i64* %9, align 8
  %160 = load i64, i64* %10, align 8
  %161 = load i64, i64* %8, align 8
  %162 = load i64, i64* %7, align 8
  %163 = load i64, i64* %13, align 8
  %164 = call i32 @copyarea_foreward_8bpp(%struct.fb_info* %156, i64 %157, i64 %158, i64 %159, i64 %160, i64 %161, i64 %162, i64 %163)
  br label %165

165:                                              ; preds = %155, %144
  br label %166

166:                                              ; preds = %165, %126
  br label %167

167:                                              ; preds = %60, %93, %166, %122
  ret void
}

declare dso_local i32 @copyarea_line_8bpp(%struct.fb_info*, i64, i64, i64, i64) #1

declare dso_local i32 @copyarea_line_32bpp(%struct.fb_info*, i64, i64, i64, i64) #1

declare dso_local i32 @cfb_copyarea(%struct.fb_info*, %struct.fb_copyarea*) #1

declare dso_local i32 @copyarea_backward_8bpp(%struct.fb_info*, i64, i64, i64, i64, i64, i64, i64, %struct.fb_copyarea*) #1

declare dso_local i32 @copyarea_foreward_8bpp(%struct.fb_info*, i64, i64, i64, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
