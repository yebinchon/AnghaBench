; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/isa/opti9xx/extr_miro.c_aci_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/isa/opti9xx/extr_miro.c_aci_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_miro = type { i32 }

@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_miro*, i32, i32, i32)* @aci_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aci_cmd(%struct.snd_miro* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_miro*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_miro* %0, %struct.snd_miro** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %17, align 4
  %19 = load %struct.snd_miro*, %struct.snd_miro** %6, align 8
  %20 = getelementptr inbounds %struct.snd_miro, %struct.snd_miro* %19, i32 0, i32 0
  %21 = call i64 @mutex_lock_interruptible(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINTR, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %66

26:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %55, %26
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %28, 3
  br i1 %29, label %30, label %58

30:                                               ; preds = %27
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp sgt i32 %40, 255
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %30
  br label %58

43:                                               ; preds = %36
  %44 = load %struct.snd_miro*, %struct.snd_miro** %6, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @aci_write(%struct.snd_miro* %44, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %61

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %27

58:                                               ; preds = %42, %27
  %59 = load %struct.snd_miro*, %struct.snd_miro** %6, align 8
  %60 = call i32 @aci_read(%struct.snd_miro* %59)
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %58, %52
  %62 = load %struct.snd_miro*, %struct.snd_miro** %6, align 8
  %63 = getelementptr inbounds %struct.snd_miro, %struct.snd_miro* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %61, %23
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @aci_write(%struct.snd_miro*, i32) #1

declare dso_local i32 @aci_read(%struct.snd_miro*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
