; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/riptide/extr_riptide.c_writearm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/riptide/extr_riptide.c_writearm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cmdret = type { i32* }
%struct.cmdif = type { i32 }

@CMDRET_ZERO = common dso_local global %union.cmdret zeroinitializer, align 8
@MAX_WRITE_RETRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"send arm 0x%x 0x%x 0x%x return %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdif*, i32, i32, i32)* @writearm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writearm(%struct.cmdif* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cmdif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.cmdret, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cmdif* %0, %struct.cmdif** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = bitcast %union.cmdret* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 bitcast (%union.cmdret* @CMDRET_ZERO to i8*), i64 8, i1 false)
  %13 = load i32, i32* @MAX_WRITE_RETRY, align 4
  store i32 %13, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %14 = load %struct.cmdif*, %struct.cmdif** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @SEND_RMEM(%struct.cmdif* %14, i32 2, i32 %15, %union.cmdret* %9)
  %17 = load i32, i32* %8, align 4
  %18 = xor i32 %17, -1
  %19 = bitcast %union.cmdret* %9 to i32**
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %18
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %60, %4
  %25 = load i32, i32* %10, align 4
  %26 = add i32 %25, -1
  store i32 %26, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %61

28:                                               ; preds = %24
  %29 = load %struct.cmdif*, %struct.cmdif** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @SEND_SMEM(%struct.cmdif* %29, i32 1, i32 %30)
  %32 = load %struct.cmdif*, %struct.cmdif** %5, align 8
  %33 = bitcast %union.cmdret* %9 to i32**
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @SEND_WMEM(%struct.cmdif* %32, i32 2, i32 %38)
  %40 = load %struct.cmdif*, %struct.cmdif** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @SEND_RMEM(%struct.cmdif* %40, i32 2, i32 %41, %union.cmdret* %9)
  %43 = bitcast %union.cmdret* %9 to i32**
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %28
  store i32 0, i32* %11, align 4
  br label %61

52:                                               ; preds = %28
  %53 = load i32, i32* %8, align 4
  %54 = xor i32 %53, -1
  %55 = bitcast %union.cmdret* %9 to i32**
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %54
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %52
  br label %24

61:                                               ; preds = %51, %24
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @snd_printdd(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load i32, i32* %11, align 4
  ret i32 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @SEND_RMEM(%struct.cmdif*, i32, i32, %union.cmdret*) #2

declare dso_local i32 @SEND_SMEM(%struct.cmdif*, i32, i32) #2

declare dso_local i32 @SEND_WMEM(%struct.cmdif*, i32, i32) #2

declare dso_local i32 @snd_printdd(i8*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
