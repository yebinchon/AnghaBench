; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_core.c_vortex_src_setupchannel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/au88x0/extr_au88x0_core.c_vortex_src_setupchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@VORTEX_SRC_U0 = common dso_local global i64 0, align 8
@VORTEX_SRC_U1 = common dso_local global i64 0, align 8
@VORTEX_SRC_U2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8, i32, i32, i32, i32, i32, i32, i32, i32)* @vortex_src_setupchannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_src_setupchannel(%struct.TYPE_7__* %0, i8 zeroext %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %11, align 8
  store i8 %1, i8* %12, align 1
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  store i32 0, i32* %22, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %25 = load i8, i8* %12, align 1
  %26 = call i32 @vortex_src_flushbuffers(%struct.TYPE_7__* %24, i8 zeroext %25)
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %10
  %30 = load i32, i32* %19, align 4
  %31 = and i32 %30, 65536
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %19, align 4
  %35 = icmp ne i32 %34, 65536
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* %19, align 4
  store i32 7, i32* %21, align 4
  br label %48

37:                                               ; preds = %33, %29
  %38 = load i32, i32* %19, align 4
  %39 = trunc i32 %38 to i16
  %40 = sext i16 %39 to i32
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* %19, align 4
  %44 = icmp ne i32 %43, 32768
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %19, align 4
  store i32 8, i32* %21, align 4
  br label %47

46:                                               ; preds = %42, %37
  store i32 1, i32* %19, align 4
  store i32 12, i32* %21, align 4
  br label %47

47:                                               ; preds = %46, %45
  br label %48

48:                                               ; preds = %47, %36
  br label %73

49:                                               ; preds = %10
  %50 = load i32, i32* %13, align 4
  %51 = and i32 %50, 65536
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %49
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 65536
  br i1 %55, label %56, label %71

56:                                               ; preds = %53
  store i32 0, i32* %19, align 4
  %57 = load i32, i32* %13, align 4
  %58 = lshr i32 %57, 14
  %59 = and i32 %58, 7
  %60 = sub i32 17, %59
  store i32 %60, i32* %21, align 4
  %61 = load i32, i32* %13, align 4
  %62 = and i32 %61, 16383
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* %21, align 4
  %66 = sub nsw i32 %65, 1
  store i32 %66, i32* %21, align 4
  br label %70

67:                                               ; preds = %56
  %68 = load i32, i32* %21, align 4
  %69 = sub nsw i32 %68, 2
  store i32 %69, i32* %21, align 4
  br label %70

70:                                               ; preds = %67, %64
  br label %72

71:                                               ; preds = %53, %49
  store i32 1, i32* %19, align 4
  store i32 12, i32* %21, align 4
  br label %72

72:                                               ; preds = %71, %70
  br label %73

73:                                               ; preds = %72, %48
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %75 = load i8, i8* %12, align 1
  %76 = call i32 @vortex_src_cleardrift(%struct.TYPE_7__* %74, i8 zeroext %75)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %78 = load i8, i8* %12, align 1
  %79 = load i32, i32* %20, align 4
  %80 = call i32 @vortex_src_set_throttlesource(%struct.TYPE_7__* %77, i8 zeroext %78, i32 %79)
  %81 = load i32, i32* %17, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %73
  %84 = load i32, i32* %15, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load i32, i32* %19, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 15, i32* %23, align 4
  br label %91

90:                                               ; preds = %86
  store i32 12, i32* %23, align 4
  br label %91

91:                                               ; preds = %90, %89
  store i32 0, i32* %22, align 4
  br label %98

92:                                               ; preds = %83, %73
  %93 = load i32, i32* %19, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 15, i32* %22, align 4
  br label %97

96:                                               ; preds = %92
  store i32 12, i32* %22, align 4
  br label %97

97:                                               ; preds = %96, %95
  store i32 0, i32* %23, align 4
  br label %98

98:                                               ; preds = %97, %91
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* @VORTEX_SRC_U0, align 8
  %103 = load i8, i8* %12, align 1
  %104 = zext i8 %103 to i32
  %105 = shl i32 %104, 2
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %102, %106
  %108 = load i32, i32* %18, align 4
  %109 = shl i32 %108, 9
  %110 = load i32, i32* %15, align 4
  %111 = shl i32 %110, 8
  %112 = or i32 %109, %111
  %113 = load i32, i32* %21, align 4
  %114 = and i32 %113, 15
  %115 = shl i32 %114, 4
  %116 = or i32 %112, %115
  %117 = load i32, i32* %16, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @hwwrite(i32 %101, i64 %107, i32 %118)
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %121 = load i8, i8* %12, align 1
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @vortex_src_persist_convratio(%struct.TYPE_7__* %120, i8 zeroext %121, i32 %122)
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i64, i64* @VORTEX_SRC_U1, align 8
  %128 = load i8, i8* %12, align 1
  %129 = zext i8 %128 to i32
  %130 = shl i32 %129, 2
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %127, %131
  %133 = load i32, i32* %14, align 4
  %134 = and i32 %133, 65535
  %135 = call i32 @hwwrite(i32 %126, i64 %132, i32 %134)
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i64, i64* @VORTEX_SRC_U2, align 8
  %140 = load i8, i8* %12, align 1
  %141 = zext i8 %140 to i32
  %142 = shl i32 %141, 2
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %139, %143
  %145 = load i32, i32* %19, align 4
  %146 = shl i32 %145, 17
  %147 = load i32, i32* %17, align 4
  %148 = shl i32 %147, 16
  %149 = or i32 %146, %148
  %150 = load i32, i32* %22, align 4
  %151 = shl i32 %150, 8
  %152 = or i32 %149, %151
  %153 = load i32, i32* %23, align 4
  %154 = or i32 %152, %153
  %155 = call i32 @hwwrite(i32 %138, i64 %144, i32 %154)
  ret void
}

declare dso_local i32 @vortex_src_flushbuffers(%struct.TYPE_7__*, i8 zeroext) #1

declare dso_local i32 @vortex_src_cleardrift(%struct.TYPE_7__*, i8 zeroext) #1

declare dso_local i32 @vortex_src_set_throttlesource(%struct.TYPE_7__*, i8 zeroext, i32) #1

declare dso_local i32 @hwwrite(i32, i64, i32) #1

declare dso_local i32 @vortex_src_persist_convratio(%struct.TYPE_7__*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
