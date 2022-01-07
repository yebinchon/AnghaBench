; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_linear.c_init_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/oss/extr_linear.c_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linear_priv = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.linear_priv*, i32, i32)* @init_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_data(%struct.linear_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.linear_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.linear_priv* %0, %struct.linear_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @snd_pcm_format_width(i32 %11)
  %13 = sdiv i32 %12, 8
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @snd_pcm_format_width(i32 %14)
  %16 = sdiv i32 %15, 8
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @snd_pcm_format_little_endian(i32 %17)
  %19 = icmp sgt i64 %18, 0
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @snd_pcm_format_little_endian(i32 %21)
  %23 = icmp sgt i64 %22, 0
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.linear_priv*, %struct.linear_priv** %4, align 8
  %27 = getelementptr inbounds %struct.linear_priv, %struct.linear_priv* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load %struct.linear_priv*, %struct.linear_priv** %4, align 8
  %33 = getelementptr inbounds %struct.linear_priv, %struct.linear_priv* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* %9, align 4
  br label %41

39:                                               ; preds = %3
  %40 = load i32, i32* %10, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = load %struct.linear_priv*, %struct.linear_priv** %4, align 8
  %44 = getelementptr inbounds %struct.linear_priv, %struct.linear_priv* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %41
  %48 = load %struct.linear_priv*, %struct.linear_priv** %4, align 8
  %49 = getelementptr inbounds %struct.linear_priv, %struct.linear_priv* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 4, %50
  %52 = load %struct.linear_priv*, %struct.linear_priv** %4, align 8
  %53 = getelementptr inbounds %struct.linear_priv, %struct.linear_priv* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.linear_priv*, %struct.linear_priv** %4, align 8
  %56 = getelementptr inbounds %struct.linear_priv, %struct.linear_priv* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %54, %57
  %59 = load %struct.linear_priv*, %struct.linear_priv** %4, align 8
  %60 = getelementptr inbounds %struct.linear_priv, %struct.linear_priv* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  br label %69

61:                                               ; preds = %41
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @snd_pcm_format_physical_width(i32 %62)
  %64 = sdiv i32 %63, 8
  %65 = load i32, i32* %9, align 4
  %66 = sub nsw i32 %64, %65
  %67 = load %struct.linear_priv*, %struct.linear_priv** %4, align 8
  %68 = getelementptr inbounds %struct.linear_priv, %struct.linear_priv* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %61, %47
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load %struct.linear_priv*, %struct.linear_priv** %4, align 8
  %74 = getelementptr inbounds %struct.linear_priv, %struct.linear_priv* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 4, %75
  %77 = load %struct.linear_priv*, %struct.linear_priv** %4, align 8
  %78 = getelementptr inbounds %struct.linear_priv, %struct.linear_priv* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  br label %87

79:                                               ; preds = %69
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @snd_pcm_format_physical_width(i32 %80)
  %82 = sdiv i32 %81, 8
  %83 = load i32, i32* %10, align 4
  %84 = sub nsw i32 %82, %83
  %85 = load %struct.linear_priv*, %struct.linear_priv** %4, align 8
  %86 = getelementptr inbounds %struct.linear_priv, %struct.linear_priv* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %79, %72
  %88 = load i32, i32* %5, align 4
  %89 = call i64 @snd_pcm_format_signed(i32 %88)
  %90 = load i32, i32* %6, align 4
  %91 = call i64 @snd_pcm_format_signed(i32 %90)
  %92 = icmp ne i64 %89, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %87
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = call i32 @cpu_to_le32(i32 -2147483648)
  %98 = load %struct.linear_priv*, %struct.linear_priv** %4, align 8
  %99 = getelementptr inbounds %struct.linear_priv, %struct.linear_priv* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 4
  br label %104

100:                                              ; preds = %93
  %101 = call i32 @cpu_to_be32(i32 -2147483648)
  %102 = load %struct.linear_priv*, %struct.linear_priv** %4, align 8
  %103 = getelementptr inbounds %struct.linear_priv, %struct.linear_priv* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %100, %96
  br label %105

105:                                              ; preds = %104, %87
  ret void
}

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i64 @snd_pcm_format_little_endian(i32) #1

declare dso_local i32 @snd_pcm_format_physical_width(i32) #1

declare dso_local i64 @snd_pcm_format_signed(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
