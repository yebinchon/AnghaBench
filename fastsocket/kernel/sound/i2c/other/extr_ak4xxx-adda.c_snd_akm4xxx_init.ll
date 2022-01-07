; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_ak4xxx-adda.c_snd_akm4xxx_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/i2c/other/extr_ak4xxx-adda.c_snd_akm4xxx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_akm4xxx = type { i32, i32, i32, i32 }

@snd_akm4xxx_init.inits_ak4524 = internal constant [20 x i8] c"\00\07\01\00\02`\03\19\01\03\04\00\05\00\06\00\07\00\FF\FF", align 16
@snd_akm4xxx_init.inits_ak4528 = internal constant [16 x i8] c"\00\07\01\00\02`\03\0D\01\03\04\00\05\00\FF\FF", align 16
@snd_akm4xxx_init.inits_ak4529 = internal constant [28 x i8] c"\09\01\0A?\00\0C\01\00\02\FF\03\FF\04\FF\05\FF\06\FF\07\FF\0B\FF\0C\FF\08U\FF\FF", align 16
@snd_akm4xxx_init.inits_ak4355 = internal constant [26 x i8] c"\01\02\00\06\02\0E\03\01\04\00\05\00\06\00\07\00\08\00\09\00\0A\00\01\01\FF\FF", align 16
@snd_akm4xxx_init.inits_ak4358 = internal constant [30 x i8] c"\01\02\00\06\02N\03\01\04\00\05\00\06\00\07\00\08\00\09\00\0B\00\0C\00\0A\00\01\01\FF\FF", align 16
@snd_akm4xxx_init.inits_ak4381 = internal constant [14 x i8] c"\00\0C\01\02\02\00\03\00\04\00\00\0F\FF\FF", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_akm4xxx_init(%struct.snd_akm4xxx* %0) #0 {
  %2 = alloca %struct.snd_akm4xxx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.snd_akm4xxx* %0, %struct.snd_akm4xxx** %2, align 8
  %9 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %10 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @memset(i32 %11, i32 0, i32 4)
  %13 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %14 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @memset(i32 %15, i32 0, i32 4)
  %17 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %18 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %39 [
    i32 131, label %20
    i32 130, label %25
    i32 129, label %30
    i32 134, label %31
    i32 133, label %32
    i32 132, label %33
    i32 128, label %38
  ]

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @snd_akm4xxx_init.inits_ak4524, i64 0, i64 0), i8** %6, align 8
  %21 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %22 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %23, 2
  store i32 %24, i32* %4, align 4
  br label %41

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @snd_akm4xxx_init.inits_ak4528, i64 0, i64 0), i8** %6, align 8
  %26 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %27 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 %28, 2
  store i32 %29, i32* %4, align 4
  br label %41

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @snd_akm4xxx_init.inits_ak4529, i64 0, i64 0), i8** %6, align 8
  store i32 1, i32* %4, align 4
  br label %41

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @snd_akm4xxx_init.inits_ak4355, i64 0, i64 0), i8** %6, align 8
  store i32 1, i32* %4, align 4
  br label %41

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @snd_akm4xxx_init.inits_ak4358, i64 0, i64 0), i8** %6, align 8
  store i32 1, i32* %4, align 4
  br label %41

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @snd_akm4xxx_init.inits_ak4381, i64 0, i64 0), i8** %6, align 8
  %34 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %35 = getelementptr inbounds %struct.snd_akm4xxx, %struct.snd_akm4xxx* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, 2
  store i32 %37, i32* %4, align 4
  br label %41

38:                                               ; preds = %1
  br label %69

39:                                               ; preds = %1
  %40 = call i32 (...) @snd_BUG()
  br label %69

41:                                               ; preds = %33, %32, %31, %30, %25, %20
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %66, %41
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %69

46:                                               ; preds = %42
  %47 = load i8*, i8** %6, align 8
  store i8* %47, i8** %5, align 8
  br label %48

48:                                               ; preds = %53, %46
  %49 = load i8*, i8** %5, align 8
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp ne i32 %51, 255
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %5, align 8
  %56 = load i8, i8* %54, align 1
  store i8 %56, i8* %7, align 1
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %5, align 8
  %59 = load i8, i8* %57, align 1
  store i8 %59, i8* %8, align 1
  %60 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %2, align 8
  %61 = load i32, i32* %3, align 4
  %62 = load i8, i8* %7, align 1
  %63 = load i8, i8* %8, align 1
  %64 = call i32 @snd_akm4xxx_write(%struct.snd_akm4xxx* %60, i32 %61, i8 zeroext %62, i8 zeroext %63)
  br label %48

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %42

69:                                               ; preds = %38, %39, %42
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @snd_akm4xxx_write(%struct.snd_akm4xxx*, i32, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
