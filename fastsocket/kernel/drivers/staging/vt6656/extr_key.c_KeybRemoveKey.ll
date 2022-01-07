; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_key.c_KeybRemoveKey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_key.c_KeybRemoveKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_8__*, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }

@FALSE = common dso_local global i8* null, align 8
@PAIRWISE_KEY = common dso_local global i32 0, align 4
@MAX_KEY_TABLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@MAX_GROUP_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @KeybRemoveKey(i32 %0, %struct.TYPE_10__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i8*, i8** @FALSE, align 8
  store i8* %13, i8** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @IS_BROADCAST_ADDRESS(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %99

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @PAIRWISE_KEY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %37, %22
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @MAX_KEY_TABLE, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load i8*, i8** @FALSE, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i8* %28, i8** %36, align 8
  br label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %23

40:                                               ; preds = %23
  %41 = load i64, i64* @TRUE, align 8
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %11, align 8
  br label %98

43:                                               ; preds = %17
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, 255
  %46 = load i32, i32* @MAX_GROUP_KEY, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %95

48:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %89, %48
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @MAX_KEY_TABLE, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %92

53:                                               ; preds = %49
  %54 = load i8*, i8** @FALSE, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %63, 255
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i8* %54, i8** %67, align 8
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, 2147483647
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, 2147483647
  %79 = icmp eq i32 %69, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %53
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  br label %88

88:                                               ; preds = %80, %53
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %49

92:                                               ; preds = %49
  %93 = load i64, i64* @TRUE, align 8
  %94 = inttoptr i64 %93 to i8*
  store i8* %94, i8** %11, align 8
  br label %97

95:                                               ; preds = %43
  %96 = load i8*, i8** @FALSE, align 8
  store i8* %96, i8** %11, align 8
  br label %97

97:                                               ; preds = %95, %92
  br label %98

98:                                               ; preds = %97, %40
  br label %196

99:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %100

100:                                              ; preds = %190, %99
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @MAX_KEY_TABLE, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %193

104:                                              ; preds = %100
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @TRUE, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %189

115:                                              ; preds = %104
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i64 @IS_ETH_ADDRESS_EQUAL(i32 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %189

127:                                              ; preds = %115
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @PAIRWISE_KEY, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %127
  %133 = load i8*, i8** @FALSE, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  store i8* %133, i8** %141, align 8
  %142 = load i64, i64* @TRUE, align 8
  %143 = inttoptr i64 %142 to i8*
  store i8* %143, i8** %11, align 8
  br label %193

144:                                              ; preds = %127
  %145 = load i32, i32* %8, align 4
  %146 = and i32 %145, 255
  %147 = load i32, i32* @MAX_GROUP_KEY, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %187

149:                                              ; preds = %144
  %150 = load i8*, i8** @FALSE, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = and i32 %159, 255
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  store i8* %150, i8** %163, align 8
  %164 = load i32, i32* %8, align 4
  %165 = and i32 %164, 2147483647
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = load i32, i32* %10, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = and i32 %173, 2147483647
  %175 = icmp eq i32 %165, %174
  br i1 %175, label %176, label %184

176:                                              ; preds = %149
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %178, align 8
  %180 = load i32, i32* %10, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  store i32 0, i32* %183, align 8
  br label %184

184:                                              ; preds = %176, %149
  %185 = load i64, i64* @TRUE, align 8
  %186 = inttoptr i64 %185 to i8*
  store i8* %186, i8** %11, align 8
  br label %193

187:                                              ; preds = %144
  %188 = load i8*, i8** @FALSE, align 8
  store i8* %188, i8** %11, align 8
  br label %193

189:                                              ; preds = %115, %104
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %10, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %10, align 4
  br label %100

193:                                              ; preds = %187, %184, %132, %100
  %194 = load i64, i64* @TRUE, align 8
  %195 = inttoptr i64 %194 to i8*
  store i8* %195, i8** %11, align 8
  br label %196

196:                                              ; preds = %193, %98
  %197 = load i32, i32* %9, align 4
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %199 = call i32 @s_vCheckKeyTableValid(i32 %197, %struct.TYPE_10__* %198)
  %200 = load i8*, i8** %11, align 8
  ret i8* %200
}

declare dso_local i64 @IS_BROADCAST_ADDRESS(i32) #1

declare dso_local i64 @IS_ETH_ADDRESS_EQUAL(i32, i32) #1

declare dso_local i32 @s_vCheckKeyTableValid(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
