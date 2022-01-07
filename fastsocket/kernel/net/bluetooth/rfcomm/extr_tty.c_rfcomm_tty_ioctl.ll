; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/rfcomm/extr_tty.c_rfcomm_tty_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.file = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"tty %p cmd 0x%02x\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"TCGETS is not supported\00", align 1
@ENOIOCTLCMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"TCSETS is not supported\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"TIOCMIWAIT\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"TIOCGICOUNT\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"TIOCGSERIAL is not supported\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"TIOCSSERIAL is not supported\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"TIOCSERGSTRUCT is not supported\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"TIOCSERGETLSR is not supported\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"TIOCSERCONFIG is not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, i32, i64)* @rfcomm_tty_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfcomm_tty_ioctl(%struct.tty_struct* %0, %struct.file* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %11 = load i32, i32* %8, align 4
  %12 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.tty_struct* %10, i32 %11)
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %46 [
    i32 136, label %14
    i32 135, label %18
    i32 132, label %22
    i32 134, label %24
    i32 133, label %26
    i32 128, label %30
    i32 129, label %34
    i32 130, label %38
    i32 131, label %42
  ]

14:                                               ; preds = %4
  %15 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @ENOIOCTLCMD, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %52

18:                                               ; preds = %4
  %19 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* @ENOIOCTLCMD, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %52

22:                                               ; preds = %4
  %23 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %49

24:                                               ; preds = %4
  %25 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %49

26:                                               ; preds = %4
  %27 = call i32 @BT_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %28 = load i32, i32* @ENOIOCTLCMD, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %52

30:                                               ; preds = %4
  %31 = call i32 @BT_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %32 = load i32, i32* @ENOIOCTLCMD, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %52

34:                                               ; preds = %4
  %35 = call i32 @BT_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %36 = load i32, i32* @ENOIOCTLCMD, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %52

38:                                               ; preds = %4
  %39 = call i32 @BT_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %40 = load i32, i32* @ENOIOCTLCMD, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %52

42:                                               ; preds = %4
  %43 = call i32 @BT_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %44 = load i32, i32* @ENOIOCTLCMD, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %52

46:                                               ; preds = %4
  %47 = load i32, i32* @ENOIOCTLCMD, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %52

49:                                               ; preds = %24, %22
  %50 = load i32, i32* @ENOIOCTLCMD, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %46, %42, %38, %34, %30, %26, %18, %14
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i32 @BT_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
