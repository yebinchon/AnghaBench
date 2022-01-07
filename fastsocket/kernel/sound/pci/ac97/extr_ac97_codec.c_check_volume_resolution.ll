; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_check_volume_resolution.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_codec.c_check_volume_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { %struct.snd_ac97_res_table* }
%struct.snd_ac97_res_table = type { i32, i32 }

@__const.check_volume_resolution.cbit = private unnamed_addr constant [3 x i16] [i16 32, i16 16, i16 1], align 2
@__const.check_volume_resolution.max = private unnamed_addr constant [3 x i8] c"?\1F\0F", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ac97*, i32, i8*, i8*)* @check_volume_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_volume_resolution(%struct.snd_ac97* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.snd_ac97*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [3 x i16], align 2
  %10 = alloca [3 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_ac97_res_table*, align 8
  %13 = alloca i16, align 2
  store %struct.snd_ac97* %0, %struct.snd_ac97** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = bitcast [3 x i16]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %14, i8* align 2 bitcast ([3 x i16]* @__const.check_volume_resolution.cbit to i8*), i64 6, i1 false)
  %15 = bitcast [3 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.check_volume_resolution.max, i32 0, i32 0), i64 3, i1 false)
  %16 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %17 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %16, i32 0, i32 0
  %18 = load %struct.snd_ac97_res_table*, %struct.snd_ac97_res_table** %17, align 8
  %19 = icmp ne %struct.snd_ac97_res_table* %18, null
  br i1 %19, label %20, label %54

20:                                               ; preds = %4
  %21 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %22 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %21, i32 0, i32 0
  %23 = load %struct.snd_ac97_res_table*, %struct.snd_ac97_res_table** %22, align 8
  store %struct.snd_ac97_res_table* %23, %struct.snd_ac97_res_table** %12, align 8
  br label %24

24:                                               ; preds = %50, %20
  %25 = load %struct.snd_ac97_res_table*, %struct.snd_ac97_res_table** %12, align 8
  %26 = getelementptr inbounds %struct.snd_ac97_res_table, %struct.snd_ac97_res_table* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %24
  %30 = load %struct.snd_ac97_res_table*, %struct.snd_ac97_res_table** %12, align 8
  %31 = getelementptr inbounds %struct.snd_ac97_res_table, %struct.snd_ac97_res_table* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = load %struct.snd_ac97_res_table*, %struct.snd_ac97_res_table** %12, align 8
  %37 = getelementptr inbounds %struct.snd_ac97_res_table, %struct.snd_ac97_res_table* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 255
  %40 = trunc i32 %39 to i8
  %41 = load i8*, i8** %7, align 8
  store i8 %40, i8* %41, align 1
  %42 = load %struct.snd_ac97_res_table*, %struct.snd_ac97_res_table** %12, align 8
  %43 = getelementptr inbounds %struct.snd_ac97_res_table, %struct.snd_ac97_res_table* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 8
  %46 = and i32 %45, 255
  %47 = trunc i32 %46 to i8
  %48 = load i8*, i8** %8, align 8
  store i8 %47, i8* %48, align 1
  br label %140

49:                                               ; preds = %29
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.snd_ac97_res_table*, %struct.snd_ac97_res_table** %12, align 8
  %52 = getelementptr inbounds %struct.snd_ac97_res_table, %struct.snd_ac97_res_table* %51, i32 1
  store %struct.snd_ac97_res_table* %52, %struct.snd_ac97_res_table** %12, align 8
  br label %24

53:                                               ; preds = %24
  br label %54

54:                                               ; preds = %53, %4
  %55 = load i8*, i8** %8, align 8
  store i8 0, i8* %55, align 1
  %56 = load i8*, i8** %7, align 8
  store i8 0, i8* %56, align 1
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %137, %54
  %58 = load i32, i32* %11, align 4
  %59 = getelementptr inbounds [3 x i16], [3 x i16]* %9, i64 0, i64 0
  %60 = call i32 @ARRAY_SIZE(i16* %59)
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %140

62:                                               ; preds = %57
  %63 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [3 x i16], [3 x i16]* %9, i64 0, i64 %66
  %68 = load i16, i16* %67, align 2
  %69 = zext i16 %68 to i32
  %70 = or i32 32896, %69
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [3 x i16], [3 x i16]* %9, i64 0, i64 %72
  %74 = load i16, i16* %73, align 2
  %75 = zext i16 %74 to i32
  %76 = shl i32 %75, 8
  %77 = or i32 %70, %76
  %78 = call i32 @snd_ac97_write(%struct.snd_ac97* %63, i32 %64, i32 %77)
  %79 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call zeroext i16 @snd_ac97_read(%struct.snd_ac97* %79, i32 %80)
  store i16 %81, i16* %13, align 2
  %82 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call zeroext i16 @snd_ac97_read(%struct.snd_ac97* %82, i32 %83)
  store i16 %84, i16* %13, align 2
  %85 = load i8*, i8** %7, align 8
  %86 = load i8, i8* %85, align 1
  %87 = icmp ne i8 %86, 0
  br i1 %87, label %104, label %88

88:                                               ; preds = %62
  %89 = load i16, i16* %13, align 2
  %90 = zext i16 %89 to i32
  %91 = and i32 %90, 127
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [3 x i16], [3 x i16]* %9, i64 0, i64 %93
  %95 = load i16, i16* %94, align 2
  %96 = zext i16 %95 to i32
  %97 = icmp eq i32 %91, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %88
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = load i8*, i8** %7, align 8
  store i8 %102, i8* %103, align 1
  br label %104

104:                                              ; preds = %98, %88, %62
  %105 = load i8*, i8** %8, align 8
  %106 = load i8, i8* %105, align 1
  %107 = icmp ne i8 %106, 0
  br i1 %107, label %125, label %108

108:                                              ; preds = %104
  %109 = load i16, i16* %13, align 2
  %110 = zext i16 %109 to i32
  %111 = ashr i32 %110, 8
  %112 = and i32 %111, 127
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [3 x i16], [3 x i16]* %9, i64 0, i64 %114
  %116 = load i16, i16* %115, align 2
  %117 = zext i16 %116 to i32
  %118 = icmp eq i32 %112, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %108
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = load i8*, i8** %8, align 8
  store i8 %123, i8* %124, align 1
  br label %125

125:                                              ; preds = %119, %108, %104
  %126 = load i8*, i8** %7, align 8
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load i8*, i8** %8, align 8
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %140

136:                                              ; preds = %130, %125
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %11, align 4
  br label %57

140:                                              ; preds = %35, %135, %57
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i16*) #2

declare dso_local i32 @snd_ac97_write(%struct.snd_ac97*, i32, i32) #2

declare dso_local zeroext i16 @snd_ac97_read(%struct.snd_ac97*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
