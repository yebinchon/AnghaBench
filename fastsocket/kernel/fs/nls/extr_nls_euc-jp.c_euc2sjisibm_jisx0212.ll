; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nls/extr_nls_euc-jp.c_euc2sjisibm_jisx0212.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nls/extr_nls_euc-jp.c_euc2sjisibm_jisx0212.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i16, i8* }

@euc2sjisibm_jisx0212_map = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8, i8)* @euc2sjisibm_jisx0212 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @euc2sjisibm_jisx0212(i8* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  store i8* %0, i8** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i32 0, i32* %9, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @euc2sjisibm_jisx0212_map, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %12)
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %10, align 4
  %15 = load i8, i8* %6, align 1
  %16 = zext i8 %15 to i32
  %17 = shl i32 %16, 8
  %18 = load i8, i8* %7, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %17, %19
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %11, align 2
  br label %22

22:                                               ; preds = %79, %3
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %80

26:                                               ; preds = %22
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %27, %28
  %30 = sdiv i32 %29, 2
  store i32 %30, i32* %8, align 4
  %31 = load i16, i16* %11, align 2
  %32 = zext i16 %31 to i32
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @euc2sjisibm_jisx0212_map, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i16, i16* %37, align 8
  %39 = zext i16 %38 to i32
  %40 = icmp slt i32 %32, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %26
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %47

44:                                               ; preds = %26
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i16, i16* %11, align 2
  %49 = zext i16 %48 to i32
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @euc2sjisibm_jisx0212_map, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i16, i16* %54, align 8
  %56 = zext i16 %55 to i32
  %57 = icmp eq i32 %49, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %47
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @euc2sjisibm_jisx0212_map, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  store i8 %66, i8* %68, align 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @euc2sjisibm_jisx0212_map, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  store i8 %76, i8* %78, align 1
  store i32 3, i32* %4, align 4
  br label %81

79:                                               ; preds = %47
  br label %22

80:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %58
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
