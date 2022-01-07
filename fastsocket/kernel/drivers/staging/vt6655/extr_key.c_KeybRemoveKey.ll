; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_key.c_KeybRemoveKey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_key.c_KeybRemoveKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_8__*, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@PAIRWISE_KEY = common dso_local global i32 0, align 4
@MAX_KEY_TABLE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@MAX_GROUP_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @KeybRemoveKey(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @IS_BROADCAST_ADDRESS(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %98

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @PAIRWISE_KEY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %14
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %34, %19
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @MAX_KEY_TABLE, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load i64, i64* @FALSE, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i64 %25, i64* %33, align 8
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %20

37:                                               ; preds = %20
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @s_vCheckKeyTableValid(%struct.TYPE_10__* %38, i32 %39)
  %41 = load i64, i64* @TRUE, align 8
  store i64 %41, i64* %5, align 8
  br label %198

42:                                               ; preds = %14
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 255
  %45 = load i32, i32* @MAX_GROUP_KEY, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %96

47:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %88, %47
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @MAX_KEY_TABLE, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %91

52:                                               ; preds = %48
  %53 = load i64, i64* @FALSE, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, 255
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  store i64 %53, i64* %66, align 8
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %67, 2147483647
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, 2147483647
  %78 = icmp eq i32 %68, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %52
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  br label %87

87:                                               ; preds = %79, %52
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %48

91:                                               ; preds = %48
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @s_vCheckKeyTableValid(%struct.TYPE_10__* %92, i32 %93)
  %95 = load i64, i64* @TRUE, align 8
  store i64 %95, i64* %5, align 8
  br label %198

96:                                               ; preds = %42
  %97 = load i64, i64* @FALSE, align 8
  store i64 %97, i64* %5, align 8
  br label %198

98:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %193, %98
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* @MAX_KEY_TABLE, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %196

103:                                              ; preds = %99
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @TRUE, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %192

114:                                              ; preds = %103
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i64 @IS_ETH_ADDRESS_EQUAL(i32 %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %192

126:                                              ; preds = %114
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @PAIRWISE_KEY, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %126
  %132 = load i64, i64* @FALSE, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  store i64 %132, i64* %140, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @s_vCheckKeyTableValid(%struct.TYPE_10__* %141, i32 %142)
  %144 = load i64, i64* @TRUE, align 8
  store i64 %144, i64* %5, align 8
  br label %198

145:                                              ; preds = %126
  %146 = load i32, i32* %8, align 4
  %147 = and i32 %146, 255
  %148 = load i32, i32* @MAX_GROUP_KEY, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %190

150:                                              ; preds = %145
  %151 = load i64, i64* @FALSE, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = load i32, i32* %8, align 4
  %161 = and i32 %160, 255
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  store i64 %151, i64* %164, align 8
  %165 = load i32, i32* %8, align 4
  %166 = and i32 %165, 2147483647
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %168, align 8
  %170 = load i32, i32* %10, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = and i32 %174, 2147483647
  %176 = icmp eq i32 %166, %175
  br i1 %176, label %177, label %185

177:                                              ; preds = %150
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %179, align 8
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  store i32 0, i32* %184, align 8
  br label %185

185:                                              ; preds = %177, %150
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %187 = load i32, i32* %9, align 4
  %188 = call i32 @s_vCheckKeyTableValid(%struct.TYPE_10__* %186, i32 %187)
  %189 = load i64, i64* @TRUE, align 8
  store i64 %189, i64* %5, align 8
  br label %198

190:                                              ; preds = %145
  %191 = load i64, i64* @FALSE, align 8
  store i64 %191, i64* %5, align 8
  br label %198

192:                                              ; preds = %114, %103
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %10, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %10, align 4
  br label %99

196:                                              ; preds = %99
  %197 = load i64, i64* @FALSE, align 8
  store i64 %197, i64* %5, align 8
  br label %198

198:                                              ; preds = %196, %190, %185, %131, %96, %91, %37
  %199 = load i64, i64* %5, align 8
  ret i64 %199
}

declare dso_local i64 @IS_BROADCAST_ADDRESS(i32) #1

declare dso_local i32 @s_vCheckKeyTableValid(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @IS_ETH_ADDRESS_EQUAL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
