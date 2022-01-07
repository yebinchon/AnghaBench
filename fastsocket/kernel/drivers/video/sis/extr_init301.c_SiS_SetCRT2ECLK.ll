; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_SetCRT2ECLK.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_SetCRT2ECLK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i8*, i32, i64, i32, i32, i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8, i8 }
%struct.TYPE_3__ = type { i32 }

@LCDPass11 = common dso_local global i32 0, align 4
@ProgrammingCRT2 = common dso_local global i32 0, align 4
@CUT_BARCO1366 = common dso_local global i64 0, align 8
@CUT_BARCO1024 = common dso_local global i64 0, align 8
@SetCRT2ToLCDA = common dso_local global i32 0, align 4
@SetInSlaveMode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16, i16)* @SiS_SetCRT2ECLK to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_SetCRT2ECLK(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.SiS_Private*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i8*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  %14 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %15 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %9, align 8
  store i16 0, i16* %11, align 2
  %17 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %18 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @LCDPass11, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %4
  %24 = load i32, i32* @ProgrammingCRT2, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %27 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %31 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %30, i32 0, i32 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i16, i16* %8, align 2
  %34 = zext i16 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %42

39:                                               ; preds = %23
  %40 = load i16, i16* %8, align 2
  %41 = add i16 %40, -1
  store i16 %41, i16* %8, align 2
  br label %42

42:                                               ; preds = %39, %23
  %43 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %44 = load i16, i16* %6, align 2
  %45 = load i16, i16* %7, align 2
  %46 = load i16, i16* %8, align 2
  %47 = call zeroext i16 @SiS_GetVCLK2Ptr(%struct.SiS_Private* %43, i16 zeroext %44, i16 zeroext %45, i16 zeroext %46)
  store i16 %47, i16* %11, align 2
  %48 = load i32, i32* @ProgrammingCRT2, align 4
  %49 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %50 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %59

53:                                               ; preds = %4
  %54 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %55 = load i16, i16* %6, align 2
  %56 = load i16, i16* %7, align 2
  %57 = load i16, i16* %8, align 2
  %58 = call zeroext i16 @SiS_GetVCLK2Ptr(%struct.SiS_Private* %54, i16 zeroext %55, i16 zeroext %56, i16 zeroext %57)
  store i16 %58, i16* %11, align 2
  br label %59

59:                                               ; preds = %53, %42
  %60 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %61 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %60, i32 0, i32 6
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i16, i16* %11, align 2
  %64 = zext i16 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i8, i8* %66, align 1
  store i8 %67, i8* %12, align 1
  %68 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %69 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %68, i32 0, i32 6
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i16, i16* %11, align 2
  %72 = zext i16 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i8, i8* %74, align 1
  store i8 %75, i8* %13, align 1
  %76 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %77 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @CUT_BARCO1366, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %59
  %82 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %83 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CUT_BARCO1024, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %108

87:                                               ; preds = %81, %59
  %88 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %89 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %107

92:                                               ; preds = %87
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 544
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = and i32 %96, 1
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %92
  %100 = load i8*, i8** %9, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 551
  %102 = load i8, i8* %101, align 1
  store i8 %102, i8* %12, align 1
  %103 = load i8*, i8** %9, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 552
  %105 = load i8, i8* %104, align 1
  store i8 %105, i8* %13, align 1
  br label %106

106:                                              ; preds = %99, %92
  br label %107

107:                                              ; preds = %106, %87
  br label %108

108:                                              ; preds = %107, %81
  store i16 43, i16* %10, align 2
  %109 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %110 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @SetCRT2ToLCDA, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %128, label %115

115:                                              ; preds = %108
  %116 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %117 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @SetInSlaveMode, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %115
  %123 = load i16, i16* %10, align 2
  %124 = zext i16 %123 to i32
  %125 = add nsw i32 %124, 3
  %126 = trunc i32 %125 to i16
  store i16 %126, i16* %10, align 2
  br label %127

127:                                              ; preds = %122, %115
  br label %128

128:                                              ; preds = %127, %108
  %129 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %130 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @SiS_SetReg(i32 %131, i16 zeroext 49, i8 zeroext 32)
  %133 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %134 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load i16, i16* %10, align 2
  %137 = load i8, i8* %12, align 1
  %138 = call i32 @SiS_SetReg(i32 %135, i16 zeroext %136, i8 zeroext %137)
  %139 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %140 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load i16, i16* %10, align 2
  %143 = zext i16 %142 to i32
  %144 = add nsw i32 %143, 1
  %145 = trunc i32 %144 to i16
  %146 = load i8, i8* %13, align 1
  %147 = call i32 @SiS_SetReg(i32 %141, i16 zeroext %145, i8 zeroext %146)
  %148 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %149 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @SiS_SetReg(i32 %150, i16 zeroext 49, i8 zeroext 16)
  %152 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %153 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = load i16, i16* %10, align 2
  %156 = load i8, i8* %12, align 1
  %157 = call i32 @SiS_SetReg(i32 %154, i16 zeroext %155, i8 zeroext %156)
  %158 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %159 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = load i16, i16* %10, align 2
  %162 = zext i16 %161 to i32
  %163 = add nsw i32 %162, 1
  %164 = trunc i32 %163 to i16
  %165 = load i8, i8* %13, align 1
  %166 = call i32 @SiS_SetReg(i32 %160, i16 zeroext %164, i8 zeroext %165)
  %167 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %168 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @SiS_SetReg(i32 %169, i16 zeroext 49, i8 zeroext 0)
  %171 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %172 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 4
  %174 = load i16, i16* %10, align 2
  %175 = load i8, i8* %12, align 1
  %176 = call i32 @SiS_SetReg(i32 %173, i16 zeroext %174, i8 zeroext %175)
  %177 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %178 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = load i16, i16* %10, align 2
  %181 = zext i16 %180 to i32
  %182 = add nsw i32 %181, 1
  %183 = trunc i32 %182 to i16
  %184 = load i8, i8* %13, align 1
  %185 = call i32 @SiS_SetReg(i32 %179, i16 zeroext %183, i8 zeroext %184)
  ret void
}

declare dso_local zeroext i16 @SiS_GetVCLK2Ptr(%struct.SiS_Private*, i16 zeroext, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_SetReg(i32, i16 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
