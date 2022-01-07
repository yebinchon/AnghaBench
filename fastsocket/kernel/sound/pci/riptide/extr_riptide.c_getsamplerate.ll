; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/riptide/extr_riptide.c_getsamplerate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/riptide/extr_riptide.c_getsamplerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.cmdret = type { i32* }
%struct.cmdif = type { i32 }

@CMDRET_ZERO = common dso_local global %union.cmdret zeroinitializer, align 8
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"rates differ %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"getsampleformat %d %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdif*, i8*, i32*)* @getsamplerate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getsamplerate(%struct.cmdif* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmdif*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.cmdret, align 8
  store %struct.cmdif* %0, %struct.cmdif** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  %13 = bitcast %union.cmdret* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 bitcast (%union.cmdret* @CMDRET_ZERO to i8*), i64 8, i1 false)
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %8, align 8
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %74, %3
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %77

18:                                               ; preds = %15
  %19 = load i8*, i8** %8, align 8
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %21, 255
  br i1 %22, label %23, label %71

23:                                               ; preds = %18
  %24 = load %struct.cmdif*, %struct.cmdif** %5, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i64 @SEND_RSRC(%struct.cmdif* %24, i8 zeroext %26, %union.cmdret* %11)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.cmdif*, %struct.cmdif** %5, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  %33 = call i64 @SEND_RSRC(%struct.cmdif* %30, i8 zeroext %32, %union.cmdret* %11)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %113

38:                                               ; preds = %29, %23
  %39 = bitcast %union.cmdret* %11 to i32**
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = add i32 %46, %42
  store i32 %47, i32* %45, align 4
  %48 = bitcast %union.cmdret* %11 to i32**
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = mul i32 %55, %51
  store i32 %56, i32* %54, align 4
  %57 = bitcast %union.cmdret* %11 to i32**
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = add i32 %64, %60
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = udiv i32 %69, 65536
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %38, %18
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %8, align 8
  br label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %15

77:                                               ; preds = %15
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %99

81:                                               ; preds = %77
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %83, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = trunc i32 %89 to i8
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = trunc i32 %92 to i8
  %94 = call i32 (i8*, i8, i8, ...) @snd_printdd(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8 zeroext %90, i8 zeroext %93)
  br label %95

95:                                               ; preds = %87, %81
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %7, align 8
  store i32 %97, i32* %98, align 4
  br label %103

99:                                               ; preds = %77
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %7, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %99, %95
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  %106 = load i8, i8* %105, align 1
  %107 = load i8*, i8** %6, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i8*, i8, i8, ...) @snd_printdd(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %106, i8 zeroext %109, i32 %111)
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %103, %35
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @SEND_RSRC(%struct.cmdif*, i8 zeroext, %union.cmdret*) #2

declare dso_local i32 @snd_printdd(i8*, i8 zeroext, i8 zeroext, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
