; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_reachable_next_level.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_except.c_reachable_next_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.eh_region = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32*, %struct.eh_region* }
%struct.TYPE_6__ = type { %struct.eh_region* }
%struct.reachable_info = type { i32, i32*, i32* }

@RNL_MAYBE_CAUGHT = common dso_local global i32 0, align 4
@RNL_NOT_CAUGHT = common dso_local global i32 0, align 4
@RNL_CAUGHT = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32* null, align 8
@cfun = common dso_local global %struct.TYPE_10__* null, align 8
@RNL_BLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eh_region*, i32*, %struct.reachable_info*)* @reachable_next_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reachable_next_level(%struct.eh_region* %0, i32* %1, %struct.reachable_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eh_region*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.reachable_info*, align 8
  %8 = alloca %struct.eh_region*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.eh_region* %0, %struct.eh_region** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.reachable_info* %2, %struct.reachable_info** %7, align 8
  %15 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %16 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %223 [
    i32 132, label %18
    i32 129, label %24
    i32 134, label %140
    i32 133, label %198
    i32 131, label %200
    i32 130, label %221
    i32 128, label %221
  ]

18:                                               ; preds = %3
  %19 = load %struct.reachable_info*, %struct.reachable_info** %7, align 8
  %20 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %21 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %22 = call i32 @add_reachable_handler(%struct.reachable_info* %19, %struct.eh_region* %20, %struct.eh_region* %21)
  %23 = load i32, i32* @RNL_MAYBE_CAUGHT, align 4
  store i32 %23, i32* %4, align 4
  br label %225

24:                                               ; preds = %3
  %25 = load i32, i32* @RNL_NOT_CAUGHT, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %27 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load %struct.eh_region*, %struct.eh_region** %29, align 8
  store %struct.eh_region* %30, %struct.eh_region** %8, align 8
  br label %31

31:                                               ; preds = %132, %24
  %32 = load %struct.eh_region*, %struct.eh_region** %8, align 8
  %33 = icmp ne %struct.eh_region* %32, null
  br i1 %33, label %34, label %138

34:                                               ; preds = %31
  %35 = load %struct.eh_region*, %struct.eh_region** %8, align 8
  %36 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.reachable_info*, %struct.reachable_info** %7, align 8
  %43 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %44 = load %struct.eh_region*, %struct.eh_region** %8, align 8
  %45 = call i32 @add_reachable_handler(%struct.reachable_info* %42, %struct.eh_region* %43, %struct.eh_region* %44)
  %46 = load i32, i32* @RNL_CAUGHT, align 4
  store i32 %46, i32* %4, align 4
  br label %225

47:                                               ; preds = %34
  %48 = load i32*, i32** %6, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %85

50:                                               ; preds = %47
  %51 = load %struct.eh_region*, %struct.eh_region** %8, align 8
  %52 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %10, align 8
  br label %56

56:                                               ; preds = %78, %50
  %57 = load i32*, i32** %10, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %81

59:                                               ; preds = %56
  %60 = load i32*, i32** %10, align 8
  %61 = call i32* @TREE_VALUE(i32* %60)
  store i32* %61, i32** %11, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = icmp eq i32* %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  br i1 true, label %66, label %77

66:                                               ; preds = %65
  %67 = load i32*, i32** %11, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @lang_eh_type_covers(i32* %67, i32* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66, %59
  %72 = load %struct.reachable_info*, %struct.reachable_info** %7, align 8
  %73 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %74 = load %struct.eh_region*, %struct.eh_region** %8, align 8
  %75 = call i32 @add_reachable_handler(%struct.reachable_info* %72, %struct.eh_region* %73, %struct.eh_region* %74)
  %76 = load i32, i32* @RNL_CAUGHT, align 4
  store i32 %76, i32* %4, align 4
  br label %225

77:                                               ; preds = %66, %65
  br label %78

78:                                               ; preds = %77
  %79 = load i32*, i32** %10, align 8
  %80 = call i32* @TREE_CHAIN(i32* %79)
  store i32* %80, i32** %10, align 8
  br label %56

81:                                               ; preds = %56
  br i1 true, label %82, label %84

82:                                               ; preds = %81
  %83 = load i32, i32* @RNL_NOT_CAUGHT, align 4
  store i32 %83, i32* %4, align 4
  br label %225

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %84, %47
  %86 = load %struct.reachable_info*, %struct.reachable_info** %7, align 8
  %87 = icmp ne %struct.reachable_info* %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = load i32, i32* @RNL_MAYBE_CAUGHT, align 4
  store i32 %89, i32* %9, align 4
  br label %131

90:                                               ; preds = %85
  %91 = load %struct.eh_region*, %struct.eh_region** %8, align 8
  %92 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  store i32* %95, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %96

96:                                               ; preds = %118, %90
  %97 = load i32*, i32** %12, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %121

99:                                               ; preds = %96
  %100 = load i32*, i32** %12, align 8
  %101 = call i32* @TREE_VALUE(i32* %100)
  store i32* %101, i32** %14, align 8
  %102 = load %struct.reachable_info*, %struct.reachable_info** %7, align 8
  %103 = getelementptr inbounds %struct.reachable_info, %struct.reachable_info* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = load i32*, i32** %14, align 8
  %106 = call i32 @check_handled(i32* %104, i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %117, label %108

108:                                              ; preds = %99
  %109 = load i32*, i32** %14, align 8
  %110 = load %struct.reachable_info*, %struct.reachable_info** %7, align 8
  %111 = getelementptr inbounds %struct.reachable_info, %struct.reachable_info* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = call i8* @tree_cons(i32* null, i32* %109, i32* %112)
  %114 = bitcast i8* %113 to i32*
  %115 = load %struct.reachable_info*, %struct.reachable_info** %7, align 8
  %116 = getelementptr inbounds %struct.reachable_info, %struct.reachable_info* %115, i32 0, i32 2
  store i32* %114, i32** %116, align 8
  store i32 1, i32* %13, align 4
  br label %117

117:                                              ; preds = %108, %99
  br label %118

118:                                              ; preds = %117
  %119 = load i32*, i32** %12, align 8
  %120 = call i32* @TREE_CHAIN(i32* %119)
  store i32* %120, i32** %12, align 8
  br label %96

121:                                              ; preds = %96
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %121
  %125 = load %struct.reachable_info*, %struct.reachable_info** %7, align 8
  %126 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %127 = load %struct.eh_region*, %struct.eh_region** %8, align 8
  %128 = call i32 @add_reachable_handler(%struct.reachable_info* %125, %struct.eh_region* %126, %struct.eh_region* %127)
  %129 = load i32, i32* @RNL_MAYBE_CAUGHT, align 4
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %124, %121
  br label %131

131:                                              ; preds = %130, %88
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.eh_region*, %struct.eh_region** %8, align 8
  %134 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load %struct.eh_region*, %struct.eh_region** %136, align 8
  store %struct.eh_region* %137, %struct.eh_region** %8, align 8
  br label %31

138:                                              ; preds = %31
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* %4, align 4
  br label %225

140:                                              ; preds = %3
  %141 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %142 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i32*, i32** @NULL_TREE, align 8
  %147 = icmp eq i32* %145, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %140
  %149 = load %struct.reachable_info*, %struct.reachable_info** %7, align 8
  %150 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %151 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %152 = call i32 @add_reachable_handler(%struct.reachable_info* %149, %struct.eh_region* %150, %struct.eh_region* %151)
  %153 = load i32, i32* @RNL_CAUGHT, align 4
  store i32 %153, i32* %4, align 4
  br label %225

154:                                              ; preds = %140
  %155 = load %struct.reachable_info*, %struct.reachable_info** %7, align 8
  %156 = icmp ne %struct.reachable_info* %155, null
  br i1 %156, label %157, label %171

157:                                              ; preds = %154
  %158 = load i32*, i32** @NULL_TREE, align 8
  %159 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %160 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load %struct.reachable_info*, %struct.reachable_info** %7, align 8
  %165 = getelementptr inbounds %struct.reachable_info, %struct.reachable_info* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = call i8* @tree_cons(i32* %158, i32* %163, i32* %166)
  %168 = bitcast i8* %167 to i32*
  %169 = load %struct.reachable_info*, %struct.reachable_info** %7, align 8
  %170 = getelementptr inbounds %struct.reachable_info, %struct.reachable_info* %169, i32 0, i32 1
  store i32* %168, i32** %170, align 8
  br label %171

171:                                              ; preds = %157, %154
  %172 = load i32*, i32** %6, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %192

174:                                              ; preds = %171
  br i1 true, label %175, label %192

175:                                              ; preds = %174
  %176 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %177 = getelementptr inbounds %struct.eh_region, %struct.eh_region* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i32*, i32** %6, align 8
  %182 = call i32 @check_handled(i32* %180, i32* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %175
  %185 = load i32, i32* @RNL_NOT_CAUGHT, align 4
  store i32 %185, i32* %4, align 4
  br label %225

186:                                              ; preds = %175
  %187 = load %struct.reachable_info*, %struct.reachable_info** %7, align 8
  %188 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %189 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %190 = call i32 @add_reachable_handler(%struct.reachable_info* %187, %struct.eh_region* %188, %struct.eh_region* %189)
  %191 = load i32, i32* @RNL_CAUGHT, align 4
  store i32 %191, i32* %4, align 4
  br label %225

192:                                              ; preds = %174, %171
  %193 = load %struct.reachable_info*, %struct.reachable_info** %7, align 8
  %194 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %195 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %196 = call i32 @add_reachable_handler(%struct.reachable_info* %193, %struct.eh_region* %194, %struct.eh_region* %195)
  %197 = load i32, i32* @RNL_MAYBE_CAUGHT, align 4
  store i32 %197, i32* %4, align 4
  br label %225

198:                                              ; preds = %3
  %199 = load i32, i32* @RNL_NOT_CAUGHT, align 4
  store i32 %199, i32* %4, align 4
  br label %225

200:                                              ; preds = %3
  %201 = load %struct.reachable_info*, %struct.reachable_info** %7, align 8
  %202 = icmp ne %struct.reachable_info* %201, null
  br i1 %202, label %203, label %208

203:                                              ; preds = %200
  %204 = load %struct.reachable_info*, %struct.reachable_info** %7, align 8
  %205 = getelementptr inbounds %struct.reachable_info, %struct.reachable_info* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %213, label %208

208:                                              ; preds = %203, %200
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cfun, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %219, label %213

213:                                              ; preds = %208, %203
  %214 = load %struct.reachable_info*, %struct.reachable_info** %7, align 8
  %215 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %216 = load %struct.eh_region*, %struct.eh_region** %5, align 8
  %217 = call i32 @add_reachable_handler(%struct.reachable_info* %214, %struct.eh_region* %215, %struct.eh_region* %216)
  %218 = load i32, i32* @RNL_CAUGHT, align 4
  store i32 %218, i32* %4, align 4
  br label %225

219:                                              ; preds = %208
  %220 = load i32, i32* @RNL_BLOCKED, align 4
  store i32 %220, i32* %4, align 4
  br label %225

221:                                              ; preds = %3, %3
  %222 = call i32 (...) @gcc_unreachable()
  br label %225

223:                                              ; preds = %3
  %224 = call i32 (...) @gcc_unreachable()
  br label %225

225:                                              ; preds = %18, %41, %71, %82, %138, %148, %184, %186, %192, %198, %213, %219, %223, %221
  %226 = load i32, i32* %4, align 4
  ret i32 %226
}

declare dso_local i32 @add_reachable_handler(%struct.reachable_info*, %struct.eh_region*, %struct.eh_region*) #1

declare dso_local i32* @TREE_VALUE(i32*) #1

declare dso_local i32 @lang_eh_type_covers(i32*, i32*) #1

declare dso_local i32* @TREE_CHAIN(i32*) #1

declare dso_local i32 @check_handled(i32*, i32*) #1

declare dso_local i8* @tree_cons(i32*, i32*, i32*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
