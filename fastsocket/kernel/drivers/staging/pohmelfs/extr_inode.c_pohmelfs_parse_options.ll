; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_inode.c_pohmelfs_parse_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/pohmelfs/extr_inode.c_pohmelfs_parse_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pohmelfs_sb = type { i32, i32, i32, i32, i32, i8*, i8*, i8*, i8* }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@pohmelfs_tokens = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.pohmelfs_sb*, i32)* @pohmelfs_parse_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pohmelfs_parse_options(i8* %0, %struct.pohmelfs_sb* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pohmelfs_sb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.pohmelfs_sb* %1, %struct.pohmelfs_sb** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @MAX_OPT_ARGS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %94

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %92, %47, %30, %22
  %24 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %24, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %93

26:                                               ; preds = %23
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %23

31:                                               ; preds = %26
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* @pohmelfs_tokens, align 4
  %34 = call i32 @match_token(i8* %32, i32 %33, i32* %18)
  store i32 %34, i32* %14, align 4
  %35 = getelementptr inbounds i32, i32* %18, i64 0
  %36 = call i32 @match_int(i32* %35, i32* %11)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %94

41:                                               ; preds = %31
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* %14, align 4
  %46 = icmp sle i32 %45, 136
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %23

48:                                               ; preds = %44, %41
  %49 = load i32, i32* %14, align 4
  switch i32 %49, label %89 [
    i32 133, label %50
    i32 129, label %54
    i32 134, label %59
    i32 128, label %64
    i32 132, label %69
    i32 130, label %74
    i32 135, label %78
    i32 131, label %82
    i32 136, label %86
  ]

50:                                               ; preds = %48
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %6, align 8
  %53 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %92

54:                                               ; preds = %48
  %55 = load i32, i32* %11, align 4
  %56 = call i8* @msecs_to_jiffies(i32 %55)
  %57 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %6, align 8
  %58 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %57, i32 0, i32 8
  store i8* %56, i8** %58, align 8
  br label %92

59:                                               ; preds = %48
  %60 = load i32, i32* %11, align 4
  %61 = call i8* @msecs_to_jiffies(i32 %60)
  %62 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %6, align 8
  %63 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %62, i32 0, i32 7
  store i8* %61, i8** %63, align 8
  br label %92

64:                                               ; preds = %48
  %65 = load i32, i32* %11, align 4
  %66 = call i8* @msecs_to_jiffies(i32 %65)
  %67 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %6, align 8
  %68 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %67, i32 0, i32 6
  store i8* %66, i8** %68, align 8
  br label %92

69:                                               ; preds = %48
  %70 = load i32, i32* %11, align 4
  %71 = call i8* @msecs_to_jiffies(i32 %70)
  %72 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %6, align 8
  %73 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  br label %92

74:                                               ; preds = %48
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %6, align 8
  %77 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %92

78:                                               ; preds = %48
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %6, align 8
  %81 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  br label %92

82:                                               ; preds = %48
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %6, align 8
  %85 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  br label %92

86:                                               ; preds = %48
  %87 = load %struct.pohmelfs_sb*, %struct.pohmelfs_sb** %6, align 8
  %88 = getelementptr inbounds %struct.pohmelfs_sb, %struct.pohmelfs_sb* %87, i32 0, i32 4
  store i32 1, i32* %88, align 8
  br label %92

89:                                               ; preds = %48
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %94

92:                                               ; preds = %86, %82, %78, %74, %69, %64, %59, %54, %50
  br label %23

93:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %94

94:                                               ; preds = %93, %89, %39, %21
  %95 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @match_int(i32*, i32*) #2

declare dso_local i8* @msecs_to_jiffies(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
