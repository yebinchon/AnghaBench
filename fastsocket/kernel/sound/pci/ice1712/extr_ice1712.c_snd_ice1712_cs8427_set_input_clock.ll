; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_cs8427_set_input_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_cs8427_set_input_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ice1712 = type { i32, i32 }

@__const.snd_ice1712_cs8427_set_input_clock.reg = private unnamed_addr constant [2 x i8] c"\84\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*, i32)* @snd_ice1712_cs8427_set_input_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ice1712_cs8427_set_input_clock(%struct.snd_ice1712* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_ice1712*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i8], align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = bitcast [2 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.snd_ice1712_cs8427_set_input_clock.reg, i32 0, i32 0), i64 2, i1 false)
  store i32 0, i32* %9, align 4
  %11 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %12 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @snd_i2c_lock(i32 %13)
  %15 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %16 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %19 = call i32 @snd_i2c_sendbytes(i32 %17, i8* %18, i32 1)
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %23 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @snd_i2c_unlock(i32 %24)
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %86

28:                                               ; preds = %2
  %29 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %30 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @snd_i2c_readbytes(i32 %31, i8* %7, i32 1)
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %36 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @snd_i2c_unlock(i32 %37)
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %86

41:                                               ; preds = %28
  %42 = load i8, i8* %7, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %43, 240
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %8, align 1
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load i8, i8* %8, align 1
  %50 = zext i8 %49 to i32
  %51 = or i32 %50, 1
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %8, align 1
  br label %58

53:                                               ; preds = %41
  %54 = load i8, i8* %8, align 1
  %55 = zext i8 %54 to i32
  %56 = or i32 %55, 4
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %8, align 1
  br label %58

58:                                               ; preds = %53, %48
  %59 = load i8, i8* %7, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8, i8* %8, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %58
  %65 = load i8, i8* %8, align 1
  %66 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  store i8 %65, i8* %66, align 1
  %67 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %68 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %71 = call i32 @snd_i2c_sendbytes(i32 %69, i8* %70, i32 2)
  %72 = icmp ne i32 %71, 2
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %9, align 4
  br label %79

76:                                               ; preds = %64
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %76, %73
  br label %80

80:                                               ; preds = %79, %58
  %81 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %82 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @snd_i2c_unlock(i32 %83)
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %80, %34, %21
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snd_i2c_lock(i32) #2

declare dso_local i32 @snd_i2c_sendbytes(i32, i8*, i32) #2

declare dso_local i32 @snd_i2c_unlock(i32) #2

declare dso_local i32 @snd_i2c_readbytes(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
