; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_mixer.c_pcxhr_iec958_update_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_mixer.c_pcxhr_iec958_update_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcxhr = type { i8*, i32, i32 }
%struct.pcxhr_rmh = type { i32*, i32 }

@CMD_ACCESS_IO_WRITE = common dso_local global i32 0, align 4
@IO_NUM_REG_CUER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"write iec958 AES %d byte %d bit %d (cmd %x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcxhr*, i32, i8)* @pcxhr_iec958_update_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_iec958_update_byte(%struct.snd_pcxhr* %0, i32 %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_pcxhr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca %struct.pcxhr_rmh, align 8
  store %struct.snd_pcxhr* %0, %struct.snd_pcxhr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  %14 = load i8, i8* %7, align 1
  store i8 %14, i8* %11, align 1
  %15 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %16 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %12, align 1
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %97, %3
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 8
  br i1 %24, label %25, label %100

25:                                               ; preds = %22
  %26 = load i8, i8* %12, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 1
  %29 = load i8, i8* %11, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %88

33:                                               ; preds = %25
  %34 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %35 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 3
  store i32 %37, i32* %10, align 4
  %38 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %39 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 3
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %43, 4194304
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %42, %33
  %46 = load i32, i32* %6, align 4
  %47 = shl i32 %46, 3
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %47, %48
  %50 = shl i32 %49, 2
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load i8, i8* %11, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 1
  %56 = shl i32 %55, 23
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* @CMD_ACCESS_IO_WRITE, align 4
  %60 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %13, i32 %59)
  %61 = load i32, i32* @IO_NUM_REG_CUER, align 4
  %62 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %13, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %61
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* %10, align 4
  %68 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %13, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 %67, i32* %70, align 4
  %71 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %13, i32 0, i32 1
  store i32 2, i32* %71, align 8
  %72 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %73 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @snd_printdd(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %75, i32 %76, i32 %77)
  %79 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %80 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @pcxhr_send_msg(i32 %81, %struct.pcxhr_rmh* %13)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %45
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %4, align 4
  br label %108

87:                                               ; preds = %45
  br label %88

88:                                               ; preds = %87, %25
  %89 = load i8, i8* %12, align 1
  %90 = zext i8 %89 to i32
  %91 = ashr i32 %90, 1
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %12, align 1
  %93 = load i8, i8* %11, align 1
  %94 = zext i8 %93 to i32
  %95 = ashr i32 %94, 1
  %96 = trunc i32 %95 to i8
  store i8 %96, i8* %11, align 1
  br label %97

97:                                               ; preds = %88
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %22

100:                                              ; preds = %22
  %101 = load i8, i8* %7, align 1
  %102 = load %struct.snd_pcxhr*, %struct.snd_pcxhr** %5, align 8
  %103 = getelementptr inbounds %struct.snd_pcxhr, %struct.snd_pcxhr* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  store i8 %101, i8* %107, align 1
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %100, %85
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @pcxhr_init_rmh(%struct.pcxhr_rmh*, i32) #1

declare dso_local i32 @snd_printdd(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pcxhr_send_msg(i32, %struct.pcxhr_rmh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
