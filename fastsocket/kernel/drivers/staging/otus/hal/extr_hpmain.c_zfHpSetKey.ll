; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpSetKey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpSetKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.zsHpPriv* }
%struct.TYPE_3__ = type { i32 }
%struct.zsHpPriv = type { i32 }

@ZM_MAX_CMD_SIZE = common dso_local global i32 0, align 4
@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_CMD_SET_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfHpSetKey(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.zsHpPriv*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %18 = load i32, i32* @ZM_MAX_CMD_SIZE, align 4
  %19 = sdiv i32 %18, 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @zmw_get_wlan_dev(i32* %23)
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.zsHpPriv*, %struct.zsHpPriv** %26, align 8
  store %struct.zsHpPriv* %27, %struct.zsHpPriv** %17, align 8
  %28 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 10268, i32* %28, align 16
  %29 = load i32, i32* %9, align 4
  %30 = shl i32 %29, 16
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %30, %31
  %33 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %11, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 16
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %37, %38
  %40 = getelementptr inbounds i32, i32* %22, i64 2
  store i32 %39, i32* %40, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 16
  %45 = load i32*, i32** %11, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %44, %47
  %49 = getelementptr inbounds i32, i32* %22, i64 3
  store i32 %48, i32* %49, align 4
  store i32 0, i32* %16, align 4
  br label %50

50:                                               ; preds = %63, %6
  %51 = load i32, i32* %16, align 4
  %52 = icmp slt i32 %51, 4
  br i1 %52, label %53, label %66

53:                                               ; preds = %50
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* %16, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %16, align 4
  %60 = add nsw i32 4, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %22, i64 %61
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %53
  %64 = load i32, i32* %16, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %16, align 4
  br label %50

66:                                               ; preds = %50
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 64
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32, i32* %8, align 4
  %71 = shl i32 1, %70
  %72 = load %struct.zsHpPriv*, %struct.zsHpPriv** %17, align 8
  %73 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %69, %66
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* @ZM_CMD_SET_KEY, align 4
  %79 = call i32 @zfIssueCmd(i32* %77, i32* %22, i32 32, i32 %78, i32* null)
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %81)
  ret i32 %80
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @zmw_get_wlan_dev(i32*) #2

declare dso_local i32 @zfIssueCmd(i32*, i32*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
