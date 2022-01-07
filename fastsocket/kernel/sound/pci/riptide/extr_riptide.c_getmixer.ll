; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/riptide/extr_riptide.c_getmixer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/riptide/extr_riptide.c_getmixer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cmdret = type { i16* }
%struct.cmdif = type { i32 }

@CMDRET_ZERO = common dso_local global %union.cmdret zeroinitializer, align 8
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"got mixer %d: 0x%d 0x%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdif*, i16, i16*, i16*)* @getmixer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getmixer(%struct.cmdif* %0, i16 signext %1, i16* %2, i16* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmdif*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca %union.cmdret, align 8
  store %struct.cmdif* %0, %struct.cmdif** %6, align 8
  store i16 %1, i16* %7, align 2
  store i16* %2, i16** %8, align 8
  store i16* %3, i16** %9, align 8
  %11 = bitcast %union.cmdret* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 bitcast (%union.cmdret* @CMDRET_ZERO to i8*), i64 8, i1 false)
  %12 = load %struct.cmdif*, %struct.cmdif** %6, align 8
  %13 = load i16, i16* %7, align 2
  %14 = load i16, i16* %7, align 2
  %15 = call i64 @SEND_RDGV(%struct.cmdif* %12, i16 signext %13, i16 signext %14, %union.cmdret* %10)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %4
  %18 = load %struct.cmdif*, %struct.cmdif** %6, align 8
  %19 = load i16, i16* %7, align 2
  %20 = load i16, i16* %7, align 2
  %21 = call i64 @SEND_RDGV(%struct.cmdif* %18, i16 signext %19, i16 signext %20, %union.cmdret* %10)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %43

26:                                               ; preds = %17, %4
  %27 = bitcast %union.cmdret* %10 to i16**
  %28 = load i16*, i16** %27, align 8
  %29 = getelementptr inbounds i16, i16* %28, i64 0
  %30 = load i16, i16* %29, align 2
  %31 = load i16*, i16** %8, align 8
  store i16 %30, i16* %31, align 2
  %32 = bitcast %union.cmdret* %10 to i16**
  %33 = load i16*, i16** %32, align 8
  %34 = getelementptr inbounds i16, i16* %33, i64 1
  %35 = load i16, i16* %34, align 2
  %36 = load i16*, i16** %9, align 8
  store i16 %35, i16* %36, align 2
  %37 = load i16, i16* %7, align 2
  %38 = load i16*, i16** %8, align 8
  %39 = load i16, i16* %38, align 2
  %40 = load i16*, i16** %9, align 8
  %41 = load i16, i16* %40, align 2
  %42 = call i32 @snd_printdd(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i16 signext %37, i16 zeroext %39, i16 zeroext %41)
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %26, %23
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @SEND_RDGV(%struct.cmdif*, i16 signext, i16 signext, %union.cmdret*) #2

declare dso_local i32 @snd_printdd(i8*, i16 signext, i16 zeroext, i16 zeroext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
