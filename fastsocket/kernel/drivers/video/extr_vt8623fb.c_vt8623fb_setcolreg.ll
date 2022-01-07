; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_vt8623fb.c_vt8623fb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_vt8623fb.c_vt8623fb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@VGA_PEL_MSK = common dso_local global i32 0, align 4
@VGA_PEL_IW = common dso_local global i32 0, align 4
@VGA_PEL_D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @vt8623fb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8623fb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %148 [
    i32 0, label %18
    i32 4, label %18
    i32 8, label %42
    i32 16, label %66
    i32 24, label %126
    i32 32, label %126
  ]

18:                                               ; preds = %6, %6
  %19 = load i32, i32* %8, align 4
  %20 = icmp sge i32 %19, 16
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %152

24:                                               ; preds = %18
  %25 = load i32, i32* @VGA_PEL_MSK, align 4
  %26 = call i32 @outb(i32 15, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @VGA_PEL_IW, align 4
  %29 = call i32 @outb(i32 %27, i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = ashr i32 %30, 10
  %32 = load i32, i32* @VGA_PEL_D, align 4
  %33 = call i32 @outb(i32 %31, i32 %32)
  %34 = load i32, i32* %10, align 4
  %35 = ashr i32 %34, 10
  %36 = load i32, i32* @VGA_PEL_D, align 4
  %37 = call i32 @outb(i32 %35, i32 %36)
  %38 = load i32, i32* %11, align 4
  %39 = ashr i32 %38, 10
  %40 = load i32, i32* @VGA_PEL_D, align 4
  %41 = call i32 @outb(i32 %39, i32 %40)
  br label %151

42:                                               ; preds = %6
  %43 = load i32, i32* %8, align 4
  %44 = icmp sge i32 %43, 256
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %152

48:                                               ; preds = %42
  %49 = load i32, i32* @VGA_PEL_MSK, align 4
  %50 = call i32 @outb(i32 255, i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @VGA_PEL_IW, align 4
  %53 = call i32 @outb(i32 %51, i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = ashr i32 %54, 10
  %56 = load i32, i32* @VGA_PEL_D, align 4
  %57 = call i32 @outb(i32 %55, i32 %56)
  %58 = load i32, i32* %10, align 4
  %59 = ashr i32 %58, 10
  %60 = load i32, i32* @VGA_PEL_D, align 4
  %61 = call i32 @outb(i32 %59, i32 %60)
  %62 = load i32, i32* %11, align 4
  %63 = ashr i32 %62, 10
  %64 = load i32, i32* @VGA_PEL_D, align 4
  %65 = call i32 @outb(i32 %63, i32 %64)
  br label %151

66:                                               ; preds = %6
  %67 = load i32, i32* %8, align 4
  %68 = icmp sge i32 %67, 16
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 0, i32* %7, align 4
  br label %152

70:                                               ; preds = %66
  %71 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %72 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 5
  br i1 %76, label %77, label %96

77:                                               ; preds = %70
  %78 = load i32, i32* %9, align 4
  %79 = and i32 %78, 63488
  %80 = ashr i32 %79, 1
  %81 = load i32, i32* %10, align 4
  %82 = and i32 %81, 63488
  %83 = ashr i32 %82, 6
  %84 = or i32 %80, %83
  %85 = load i32, i32* %11, align 4
  %86 = and i32 %85, 63488
  %87 = ashr i32 %86, 11
  %88 = or i32 %84, %87
  %89 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %90 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i32*
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %88, i32* %95, align 4
  br label %125

96:                                               ; preds = %70
  %97 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %98 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 6
  br i1 %102, label %103, label %121

103:                                              ; preds = %96
  %104 = load i32, i32* %9, align 4
  %105 = and i32 %104, 63488
  %106 = load i32, i32* %10, align 4
  %107 = and i32 %106, 64512
  %108 = ashr i32 %107, 5
  %109 = or i32 %105, %108
  %110 = load i32, i32* %11, align 4
  %111 = and i32 %110, 63488
  %112 = ashr i32 %111, 11
  %113 = or i32 %109, %112
  %114 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %115 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to i32*
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %113, i32* %120, align 4
  br label %124

121:                                              ; preds = %96
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %7, align 4
  br label %152

124:                                              ; preds = %103
  br label %125

125:                                              ; preds = %124, %77
  br label %151

126:                                              ; preds = %6, %6
  %127 = load i32, i32* %8, align 4
  %128 = icmp sge i32 %127, 16
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 0, i32* %7, align 4
  br label %152

130:                                              ; preds = %126
  %131 = load i32, i32* %9, align 4
  %132 = and i32 %131, 65280
  %133 = shl i32 %132, 8
  %134 = load i32, i32* %10, align 4
  %135 = and i32 %134, 65280
  %136 = or i32 %133, %135
  %137 = load i32, i32* %11, align 4
  %138 = and i32 %137, 65280
  %139 = ashr i32 %138, 8
  %140 = or i32 %136, %139
  %141 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %142 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to i32*
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %140, i32* %147, align 4
  br label %151

148:                                              ; preds = %6
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %7, align 4
  br label %152

151:                                              ; preds = %130, %125, %48, %24
  store i32 0, i32* %7, align 4
  br label %152

152:                                              ; preds = %151, %148, %129, %121, %69, %45, %21
  %153 = load i32, i32* %7, align 4
  ret i32 %153
}

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
