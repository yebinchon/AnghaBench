; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_card.c_vUpdateIFS.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_card.c_vUpdateIFS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i64, i8*, i8*, i32, i8*, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i32* }

@PK_TYPE_11A = common dso_local global i64 0, align 8
@C_SLOT_SHORT = common dso_local global i32 0, align 4
@C_SIFS_A = common dso_local global i8* null, align 8
@C_CWMIN_A = common dso_local global i8* null, align 8
@PK_TYPE_11B = common dso_local global i64 0, align 8
@C_SLOT_LONG = common dso_local global i32 0, align 4
@C_SIFS_BG = common dso_local global i8* null, align 8
@C_CWMIN_B = common dso_local global i8* null, align 8
@FALSE = common dso_local global i64 0, align 8
@RATE_11M = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@C_CWMAX = common dso_local global i32 0, align 4
@C_EIFS = common dso_local global i64 0, align 8
@MESSAGE_TYPE_WRITE = common dso_local global i32 0, align 4
@MAC_REG_SIFS = common dso_local global i32 0, align 4
@MESSAGE_REQUEST_MACREG = common dso_local global i32 0, align 4
@MAC_REG_CWMAXMIN0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vUpdateIFS(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %3, align 8
  store i32 0, i32* %4, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PK_TYPE_11A, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %1
  %19 = load i32, i32* @C_SLOT_SHORT, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** @C_SIFS_A, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** @C_SIFS_A, align 8
  %26 = load i32, i32* @C_SLOT_SHORT, align 4
  %27 = mul nsw i32 2, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr i8, i8* %25, i64 %28
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** @C_CWMIN_A, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 6
  store i8* %32, i8** %34, align 8
  store i32 4, i32* %4, align 4
  br label %163

35:                                               ; preds = %1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PK_TYPE_11B, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %35
  %42 = load i32, i32* @C_SLOT_LONG, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load i8*, i8** @C_SIFS_BG, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** @C_SIFS_BG, align 8
  %49 = load i32, i32* @C_SLOT_LONG, align 4
  %50 = mul nsw i32 2, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr i8, i8* %48, i64 %51
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** @C_CWMIN_B, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 6
  store i8* %55, i8** %57, align 8
  store i32 5, i32* %4, align 4
  br label %162

58:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  %59 = load i64, i64* @FALSE, align 8
  store i64 %59, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  %60 = load i8*, i8** @C_SIFS_BG, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 8
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load i32, i32* @C_SLOT_SHORT, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  br label %75

71:                                               ; preds = %58
  %72 = load i32, i32* @C_SLOT_LONG, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  br label %75

75:                                               ; preds = %71, %67
  %76 = load i8*, i8** @C_SIFS_BG, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = mul nsw i32 2, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr i8, i8* %76, i64 %81
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  store i8* %82, i8** %84, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 7
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %89, %struct.TYPE_6__** %9, align 8
  store i64 0, i64* %8, align 8
  br label %90

90:                                               ; preds = %111, %75
  %91 = load i64, i64* %8, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ult i64 %91, %94
  br i1 %95, label %96, label %114

96:                                               ; preds = %90
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* %8, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 127
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i64 @RATEwGetRateIdx(i32 %104)
  %106 = load i64, i64* @RATE_11M, align 8
  %107 = icmp sgt i64 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %96
  %109 = load i64, i64* @TRUE, align 8
  store i64 %109, i64* %7, align 8
  br label %114

110:                                              ; preds = %96
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %8, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %8, align 8
  br label %90

114:                                              ; preds = %108, %90
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* @FALSE, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %149

118:                                              ; preds = %114
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %123, %struct.TYPE_6__** %9, align 8
  store i64 0, i64* %8, align 8
  br label %124

124:                                              ; preds = %145, %118
  %125 = load i64, i64* %8, align 8
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ult i64 %125, %128
  br i1 %129, label %130, label %148

130:                                              ; preds = %124
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i64, i64* %8, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 127
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = call i64 @RATEwGetRateIdx(i32 %138)
  %140 = load i64, i64* @RATE_11M, align 8
  %141 = icmp sgt i64 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %130
  %143 = load i64, i64* @TRUE, align 8
  store i64 %143, i64* %7, align 8
  br label %148

144:                                              ; preds = %130
  br label %145

145:                                              ; preds = %144
  %146 = load i64, i64* %8, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %8, align 8
  br label %124

148:                                              ; preds = %142, %124
  br label %149

149:                                              ; preds = %148, %114
  %150 = load i64, i64* %7, align 8
  %151 = load i64, i64* @TRUE, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i8*, i8** @C_CWMIN_A, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 6
  store i8* %154, i8** %156, align 8
  store i32 4, i32* %4, align 4
  br label %161

157:                                              ; preds = %149
  %158 = load i8*, i8** @C_CWMIN_B, align 8
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 6
  store i8* %158, i8** %160, align 8
  store i32 5, i32* %4, align 4
  br label %161

161:                                              ; preds = %157, %153
  br label %162

162:                                              ; preds = %161, %41
  br label %163

163:                                              ; preds = %162, %18
  %164 = load i32, i32* @C_CWMAX, align 4
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 5
  store i32 %164, i32* %166, align 8
  %167 = load i64, i64* @C_EIFS, align 8
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 2
  store i64 %167, i64* %169, align 8
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 4
  %172 = load i8*, i8** %171, align 8
  %173 = ptrtoint i8* %172 to i32
  %174 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  store i32 %173, i32* %174, align 16
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 3
  %177 = load i8*, i8** %176, align 8
  %178 = ptrtoint i8* %177 to i32
  %179 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  store i32 %178, i32* %179, align 4
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = trunc i64 %182 to i32
  %184 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  store i32 %183, i32* %184, align 8
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  store i32 %187, i32* %188, align 4
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %190 = load i32, i32* @MESSAGE_TYPE_WRITE, align 4
  %191 = load i32, i32* @MAC_REG_SIFS, align 4
  %192 = load i32, i32* @MESSAGE_REQUEST_MACREG, align 4
  %193 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %194 = call i32 @CONTROLnsRequestOut(%struct.TYPE_7__* %189, i32 %190, i32 %191, i32 %192, i32 4, i32* %193)
  %195 = load i32, i32* %4, align 4
  %196 = or i32 %195, 160
  store i32 %196, i32* %4, align 4
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %198 = load i32, i32* @MESSAGE_TYPE_WRITE, align 4
  %199 = load i32, i32* @MAC_REG_CWMAXMIN0, align 4
  %200 = load i32, i32* @MESSAGE_REQUEST_MACREG, align 4
  %201 = call i32 @CONTROLnsRequestOut(%struct.TYPE_7__* %197, i32 %198, i32 %199, i32 %200, i32 1, i32* %4)
  ret void
}

declare dso_local i64 @RATEwGetRateIdx(i32) #1

declare dso_local i32 @CONTROLnsRequestOut(%struct.TYPE_7__*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
