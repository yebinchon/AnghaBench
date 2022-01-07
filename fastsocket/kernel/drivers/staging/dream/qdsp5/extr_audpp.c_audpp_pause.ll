; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audpp.c_audpp_pause.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audpp.c_audpp_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AUDPP_CMD_DEC_CTRL_LEN = common dso_local global i32 0, align 4
@CH_COUNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AUDPP_CMD_DEC_CTRL = common dso_local global i32 0, align 4
@AUDPP_CMD_UPDATE_V = common dso_local global i32 0, align 4
@AUDPP_CMD_PAUSE_V = common dso_local global i32 0, align 4
@AUDPP_CMD_RESUME_V = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audpp_pause(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @AUDPP_CMD_DEC_CTRL_LEN, align 4
  %10 = sext i32 %9 to i64
  %11 = udiv i64 %10, 2
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @CH_COUNT, align 4
  %16 = icmp uge i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %55

20:                                               ; preds = %2
  %21 = mul nuw i64 4, %11
  %22 = trunc i64 %21 to i32
  %23 = call i32 @memset(i32* %13, i32 0, i32 %22)
  %24 = load i32, i32* @AUDPP_CMD_DEC_CTRL, align 4
  %25 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %24, i32* %25, align 16
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load i32, i32* @AUDPP_CMD_UPDATE_V, align 4
  %30 = load i32, i32* @AUDPP_CMD_PAUSE_V, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %4, align 4
  %33 = add i32 1, %32
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %13, i64 %34
  store i32 %31, i32* %35, align 4
  br label %51

36:                                               ; preds = %20
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load i32, i32* @AUDPP_CMD_UPDATE_V, align 4
  %41 = load i32, i32* @AUDPP_CMD_RESUME_V, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %4, align 4
  %44 = add i32 1, %43
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %13, i64 %45
  store i32 %42, i32* %46, align 4
  br label %50

47:                                               ; preds = %36
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %55

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %28
  %52 = mul nuw i64 4, %11
  %53 = trunc i64 %52 to i32
  %54 = call i32 @audpp_send_queue1(i32* %13, i32 %53)
  store i32 %54, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %55

55:                                               ; preds = %51, %47, %17
  %56 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @audpp_send_queue1(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
