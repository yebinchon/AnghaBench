; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_opl3.c_opl3_aftertouch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_opl3.c_opl3_aftertouch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64*, %struct.TYPE_3__*, %struct.sbi_instrument*, %struct.sbi_instrument** }
%struct.TYPE_3__ = type { i32 }
%struct.sbi_instrument = type { i32* }
%struct.physical_voice_info = type { i64 }

@devc = common dso_local global %struct.TYPE_4__* null, align 8
@pv_map = common dso_local global %struct.physical_voice_info* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"Aftertouch %d\0A\00", align 1
@OFFS_4OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @opl3_aftertouch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opl3_aftertouch(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sbi_instrument*, align 8
  %9 = alloca %struct.physical_voice_info*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devc, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %3
  br label %107

20:                                               ; preds = %13
  %21 = load %struct.physical_voice_info*, %struct.physical_voice_info** @pv_map, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devc, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.physical_voice_info, %struct.physical_voice_info* %21, i64 %28
  store %struct.physical_voice_info* %29, %struct.physical_voice_info** %9, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = call i32 @DEB(i32 %31)
  %33 = load %struct.physical_voice_info*, %struct.physical_voice_info** %9, align 8
  %34 = getelementptr inbounds %struct.physical_voice_info, %struct.physical_voice_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %20
  br label %107

38:                                               ; preds = %20
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devc, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  %41 = load %struct.sbi_instrument**, %struct.sbi_instrument*** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.sbi_instrument*, %struct.sbi_instrument** %41, i64 %43
  %45 = load %struct.sbi_instrument*, %struct.sbi_instrument** %44, align 8
  store %struct.sbi_instrument* %45, %struct.sbi_instrument** %8, align 8
  %46 = load %struct.sbi_instrument*, %struct.sbi_instrument** %8, align 8
  %47 = icmp ne %struct.sbi_instrument* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %38
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devc, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = load %struct.sbi_instrument*, %struct.sbi_instrument** %50, align 8
  %52 = getelementptr inbounds %struct.sbi_instrument, %struct.sbi_instrument* %51, i64 0
  store %struct.sbi_instrument* %52, %struct.sbi_instrument** %8, align 8
  br label %53

53:                                               ; preds = %48, %38
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @devc, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, 4
  br i1 %62, label %63, label %95

63:                                               ; preds = %53
  %64 = load %struct.sbi_instrument*, %struct.sbi_instrument** %8, align 8
  %65 = getelementptr inbounds %struct.sbi_instrument, %struct.sbi_instrument* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 10
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 1
  %70 = shl i32 %69, 1
  %71 = load %struct.sbi_instrument*, %struct.sbi_instrument** %8, align 8
  %72 = getelementptr inbounds %struct.sbi_instrument, %struct.sbi_instrument* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @OFFS_4OP, align 4
  %75 = add nsw i32 10, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 1
  %80 = or i32 %70, %79
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  switch i32 %81, label %94 [
    i32 0, label %82
    i32 1, label %84
    i32 2, label %87
    i32 3, label %90
  ]

82:                                               ; preds = %63
  %83 = call i32 @SET_VIBRATO(i32 4)
  br label %94

84:                                               ; preds = %63
  %85 = call i32 @SET_VIBRATO(i32 2)
  %86 = call i32 @SET_VIBRATO(i32 4)
  br label %94

87:                                               ; preds = %63
  %88 = call i32 @SET_VIBRATO(i32 1)
  %89 = call i32 @SET_VIBRATO(i32 4)
  br label %94

90:                                               ; preds = %63
  %91 = call i32 @SET_VIBRATO(i32 1)
  %92 = call i32 @SET_VIBRATO(i32 3)
  %93 = call i32 @SET_VIBRATO(i32 4)
  br label %94

94:                                               ; preds = %63, %90, %87, %84, %82
  br label %107

95:                                               ; preds = %53
  %96 = call i32 @SET_VIBRATO(i32 1)
  %97 = load %struct.sbi_instrument*, %struct.sbi_instrument** %8, align 8
  %98 = getelementptr inbounds %struct.sbi_instrument, %struct.sbi_instrument* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 10
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 1
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %95
  %105 = call i32 @SET_VIBRATO(i32 2)
  br label %106

106:                                              ; preds = %104, %95
  br label %107

107:                                              ; preds = %19, %37, %106, %94
  ret void
}

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @SET_VIBRATO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
