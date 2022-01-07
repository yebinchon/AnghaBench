; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_card.c_vUpdateIFS.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_card.c_vUpdateIFS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i64, i64, i64, i32, i8*, i64 }

@PK_TYPE_11A = common dso_local global i64 0, align 8
@C_SLOT_SHORT = common dso_local global i32 0, align 4
@C_SIFS_A = common dso_local global i8* null, align 8
@C_CWMIN_A = common dso_local global i8* null, align 8
@PK_TYPE_11B = common dso_local global i64 0, align 8
@C_SLOT_LONG = common dso_local global i32 0, align 4
@C_SIFS_BG = common dso_local global i8* null, align 8
@C_CWMIN_B = common dso_local global i8* null, align 8
@C_CWMAX = common dso_local global i32 0, align 4
@C_EIFS = common dso_local global i64 0, align 8
@RF_RFMD2959 = common dso_local global i64 0, align 8
@MAC_REG_SIFS = common dso_local global i64 0, align 8
@MAC_REG_DIFS = common dso_local global i64 0, align 8
@MAC_REG_EIFS = common dso_local global i64 0, align 8
@MAC_REG_SLOT = common dso_local global i64 0, align 8
@MAC_REG_CWMAXMIN0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vUpdateIFS(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = inttoptr i64 %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PK_TYPE_11A, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %1
  %14 = load i32, i32* @C_SLOT_SHORT, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load i8*, i8** @C_SIFS_A, align 8
  %18 = ptrtoint i8* %17 to i32
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i8*, i8** @C_SIFS_A, align 8
  %22 = load i32, i32* @C_SLOT_SHORT, align 4
  %23 = mul nsw i32 2, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr i8, i8* %21, i64 %24
  %26 = ptrtoint i8* %25 to i32
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load i8*, i8** @C_CWMIN_A, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 9
  store i8* %29, i8** %31, align 8
  store i32 4, i32* %4, align 4
  br label %100

32:                                               ; preds = %1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PK_TYPE_11B, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %32
  %39 = load i32, i32* @C_SLOT_LONG, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load i8*, i8** @C_SIFS_BG, align 8
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i8*, i8** @C_SIFS_BG, align 8
  %47 = load i32, i32* @C_SLOT_LONG, align 4
  %48 = mul nsw i32 2, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr i8, i8* %46, i64 %49
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load i8*, i8** @C_CWMIN_B, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 9
  store i8* %54, i8** %56, align 8
  store i32 5, i32* %4, align 4
  br label %99

57:                                               ; preds = %32
  %58 = load i8*, i8** @C_SIFS_BG, align 8
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 10
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load i32, i32* @C_SLOT_SHORT, align 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  br label %74

70:                                               ; preds = %57
  %71 = load i32, i32* @C_SLOT_LONG, align 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %70, %66
  %75 = load i8*, i8** @C_SIFS_BG, align 8
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = mul nsw i32 2, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr i8, i8* %75, i64 %80
  %82 = ptrtoint i8* %81 to i32
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 336
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %74
  %91 = load i8*, i8** @C_CWMIN_A, align 8
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 9
  store i8* %91, i8** %93, align 8
  store i32 4, i32* %4, align 4
  br label %98

94:                                               ; preds = %74
  %95 = load i8*, i8** @C_CWMIN_B, align 8
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 9
  store i8* %95, i8** %97, align 8
  store i32 5, i32* %4, align 4
  br label %98

98:                                               ; preds = %94, %90
  br label %99

99:                                               ; preds = %98, %38
  br label %100

100:                                              ; preds = %99, %13
  %101 = load i32, i32* @C_CWMAX, align 4
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 8
  store i32 %101, i32* %103, align 8
  %104 = load i64, i64* @C_EIFS, align 8
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 7
  store i64 %104, i64* %106, align 8
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @RF_RFMD2959, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %133

112:                                              ; preds = %100
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 6
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @MAC_REG_SIFS, align 8
  %117 = add nsw i64 %115, %116
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 %120, 3
  %122 = call i32 @VNSvOutPortB(i64 %117, i32 %121)
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 6
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @MAC_REG_DIFS, align 8
  %127 = add nsw i64 %125, %126
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = sub nsw i32 %130, 3
  %132 = call i32 @VNSvOutPortB(i64 %127, i32 %131)
  br label %152

133:                                              ; preds = %100
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @MAC_REG_SIFS, align 8
  %138 = add nsw i64 %136, %137
  %139 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @VNSvOutPortB(i64 %138, i32 %141)
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 6
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @MAC_REG_DIFS, align 8
  %147 = add nsw i64 %145, %146
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @VNSvOutPortB(i64 %147, i32 %150)
  br label %152

152:                                              ; preds = %133, %112
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 6
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @MAC_REG_EIFS, align 8
  %157 = add nsw i64 %155, %156
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 7
  %160 = load i64, i64* %159, align 8
  %161 = trunc i64 %160 to i32
  %162 = call i32 @VNSvOutPortB(i64 %157, i32 %161)
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 6
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @MAC_REG_SLOT, align 8
  %167 = add nsw i64 %165, %166
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @VNSvOutPortB(i64 %167, i32 %170)
  %172 = load i32, i32* %4, align 4
  %173 = or i32 %172, 160
  store i32 %173, i32* %4, align 4
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 6
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @MAC_REG_CWMAXMIN0, align 8
  %178 = add nsw i64 %176, %177
  %179 = load i32, i32* %4, align 4
  %180 = call i32 @VNSvOutPortB(i64 %178, i32 %179)
  ret void
}

declare dso_local i32 @VNSvOutPortB(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
