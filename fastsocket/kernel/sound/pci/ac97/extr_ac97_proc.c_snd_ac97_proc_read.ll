; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_proc.c_snd_ac97_proc_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ac97/extr_ac97_proc.c_snd_ac97_proc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_info_entry = type { %struct.snd_ac97* }
%struct.snd_ac97 = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32*, i64* }
%struct.snd_info_buffer = type { i32 }

@AC97_ID_AD1881 = common dso_local global i32 0, align 4
@AC97_AD_SERIAL_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"\0AAD18XX configuration\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Unchained        : 0x%04x,0x%04x,0x%04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Chained          : 0x%04x,0x%04x,0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_info_entry*, %struct.snd_info_buffer*)* @snd_ac97_proc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ac97_proc_read(%struct.snd_info_entry* %0, %struct.snd_info_buffer* %1) #0 {
  %3 = alloca %struct.snd_info_entry*, align 8
  %4 = alloca %struct.snd_info_buffer*, align 8
  %5 = alloca %struct.snd_ac97*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_info_entry* %0, %struct.snd_info_entry** %3, align 8
  store %struct.snd_info_buffer* %1, %struct.snd_info_buffer** %4, align 8
  %7 = load %struct.snd_info_entry*, %struct.snd_info_entry** %3, align 8
  %8 = getelementptr inbounds %struct.snd_info_entry, %struct.snd_info_entry* %7, i32 0, i32 0
  %9 = load %struct.snd_ac97*, %struct.snd_ac97** %8, align 8
  store %struct.snd_ac97* %9, %struct.snd_ac97** %5, align 8
  %10 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %11 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %14 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, -192
  %17 = load i32, i32* @AC97_ID_AD1881, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %119

19:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %64, %19
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %23, label %67

23:                                               ; preds = %20
  %24 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %25 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %63

34:                                               ; preds = %23
  %35 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %36 = load i32, i32* @AC97_AD_SERIAL_CFG, align 4
  %37 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %38 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %47 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %45, %54
  %56 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %35, i32 %36, i32 28672, i32 %55)
  %57 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %58 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @snd_ac97_proc_read_main(%struct.snd_ac97* %57, %struct.snd_info_buffer* %58, i32 %59)
  %61 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %62 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %34, %23
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %20

67:                                               ; preds = %20
  %68 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %69 = load i32, i32* @AC97_AD_SERIAL_CFG, align 4
  %70 = call i32 @snd_ac97_update_bits(%struct.snd_ac97* %68, i32 %69, i32 28672, i32 28672)
  %71 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %72 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %74 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %75 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %82 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %89 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %73, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 %87, i32 %94)
  %96 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %97 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %98 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %105 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %112 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (%struct.snd_info_buffer*, i8*, ...) @snd_iprintf(%struct.snd_info_buffer* %96, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %103, i32 %110, i32 %117)
  br label %123

119:                                              ; preds = %2
  %120 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %121 = load %struct.snd_info_buffer*, %struct.snd_info_buffer** %4, align 8
  %122 = call i32 @snd_ac97_proc_read_main(%struct.snd_ac97* %120, %struct.snd_info_buffer* %121, i32 0)
  br label %123

123:                                              ; preds = %119, %67
  %124 = load %struct.snd_ac97*, %struct.snd_ac97** %5, align 8
  %125 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %124, i32 0, i32 1
  %126 = call i32 @mutex_unlock(i32* %125)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_ac97_update_bits(%struct.snd_ac97*, i32, i32, i32) #1

declare dso_local i32 @snd_ac97_proc_read_main(%struct.snd_ac97*, %struct.snd_info_buffer*, i32) #1

declare dso_local i32 @snd_iprintf(%struct.snd_info_buffer*, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
