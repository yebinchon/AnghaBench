; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/riptide/extr_riptide.c_setmixer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/riptide/extr_riptide.c_setmixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cmdret = type { i16* }
%struct.cmdif = type { i32 }

@CMDRET_ZERO = common dso_local global %union.cmdret zeroinitializer, align 8
@.str = private unnamed_addr constant [26 x i8] c"sent mixer %d: 0x%d 0x%d\0A\00", align 1
@MAX_WRITE_RETRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"sent mixer failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdif*, i16, i16, i16)* @setmixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setmixer(%struct.cmdif* %0, i16 signext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmdif*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca %union.cmdret, align 8
  %11 = alloca i32, align 4
  store %struct.cmdif* %0, %struct.cmdif** %6, align 8
  store i16 %1, i16* %7, align 2
  store i16 %2, i16* %8, align 2
  store i16 %3, i16* %9, align 2
  %12 = bitcast %union.cmdret* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%union.cmdret* @CMDRET_ZERO to i8*), i64 8, i1 false)
  store i32 0, i32* %11, align 4
  %13 = load i16, i16* %7, align 2
  %14 = sext i16 %13 to i32
  %15 = load i16, i16* %8, align 2
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* %9, align 2
  %18 = zext i16 %17 to i32
  %19 = call i32 (i8*, ...) @snd_printdd(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %16, i32 %18)
  br label %20

20:                                               ; preds = %50, %4
  %21 = load %struct.cmdif*, %struct.cmdif** %6, align 8
  %22 = load i16, i16* %7, align 2
  %23 = load i16, i16* %7, align 2
  %24 = load i16, i16* %8, align 2
  %25 = load i16, i16* %9, align 2
  %26 = call i32 @SEND_SDGV(%struct.cmdif* %21, i16 signext %22, i16 signext %23, i16 zeroext %24, i16 zeroext %25)
  %27 = load %struct.cmdif*, %struct.cmdif** %6, align 8
  %28 = load i16, i16* %7, align 2
  %29 = load i16, i16* %7, align 2
  %30 = call i32 @SEND_RDGV(%struct.cmdif* %27, i16 signext %28, i16 signext %29, %union.cmdret* %10)
  %31 = bitcast %union.cmdret* %10 to i16**
  %32 = load i16*, i16** %31, align 8
  %33 = getelementptr inbounds i16, i16* %32, i64 0
  %34 = load i16, i16* %33, align 2
  %35 = zext i16 %34 to i32
  %36 = load i16, i16* %9, align 2
  %37 = zext i16 %36 to i32
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %20
  %40 = bitcast %union.cmdret* %10 to i16**
  %41 = load i16*, i16** %40, align 8
  %42 = getelementptr inbounds i16, i16* %41, i64 1
  %43 = load i16, i16* %42, align 2
  %44 = zext i16 %43 to i32
  %45 = load i16, i16* %8, align 2
  %46 = zext i16 %45 to i32
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %59

49:                                               ; preds = %39, %20
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* @MAX_WRITE_RETRY, align 4
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %20, label %55

55:                                               ; preds = %50
  %56 = call i32 (i8*, ...) @snd_printdd(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %55, %48
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snd_printdd(i8*, ...) #2

declare dso_local i32 @SEND_SDGV(%struct.cmdif*, i16 signext, i16 signext, i16 zeroext, i16 zeroext) #2

declare dso_local i32 @SEND_RDGV(%struct.cmdif*, i16 signext, i16 signext, %union.cmdret*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
