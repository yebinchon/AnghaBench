; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/udlfb/extr_udlfb.c_dlfb_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/udlfb/extr_udlfb.c_dlfb_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.TYPE_2__, %struct.dlfb_data* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.dlfb_data = type { i32 }
%struct.dloarea = type { i64, i64, i64, i64, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32, i64)* @dlfb_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlfb_ioctl(%struct.fb_info* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.dlfb_data*, align 8
  %9 = alloca %struct.dloarea*, align 8
  %10 = alloca i8*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 2
  %13 = load %struct.dlfb_data*, %struct.dlfb_data** %12, align 8
  store %struct.dlfb_data* %13, %struct.dlfb_data** %8, align 8
  store %struct.dloarea* null, %struct.dloarea** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 173
  br i1 %15, label %16, label %31

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %10, align 8
  %19 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %20 = call i32 @dlfb_edid(%struct.dlfb_data* %19)
  %21 = load i8*, i8** %10, align 8
  %22 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %23 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @copy_to_user(i8* %21, i32 %24, i32 128)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load i32, i32* @EFAULT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %179

30:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %179

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 170
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 171
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 172
  br i1 %39, label %40, label %91

40:                                               ; preds = %37, %34, %31
  %41 = load i64, i64* %7, align 8
  %42 = inttoptr i64 %41 to %struct.dloarea*
  store %struct.dloarea* %42, %struct.dloarea** %9, align 8
  %43 = load %struct.dloarea*, %struct.dloarea** %9, align 8
  %44 = getelementptr inbounds %struct.dloarea, %struct.dloarea* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.dloarea*, %struct.dloarea** %9, align 8
  %49 = getelementptr inbounds %struct.dloarea, %struct.dloarea* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %47, %40
  %51 = load %struct.dloarea*, %struct.dloarea** %9, align 8
  %52 = getelementptr inbounds %struct.dloarea, %struct.dloarea* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %55 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %53, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %50
  %60 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %61 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.dloarea*, %struct.dloarea** %9, align 8
  %65 = getelementptr inbounds %struct.dloarea, %struct.dloarea* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %59, %50
  %67 = load %struct.dloarea*, %struct.dloarea** %9, align 8
  %68 = getelementptr inbounds %struct.dloarea, %struct.dloarea* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.dloarea*, %struct.dloarea** %9, align 8
  %73 = getelementptr inbounds %struct.dloarea, %struct.dloarea* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %71, %66
  %75 = load %struct.dloarea*, %struct.dloarea** %9, align 8
  %76 = getelementptr inbounds %struct.dloarea, %struct.dloarea* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %79 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %77, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %74
  %84 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %85 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.dloarea*, %struct.dloarea** %9, align 8
  %89 = getelementptr inbounds %struct.dloarea, %struct.dloarea* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %83, %74
  br label %91

91:                                               ; preds = %90, %37
  %92 = load i32, i32* %6, align 4
  %93 = icmp eq i32 %92, 170
  br i1 %93, label %94, label %112

94:                                               ; preds = %91
  %95 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %96 = load %struct.dloarea*, %struct.dloarea** %9, align 8
  %97 = getelementptr inbounds %struct.dloarea, %struct.dloarea* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.dloarea*, %struct.dloarea** %9, align 8
  %100 = getelementptr inbounds %struct.dloarea, %struct.dloarea* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.dloarea*, %struct.dloarea** %9, align 8
  %103 = getelementptr inbounds %struct.dloarea, %struct.dloarea* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.dloarea*, %struct.dloarea** %9, align 8
  %106 = getelementptr inbounds %struct.dloarea, %struct.dloarea* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %109 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @image_blit(%struct.dlfb_data* %95, i64 %98, i64 %101, i32 %104, i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %94, %91
  %113 = load i32, i32* %6, align 4
  %114 = icmp eq i32 %113, 172
  br i1 %114, label %115, label %137

115:                                              ; preds = %112
  %116 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %117 = call i32 @copyfb(%struct.dlfb_data* %116)
  %118 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %119 = load %struct.dloarea*, %struct.dloarea** %9, align 8
  %120 = getelementptr inbounds %struct.dloarea, %struct.dloarea* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.dloarea*, %struct.dloarea** %9, align 8
  %123 = getelementptr inbounds %struct.dloarea, %struct.dloarea* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.dloarea*, %struct.dloarea** %9, align 8
  %126 = getelementptr inbounds %struct.dloarea, %struct.dloarea* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.dloarea*, %struct.dloarea** %9, align 8
  %129 = getelementptr inbounds %struct.dloarea, %struct.dloarea* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %132 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @image_blit(%struct.dlfb_data* %118, i64 %121, i64 %124, i32 %127, i32 %130, i32 %133)
  %135 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %136 = call i32 @swapfb(%struct.dlfb_data* %135)
  br label %178

137:                                              ; preds = %112
  %138 = load i32, i32* %6, align 4
  %139 = icmp eq i32 %138, 171
  br i1 %139, label %140, label %177

140:                                              ; preds = %137
  %141 = load %struct.dloarea*, %struct.dloarea** %9, align 8
  %142 = getelementptr inbounds %struct.dloarea, %struct.dloarea* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp slt i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load %struct.dloarea*, %struct.dloarea** %9, align 8
  %147 = getelementptr inbounds %struct.dloarea, %struct.dloarea* %146, i32 0, i32 2
  store i64 0, i64* %147, align 8
  br label %148

148:                                              ; preds = %145, %140
  %149 = load %struct.dloarea*, %struct.dloarea** %9, align 8
  %150 = getelementptr inbounds %struct.dloarea, %struct.dloarea* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %148
  %154 = load %struct.dloarea*, %struct.dloarea** %9, align 8
  %155 = getelementptr inbounds %struct.dloarea, %struct.dloarea* %154, i32 0, i32 3
  store i64 0, i64* %155, align 8
  br label %156

156:                                              ; preds = %153, %148
  %157 = load %struct.dlfb_data*, %struct.dlfb_data** %8, align 8
  %158 = load %struct.dloarea*, %struct.dloarea** %9, align 8
  %159 = getelementptr inbounds %struct.dloarea, %struct.dloarea* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.dloarea*, %struct.dloarea** %9, align 8
  %162 = getelementptr inbounds %struct.dloarea, %struct.dloarea* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.dloarea*, %struct.dloarea** %9, align 8
  %165 = getelementptr inbounds %struct.dloarea, %struct.dloarea* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.dloarea*, %struct.dloarea** %9, align 8
  %168 = getelementptr inbounds %struct.dloarea, %struct.dloarea* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.dloarea*, %struct.dloarea** %9, align 8
  %171 = getelementptr inbounds %struct.dloarea, %struct.dloarea* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.dloarea*, %struct.dloarea** %9, align 8
  %174 = getelementptr inbounds %struct.dloarea, %struct.dloarea* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @copyarea(%struct.dlfb_data* %157, i64 %160, i64 %163, i64 %166, i64 %169, i32 %172, i32 %175)
  br label %177

177:                                              ; preds = %156, %137
  br label %178

178:                                              ; preds = %177, %115
  store i32 0, i32* %4, align 4
  br label %179

179:                                              ; preds = %178, %30, %27
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i32 @dlfb_edid(%struct.dlfb_data*) #1

declare dso_local i64 @copy_to_user(i8*, i32, i32) #1

declare dso_local i32 @image_blit(%struct.dlfb_data*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @copyfb(%struct.dlfb_data*) #1

declare dso_local i32 @swapfb(%struct.dlfb_data*) #1

declare dso_local i32 @copyarea(%struct.dlfb_data*, i64, i64, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
